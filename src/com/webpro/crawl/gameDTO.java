package com.webpro.crawl;

public class gameDTO {
	String title;
	String maker;
	String rate;
	String price;
	String discount;
	String img;
	
	public gameDTO() {		
	}
	
	public gameDTO(String title, String maker, String rate, String price, String discount, String img) {
		this.title = title;
		this.maker = maker;
		this.rate = rate;
		this.price = price;
		this.discount = discount;
		this.img = img;
	}
	

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMaker() {
		return maker;
	}

	public void setMaker(String maker) {
		this.maker = maker;
	}
	
	public String getRate() {
		return rate;
	}

	public void setRate(String rate) {
		this.rate = rate;
	}
	
	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

	public String getDiscount() {
		return discount;
	}

	public void setDiscount(String discount) {
		this.discount = discount;
	}

	public String getImg() {
		return img;
	}

	public void setImg(String img) {
		this.img = img;
	}
}
