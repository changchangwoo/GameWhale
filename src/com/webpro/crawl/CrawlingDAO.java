package com.webpro.crawl;

import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class CrawlingDAO {
	static void Crawling(ArrayList<gameDTO> SL) {
		String url = "https://directg.net/game/game.html?searchValue=&search_keyword=&sort=&search_category=&search_platform=1&search_publisher=&search_language=&search_goods_kind=";
		Document doc = null;
		Elements tmp;
		String title_temp = null;
		String maker_temp = null;
		String rate_temp = null;
		String singer_temp = null;
		String album_temp = null;
		String img_temp = null;
		
		try {
			doc = Jsoup.connect(url).get();
		} catch (Exception e) {
			e.printStackTrace();
		}
		int[] arr1 = {1, 3, 7};
		Elements element = null;

		for (int a = 0; a < 3; a++) {
			element = doc.select("#t3-content > div.category-view > div > div.browse-view > div > div:nth-child("+arr1[a]+")");
			for (int i = 0; i < 3; i++) {
				tmp = element.select("div:nth-child(1)").select("h2");
				title_temp = tmp.get(i).text();
				System.out.println("타이틀 : [ " + title_temp + " ] create Complete");
				tmp = element.select("div:nth-child(1) > div.vm-product-descr-container-1 > div.vm3pr-customfields-product").select("span:nth-child(1)");
				maker_temp = tmp.get(i).text();
				System.out.println("제작사 : [ " + maker_temp + "]  create Complete");
				tmp = element.select("div:nth-child(1) > div.vm-product-descr-container-1").select("span:nth-child(1):contains(%)");
				rate_temp = tmp.get(i).text();
				System.out.println("할인율 : [ " + rate_temp + " ] create Complete");
				tmp = element.select("div:nth-child(1) > div").select("span.PricebasePrice");
				singer_temp = tmp.get(i).text();
				System.out.println("할인 전 가격 : [ " + singer_temp + " ] create Complete");
				tmp = element.select("div:nth-child(1) > div").select("span.PricesalesPrice");
				album_temp = tmp.get(i).text();
				System.out.println("할인 후 가격 : [ " + album_temp + " ] create Complete");
				tmp = element.select("div:nth-child(1) > div.vm-product-media-container > a").select("img");
				img_temp = tmp.get(i).attr("src");
				System.out.println("이미지 링크 : [ " + img_temp + " ] create Complete ---------------------------------------------------");
			
				SL.add(new gameDTO(title_temp, maker_temp, rate_temp, singer_temp, album_temp, img_temp));
			}
		}
		
		url = "https://directg.net/game/game.html?page=2&search_platform=1";
		try {
			doc = Jsoup.connect(url).get();
		} catch (Exception e) {
			e.printStackTrace();
		}
		int[] arr2 = {3, 5, 7};
		element = null;

		for (int a = 0; a < 3; a++) {
			element = doc.select("#t3-content > div.category-view > div > div.browse-view > div > div:nth-child("+arr2[a]+")");
			for (int i = 0; i < 3; i++) {
				tmp = element.select("div:nth-child(1)").select("h2");
				title_temp = tmp.get(i).text();
				System.out.println("타이틀 : [ " + title_temp + " ] create Complete");
				tmp = element.select("div:nth-child(1) > div.vm-product-descr-container-1 > div.vm3pr-customfields-product").select("span:nth-child(1)");
				maker_temp = tmp.get(i).text();
				System.out.println("제작사 : [ " + maker_temp + "]  create Complete");
				tmp = element.select("div:nth-child(1) > div.vm-product-descr-container-1").select("span:nth-child(1):contains(%)");
				rate_temp = tmp.get(i).text();
				System.out.println("할인율 : [ " + rate_temp + " ] create Complete");
				tmp = element.select("div:nth-child(1) > div").select("span.PricebasePrice");
				singer_temp = tmp.get(i).text();
				System.out.println("할인 전 가격 : [ " + singer_temp + " ] create Complete");
				tmp = element.select("div:nth-child(1) > div").select("span.PricesalesPrice");
				album_temp = tmp.get(i).text();
				System.out.println("할인 후 가격 : [ " + album_temp + " ] create Complete");
				tmp = element.select("div:nth-child(1) > div.vm-product-media-container > a").select("img");
				img_temp = tmp.get(i).attr("src");
				System.out.println("이미지 링크 : [ " + img_temp + " ] create Complete ---------------------------------------------------");
			
				SL.add(new gameDTO(title_temp, maker_temp, rate_temp, singer_temp, album_temp, img_temp));
			}
		}
		
		url = "https://directg.net/game/game.html?page=3&search_platform=1";
		try {
			doc = Jsoup.connect(url).get();
		} catch (Exception e) {
			e.printStackTrace();
		}
		int[] arr3 = {1, 5, 11};
		element = null;

		for (int a = 0; a < 3; a++) {
			element = doc.select("#t3-content > div.category-view > div > div.browse-view > div > div:nth-child("+arr3[a]+")");
			for (int i = 0; i < 3; i++) {
				tmp = element.select("div:nth-child(1)").select("h2");
				title_temp = tmp.get(i).text();
				System.out.println("타이틀 : [ " + title_temp + " ] create Complete");
				tmp = element.select("div:nth-child(1) > div.vm-product-descr-container-1 > div.vm3pr-customfields-product").select("span:nth-child(1)");
				maker_temp = tmp.get(i).text();
				System.out.println("제작사 : [ " + maker_temp + "]  create Complete");
				tmp = element.select("div:nth-child(1) > div.vm-product-descr-container-1").select("span:nth-child(1):contains(%)");
				rate_temp = tmp.get(i).text();
				System.out.println("할인율 : [ " + rate_temp + " ] create Complete");
				tmp = element.select("div:nth-child(1) > div").select("span.PricebasePrice");
				singer_temp = tmp.get(i).text();
				System.out.println("할인 전 가격 : [ " + singer_temp + " ] create Complete");
				tmp = element.select("div:nth-child(1) > div").select("span.PricesalesPrice");
				album_temp = tmp.get(i).text();
				System.out.println("할인 후 가격 : [ " + album_temp + " ] create Complete");
				tmp = element.select("div:nth-child(1) > div.vm-product-media-container > a").select("img");
				img_temp = tmp.get(i).attr("src");
				System.out.println("이미지 링크 : [ " + img_temp + " ] create Complete ---------------------------------------------------");
			
				SL.add(new gameDTO(title_temp, maker_temp, rate_temp, singer_temp, album_temp, img_temp));
			}
		}
		System.out.println("for() All Complete");
	}
}
