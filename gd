package com.jpmis.gdelt;

import java.io.BufferedInputStream;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.ParseException;
import java.util.HashMap;
import java.util.Map;
import java.util.Properties;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;

import org.apache.log4j.*;
import org.apache.commons.io.*;

public class DownloadData {

	private static final Logger log = Logger.getLogger(DownloadData.class);		

	public int run(String freq, String startRange, String endRange, String dLhCuZ, String urlPath, String compFmt, String confProp) throws ParseException, IOException, NoSuchAlgorithmException {

		Properties prop = new Properties();
		InputStream in = new FileInputStream(confProp);			
		prop.load(in);
		String[] dcu = dLhCuZ.split("-");		
		String raw = prop.getProperty("raw").trim();		
		String md5url = prop.getProperty("md5url").trim();
		String logpath = prop.getProperty("logpath").trim();
		String ypath = prop.getProperty("ypath").trim();
		String mpath = prop.getProperty("mpath").trim();
		String dpath = prop.getProperty("dpath").trim();
		String lpath = prop.getProperty("lpath").trim();		
		String md5sums = prop.getProperty("md5sums").trim();					

		PatternLayout layout = new PatternLayout();
		String conversionPattern = "%-7p %d [%t] %c %x - %m%n";
		layout.setConversionPattern(conversionPattern);        
		FileAppender fa = new FileAppender();
		log.addAppender(fa);
		String logPath = logpath +freq +"/" +endRange +"/jlog/" +endRange +".txt";		
		fa.setFile(logPath);
		fa.setLayout(new PatternLayout("%-5p [%t]: %m%n"));
		fa.setThreshold(Level.INFO);
		fa.setAppend(true);
		fa.setLayout(layout);
		fa.activateOptions();

		log.info("Program started...");		
		log.info("Below parameters have been entered...");
		log.info("Download Y/N ==> " +dLhCuZ);
		log.info("Freq ==> " +freq);
		log.info("Start Range ==> " +startRange);
		log.info("End Range ==> " +endRange);
		log.info("compFmt ==> " +compFmt);
		log.info("Conf Property ==> " +confProp);

		String fileName = FilenameUtils.getName(urlPath);		//==>CAMEO.COUNTRY.TXT
		String baseName = FilenameUtils.getBaseName(urlPath); 	//==>CAMEO.COUNTRY		

		try {

			//Freq	:	Yearly/Monthly/Daily/Code
			switch (freq) {

			case "code":																	

				final String dlPath = lpath +fileName;						
				downloadFromUrl(urlPath , dlPath);				
				break;


			case "yearly":		

				//Get list of files YEAR wise between start and end date given				
				final String ydownloadedFile = ypath +endRange +raw +fileName;
				if ("Y".equalsIgnoreCase(dcu[0])) {												
					//Download GDELT file
					downloadFromUrl(urlPath, ydownloadedFile);												
				} 

				if ("Y".equalsIgnoreCase(dcu[1])) {
					//Download MD5SUM file
					downloadFromUrl(md5url , ypath +endRange +raw +md5sums);
					//MD5 check

					hashCompare(ypath +endRange +raw +md5sums, ydownloadedFile);
				}

				if ("Y".equalsIgnoreCase(dcu[2])) {
					//Unzip
					String zipFilePath = ypath +endRange +raw +fileName;
					String destDir = ypath +endRange +raw +endRange ;						
					unzip(zipFilePath, destDir);
				}								
				break;


			case "monthly":

				//Get list of files MONTH wise between start and end date given
				final String mdownloadedFile = mpath +endRange +raw +fileName;

				if ("Y".equalsIgnoreCase(dcu[0])) {
					//Download GDELT file					
					downloadFromUrl(urlPath , mdownloadedFile);						
				}
				if ("Y".equalsIgnoreCase(dcu[1])) {
					//Download MD5SUM file
					downloadFromUrl(md5url , mpath +endRange +raw +md5sums);
					//MD5 check						
					hashCompare(mpath +endRange +raw +md5sums, mdownloadedFile);
				}
				if ("Y".equalsIgnoreCase(dcu[2])) {
					//Unzip
					String zipFilePath = mpath +endRange +raw +fileName;
					String destDir = mpath +endRange +raw +endRange;					
					unzip(zipFilePath, destDir);
				}							
				break;


			case "daily":			

				final String ddownloadedFile = dpath +endRange +raw +fileName;

				if ("Y".equalsIgnoreCase(dcu[0])) {
					//Download GDELT file
					downloadFromUrl(urlPath, ddownloadedFile);						
				}

				if ("Y".equalsIgnoreCase(dcu[1])) {
					//Download MD5SUM file
					downloadFromUrl(md5url , dpath +endRange +raw +md5sums);
					//MD5 check						
					hashCompare(dpath +endRange +raw +md5sums, ddownloadedFile);
				}

				if ("Y".equalsIgnoreCase(dcu[2])) {				
					//Unzip
					String zipFilePath = dpath +endRange +raw +fileName;
					String destDir = dpath +endRange +raw +endRange;						
					unzip(zipFilePath, destDir);
				}				
				break;
			}
		}
		catch (IOException e) {
			e.printStackTrace();
		}

		log.info("Program Completed Successfully...");

		return 0;
	}

