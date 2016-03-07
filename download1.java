package gdelt;

import java.io.BufferedInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Scanner;

public class download1 {
	public static void main(String[] args) throws ParseException{
		
		try {
			List<Date> dates = new ArrayList<Date>();
			Scanner scn = new Scanner(System.in);
			System.out.println("type date like d.m.y");
			String str_date = scn.next();
			System.out.println("type date like d.m.y");
			String end_date = scn.next();
			DateFormat formatter = new SimpleDateFormat("yyyyMMdd");
			Date startDate = formatter.parse(str_date);
			Date endDate = formatter.parse(end_date);
			long interval = 24*1000*60*60;
			long endTime = endDate.getTime();
			long curTime = startDate.getTime();
			while (curTime <=endTime){
				dates.add(new Date(curTime));
				curTime += interval;
			}
			for(int i=0;i<dates.size();i++){
				Date lDate=dates.get(i);
				String ds = formatter.format(lDate);
				System.out.println(ds);
				String url = "http://data.gdeltproject.org/events/" +ds +".export.CSV.zip";
				
				downloadFromUrl(url,"C:/Users/mouli_000/Documents/" +ds +".export.CSV.zip");
				
			}
		} catch (IOException e){
			e.printStackTrace();
		}
	}
	private static void downloadFromUrl(String urlStr, String file) throws IOException{
		URL url = new URL(urlStr);
		System.out.println(url);
		System.out.println(file);
		URLConnection urlConn = url.openConnection();
		urlConn.setConnectTimeout(5000000);
		BufferedInputStream bis = new BufferedInputStream(url.openStream());
		FileOutputStream fis = new FileOutputStream(file);
		byte[] buffer = new byte[1024];
		int count=0;
		while((count = bis.read(buffer,0,1024)) != -1)
		{
			fis.write(buffer,0,count);
		}
		fis.close();
		bis.close();
		}
	}

