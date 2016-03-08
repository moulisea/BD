package com.venki.dataset;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
//import org.apache.commons.codec.binary.Hex;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Scanner;

/**
 * @author Home
 *
 */
/**
 * @author Home
 *
 */
public class MD5Demo {
	static String sFilePath = "F://DATA//md5sums.txt";
	static String sPath = "C:\\Users\\Home\\Downloads\\";

	public static void main(String[] args) throws NoSuchAlgorithmException, FileNotFoundException {

		Map<String, String> fileMap = null;
		try {
			fileMap = fileMap(sFilePath);
		} catch (IOException e2) {
			// TODO Auto-generated catch block
			e2.printStackTrace();
		}

		/*//get the filename to download....today's download only		
		try {
			String sFileName = getFileName();
			downloadFile(sFileName+".export.CSV.zip");
		} catch (IOException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}*/

		//file download based on user input
		Scanner scn = new Scanner(System.in);
		System.out.println("Type the start date like this d.m.y");
		String str_date = scn.next();
		System.out.println("Type the end date like this d.m.y");
		String end_date = scn.next();
		//SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
		//String dateStr = dateFormat.format(str_date);
		
		String sFileName = "";		
		sFileName = str_date+".export.CSV.zip";		
		sFileName = str_date+".zip";		
		System.out.println("sFileName  --->"+sFileName);

		/*// One-time download of all files from the published list
		if(!fileMap.isEmpty() && fileMap.size()!=0){
			Iterator<Entry<String, String>> it = fileMap.entrySet().iterator();
			while (it.hasNext()) {
				Map.Entry pair = (Map.Entry)it.next();
				try {
					downloadFile((String) pair.getValue());
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}*/


	}

	private static String getFileName() throws IOException
	{
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
		String dateStr = dateFormat.format(cal.getTime());
		return dateStr;
	}

	private static Map<String, String> fileMap(String publishedFile) throws IOException
	{
		FileReader  fr = new FileReader(publishedFile);
		BufferedReader br = new BufferedReader(fr);
		String line = "";
		Map<String, String> hMap = new HashMap<String, String>();

		while((line = br.readLine()) != null){
			String[] strArray = line.split("\\s+");
			//System.out.println(strArray[0]);
			//System.out.println(strArray[1]);
			hMap.put(strArray[0], strArray[1]);
		}
		return hMap;	
	}
	private static void downloadFile(String sFileName) throws IOException, NoSuchAlgorithmException
	{
		String downloadPath = sPath+sFileName;
		//put download code here
		System.out.println("sFileName ----- >"+sFileName);

		//Create checksum for this file
		File f = new File(downloadPath);

		//Use MD5 algorithm
		MessageDigest digest = MessageDigest.getInstance("MD5");

		//get checksum
		String actual;
		try {
			actual = getFileChecksum(digest, f);
		} catch (IOException e) {
			e.printStackTrace();
			throw new RuntimeException("Unable to process file for MD5", e);
		}

		//print checksum
		System.out.println("actual Checksum ---------> " + actual);

		//expected checksum
		String expected = null;
		try {
			expected = expectedChecksum(fileMap(sFilePath),sFileName);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		//compare checksum
		boolean isValid = compareFileChecksum(expected,actual);
		System.out.println("Is the data integrity fine ?"+isValid);

	}

	private static String getFileChecksum(MessageDigest digest, File file) throws IOException
	{
		//Get file input stream for reading the file content
		FileInputStream fis = new FileInputStream(file);

		//Create byte array to read data in chunks
		byte[] byteArray = new byte[1024];
		int bytesCount = 0; 

		//Read file data and update in message digest
		while ((bytesCount = fis.read(byteArray)) != -1) {
			digest.update(byteArray, 0, bytesCount);
		};

		//close the stream; We don't need it now.
		fis.close();

		//Get the hash's bytes
		byte[] bytes = digest.digest();

		//This bytes[] has bytes in decimal format;
		//Convert it to hexadecimal format
		StringBuilder sb = new StringBuilder();
		for(int i=0; i< bytes.length ;i++)
		{
			sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
		}

		//return complete hash
		return sb.toString();
	}

	private static boolean compareFileChecksum(String expected, String actual)
	{
		if(expected!=null && expected.equals(actual)){
			return true;
		}else{
			return false;
		}

	}
	/**** jhfkjsdhfkjs *****/
	private static String expectedChecksum(Map<String,String> fileMap, String sFileName) throws IOException{

		String sCheckSum = (String) getKeyFromValue(fileMap,sFileName);

		System.out.println("sFileName -------------> "+sFileName);
		System.out.println("expected -------------> "+sCheckSum);

		return sCheckSum;

	}

	// hm is the map you are trying to get value from it
	public static Object getKeyFromValue(Map hm, Object value) {
		for (Object o : hm.keySet()) {
			if (hm.get(o).equals(value)) {
				return o;
			}
		}
		return null;
	}
}


