package com.jpmis.cascade

import java.io.FileInputStream
import java.io.FileNotFoundException
import java.io.IOException
import java.net.URI
import java.util.Properties

import scala.util.Properties
import scala.util.Properties
import scala.util.Properties

import org.apache.hadoop.conf.Configuration
import org.apache.hadoop.fs._
import org.apache.spark.SparkConf
import org.apache.spark.SparkContext
import org.apache.spark.sql.DataFrame
import org.apache.spark.sql.DataFrame
import org.apache.spark.sql.DataFrame
import org.apache.spark.sql.DataFrame
import org.apache.spark.sql.DataFrame
import org.apache.spark.sql.DataFrameReader
import org.apache.spark.sql.SQLContext
import org.apache.spark.sql.functions.array
import org.apache.spark.sql.functions.col
import org.apache.spark.sql.functions.explode
import org.apache.spark.sql.functions.lit
import org.apache.spark.sql.functions.when
import org.jasypt.encryption.pbe.StandardPBEStringEncryptor
import com.typesafe.config.ConfigFactory


object exportCascadeData extends App {

  val propertiesUrl = "config/config.properties"
  var properties: Properties = null
  var tableName = ""
  var periodId = ""
  var outputType = "json"
  var sourceCluster = ""
  
  /*
   * Constants
   */
  val DRIVER = "driver"
  val URL = "url"
  val JDBC = "jdbc"
  val USER = "user"
  val PASSWORD = "password"
  val DBTABLE = "dbtable"
  val ALGORITHM = "PBEWithMD5AndTripleDES"
  

  if (args.length < 2) {
    println("Please provide 2 parameters <inputfile> <outputfile>")
    System.exit(1)
  }

  if (args.length >= 2) {
    periodId = args(0)
    tableName = args(1);
    if (args.length > 2) {
      outputType = args(2)
      sourceCluster = args(3)
    }
  }

  /*------------------------------------------------------------------------
   * Reading the properties file
   --------------------------------------------------------------------------*/
    try {
      if (propertiesUrl != null) {
          properties = new Properties()
          properties.load(new FileInputStream(propertiesUrl))
      }
    
   } catch {
        case e: Throwable => e.printStackTrace() // TODO: handle error
        case e: FileNotFoundException => println("File is not exists")
        case e: IOException => println("Got an IOException!")
        System.exit(1);
    }
  

  /*------------------------------------------------------------------------
   * Initializing Spark Context
   --------------------------------------------------------------------------*/
  val conf = new SparkConf().setAppName("Cascade").setMaster("local[2]")
  conf.set("spark.hadoop.mapred.output.compress", "true")
  conf.set("spark.hadoop.mapred.output.compression.codec", "true")
  conf.set("spark.hadoop.mapred.output.compression.codec", "org.apache.hadoop.io.compress.GzipCodec")
  conf.set("spark.hadoop.mapred.output.compression.type", "BLOCK")
  val sparkContext = new SparkContext(conf)
  val sqlContext = new SQLContext(sparkContext)


  /*------------------------------------------------------------------------
   * Read connection properties
   --------------------------------------------------------------------------*/
  val driver = properties.getProperty("driver")
  val url = properties.getProperty("url")
  val userName = properties.getProperty("username")
  val password = properties.getProperty("password")

   /*------------------------------------------------------------------------
   * Read sql properties
   --------------------------------------------------------------------------*/
  val srcpath = sourceCluster
  val cascadesql = properties.getProperty("cascadesql")
  val totalrecordsql = properties.getProperty("totalrecordsql")
  val datesql = properties.getProperty("datesql")

   /*------------------------------------------------------------------------
   * This is for Decrypting the Password
   --------------------------------------------------------------------------*/
  def decryptPwd(): String = {
    val encryptor = new StandardPBEStringEncryptor()
    encryptor.setPassword("jasypt")
    encryptor.setAlgorithm(ALGORITHM)
    encryptor.decrypt(password)
  }
  
   /*------------------------------------------------------------------------
   * Generate final JSON for Digital
   --------------------------------------------------------------------------*/
  try {
      generateJsonOutput()
  } catch {
    case t: Throwable => t.printStackTrace() // TODO: handle error
  }