	private static void downloadFromUrl(String urlStr, String file) throws IOException{

		File tgtFile = new File(file);

		//Set Proxy details
		System.getProperties().put("proxySet","true");
		System.getProperties().put("http.proxyHost","proxy.jpmchase.net");
		System.getProperties().put("http.proxyPort","8443");

		URL url = new URL(urlStr);
		HttpURLConnection httpConn = (HttpURLConnection)url.openConnection();
		int rc = httpConn.getResponseCode();

		//Check if Source file present or not
		if (rc != HttpURLConnection.HTTP_OK) {
			log.info("GDELT File not present - please check " +rc +" => " +urlStr);
			System.exit(4);
		}

		log.info("*** Downloading starts ==>" +urlStr);		

		// create Output directory if it doesn't exist
		if(!tgtFile.exists()){
			tgtFile.getParentFile().mkdirs();		
		}

		BufferedInputStream bis = new BufferedInputStream(url.openStream());
		FileOutputStream fis = new FileOutputStream(file);
		byte[] buffer = new byte[1024];
		int count=0;

		while((count = bis.read(buffer,0,1024)) != -1)
		{
			fis.write(buffer, 0, count);
		}

		fis.close();
		bis.close();
		log.info("*** Downloading " +file +" complete");
	}

	private static void unzip(String zipFilePath, String destDir) {
		File dir = new File(destDir);

		// create Output directory if it doesn't exist
		if(!dir.exists()) dir.mkdirs();

		//buffer for read and write data to file
		byte[] buffer = new byte[1024];
		try {

			FileInputStream fis = new FileInputStream(zipFilePath);
			ZipInputStream zis = new ZipInputStream(fis);
			ZipEntry ze = zis.getNextEntry();

			while(ze != null){
				String fileName = ze.getName();				
				File newFile = new File(destDir + File.separator + fileName);
				
				log.info("*** Unzipping to "+newFile.getAbsolutePath());

				//create directories for sub directories in zip
				new File(newFile.getParent()).mkdirs();
				FileOutputStream fos = new FileOutputStream(newFile);
				int len;						
				while ((len = zis.read(buffer)) > 0) {
					fos.write(buffer, 0, len);
				}
				fos.close();

				//close this ZipEntry
				zis.closeEntry();
				ze = zis.getNextEntry();
			}
			//close last ZipEntry
			zis.closeEntry();
			zis.close();
			fis.close();

			log.info("*** Unzip Complete");

		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	private static void hashCompare (String sFilePath, String downloadedFile) throws NoSuchAlgorithmException {

		MessageDigest digest = MessageDigest.getInstance("MD5");

		//Create checksum for the Downloaded file
		File f = new File(downloadedFile);

		String actual;

		try {
			actual = getFileChecksum(digest, f);
		} catch (IOException e){
			e.printStackTrace();
			throw new RuntimeException("Unable to process file for MD5 ==>", e);
		}

		//print Downloaded file Checksum
		log.info("Downloaded File, Generated checksum ==> " +actual);

		//to get the Filename and pass to get expected checksum
		Path p = Paths.get(downloadedFile);
		String file1 = p.getFileName().toString();

		//expected checksum
		String expected = null;
		try{
			expected = expectedChecksum(sFilePath, file1);
		} catch (IOException e){
			e.printStackTrace();
		}

		//compare checksum
		try{
			boolean isValid = compareFileChecksum(expected, actual);
			log.info("*** Is MD5 validation fine?" +isValid);
			if (!isValid){
				throw new IOException();
			}
		} catch (IOException e) {
			log.info("MD5 check failed");
			e.printStackTrace();
			System.exit(1);
		}
	}

	public static String getFileChecksum(MessageDigest digest, File file) throws IOException{

		//Get file input stream for reading file content
		FileInputStream fis = new FileInputStream(file);

		//Create byte array to read data in chunks
		byte[] byteArray = new byte[1024];
		int bytesCount = 0;

		//Read file data and update in message digest
		while((bytesCount = fis.read(byteArray)) != -1){
			digest.update(byteArray, 0, bytesCount);
		};

		//close the stream
		fis.close();

		//Get the hash's bytes
		byte[] bytes = digest.digest();

		//This bytes[] has bytes in decimal format - Convert it to hexadecimal format
		StringBuilder sb = new StringBuilder();
		for (int i=0; i<bytes.length; i++){
			sb.append(Integer.toString((bytes[i]& 0xff) + 0x100,16).substring(1));
		}

		//return complete hash
		return sb.toString();
	}

	private static boolean compareFileChecksum(String expected, String actual){
		if (expected!=null && expected.equals(actual)){
			return true;
		}
		else{
			return false;
		}
	}

	public static String expectedChecksum(String publishedFile, String sFileName) throws IOException {
		FileReader fr = new FileReader(publishedFile);
		BufferedReader br = new BufferedReader(fr);
		String line ="";		
		Map<String,String> hMap = new HashMap<String,String>();

		while ((line=br.readLine())!= null){
			String[] strArray = line.split("\\s+");
			hMap.put(strArray[0], strArray[1]);
		}

		String sCheckSum = (String)getKeyFromValue(hMap,sFileName);
		log.info("MD5SUM from URL ==>" +sCheckSum);
		br.close();
		fr.close();
		return sCheckSum;		
	}  

	public static Object getKeyFromValue(Map hm, Object value) {
		for (Object o:hm.keySet()){
			if (hm.get(o).equals(value)){
				return o;
			}
		}
		return null;
	}		
}
