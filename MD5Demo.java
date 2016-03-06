package gdelt;

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
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class MD5Demo {
	static String sFilePath = "C://Users//mouli_000//Documents//md5sums.txt";
	static String downloadedFile = "C:/Users/mouli_000/Documents/20160304.export.CSV.zip";
	public static void main(String[] args) throws NoSuchAlgorithmException, FileNotFoundException {
		//Use MD5 algorithm
		MessageDigest digest = MessageDigest.getInstance("MD5");

		//Create checksum for this file
		File f = new File(downloadedFile);

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
			expected = expectedChecksum(sFilePath,"20160304.export.CSV.zip");
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
	private static String expectedChecksum(String publishedFile, String sFileName) throws IOException{
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

		String sCheckSum = (String) getKeyFromValue(hMap,sFileName);
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