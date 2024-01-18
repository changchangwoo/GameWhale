package com.webpro.crawl;

import java.util.ArrayList;

public class MainCrawl {
	public static void main(String[] args) {
		ArrayList<gameDTO> SL = new ArrayList<gameDTO>();
		System.out.println("SL create Complete");
		
		CrawlingDAO.Crawling(SL);
		DbDAO.UploadToDB(SL);
	}
}