   /*------------------------------------------------------------------------
   *  This method is used for getting the Timestamp from watermark table
   *--------------------------------------------------------------------------*/
  def dateDF(): DataFrame = {
    sqlContext.read.format(JDBC).option(DRIVER, driver).option(URL, url).option(USER, userName).option(PASSWORD, decryptPwd()).option(DBTABLE, datesql).load() 
  }

   /*------------------------------------------------------------------------
   * This is used for getting the Cascade Data from GP
   --------------------------------------------------------------------------*/
  def cascadeDataDF(): DataFrame = {
    sqlContext.read.format(JDBC).option(DRIVER, driver).option(URL, url).option(USER, userName).option(PASSWORD, decryptPwd()).option(DBTABLE, cascadesql).load()
  }

   /*------------------------------------------------------------------------
   * This is used for fetching the total record count
   --------------------------------------------------------------------------*/
  def countDF(): DataFrame = {
    sqlContext.read.format(JDBC).option(DRIVER, driver).option(URL, url).option(USER, userName).option(PASSWORD, decryptPwd()).option(DBTABLE, totalrecordsql).load()
  }

   /*------------------------------------------------------------------------
   * Generate final JSON for Digital
   --------------------------------------------------------------------------*/
  def generateJsonOutput(): Unit = {

    val columnMap = Map("post_mrch_name" -> "null",
      "post_mrch_city" -> "null",
      "post_mrch_state" -> "null",
      "post_mrch_zip" -> "null",
      "post_mrch_mcc" -> "null",
      "post_acqr_id" -> "null",
      "mt_merchant_name" -> "null",
      "mt_merchant_addr" -> "null",
      "mt_merchant_city" -> "null",
      "mt_merchant_zip" -> "null",
      "mt_merchant_phone" -> "null",
      "mt_merchant_parent_name" -> "null",
      "mt_merchant_sic_desc" -> "null",
      "mt_merchant_latt" -> "null",
      "mt_merchant_long" -> "null",
      "mt_merchant_sic_code" -> "null",
      "info_locnum" -> "null",
      "mt_match_score" -> 0.0,
      "digital_top_merchant_name" -> "null",
      "manual_tag_ind" -> 0 ,
      "hq_ind" -> 0,
      "process" -> "null")

    cascadeDataDF().na.fill(columnMap).show()
    cascadeDataDF().printSchema()
    printstr("HDFS Output:" + srcpath)

    delHDFSFolder(srcpath)
    val rdd1 = dateDF().toJSON.toJavaRDD()
    val rdd2 = cascadeDataDF().na.fill(columnMap).toJSON.toJavaRDD()
    val rdd3 = countDF().toJSON.toJavaRDD()

    val rddMerge = rdd1.++(rdd2).++(rdd3)

    rddMerge.repartition(1).saveAsTextFile(srcpath)

  }

  /**
   * 
   */
  def delHDFSFolder(src: String): Unit = {
    val fs = org.apache.hadoop.fs.FileSystem.get(new org.apache.hadoop.conf.Configuration)
    if (fs.exists(new org.apache.hadoop.fs.Path(src))) {
      fs.delete(new org.apache.hadoop.fs.Path(src))
      printstr(src + " folder deleted from HDFS")
    }
  }

  def copyonHDFS(src: String, dst: String): Unit = {
    val config = new Configuration(true)
    val fsSrc = FileSystem.get(new URI(src), config)
    val fsDst = FileSystem.get(new URI(dst), config)
    FileUtil.copy(fsSrc, new Path(src), fsDst, new Path(dst), false, config)
    printstr("local cluster copy Completed")
  }

  def printstr(str: String): Unit = {
    println("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
    println(str)
    println("=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-==-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=-=")
  }

   /*------------------------------------------------------------------------
   * This is for Encrypting the Password
   --------------------------------------------------------------------------*/
    def encryptPwd(): String = {
      val encryptor = new StandardPBEStringEncryptor()
      encryptor.setPassword("jasypt")
      encryptor.setAlgorithm("PBEWithMD5AndTripleDES")
      encryptor.encrypt(password)
    }
}
