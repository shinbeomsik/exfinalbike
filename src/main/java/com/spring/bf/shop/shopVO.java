package com.spring.bf.shop;

public class shopVO {
	private  int shop_no;
	private  String shop_name;
	private  String shop_content;
	private  String shop_img;
	private  String shop_location;
	private  String shop_businessnumber;
	private  String shop_memberid;
	public int getShop_no() {
		return shop_no;
	}
	public void setShop_no(int shop_no) {
		this.shop_no = shop_no;
	}
	public String getShop_name() {
		return shop_name;
	}
	public void setShop_name(String shop_name) {
		this.shop_name = shop_name;
	}
	public String getShop_content() {
		return shop_content;
	}
	public void setShop_content(String shop_content) {
		this.shop_content = shop_content;
	}
	public String getShop_img() {
		return shop_img;
	}
	public void setShop_img(String shop_img) {
		this.shop_img = shop_img;
	}
	public String getShop_location() {
		return shop_location;
	}
	public void setShop_location(String shop_location) {
		this.shop_location = shop_location;
	}
	public String getShop_businessnumber() {
		return shop_businessnumber;
	}
	public void setShop_businessnumber(String shop_businessnumber) {
		this.shop_businessnumber = shop_businessnumber;
	}
	public String getShop_memberid() {
		return shop_memberid;
	}
	public void setShop_memberid(String shop_memberid) {
		this.shop_memberid = shop_memberid;
	}
	@Override
	public String toString() {
		return "shopVO [shop_no=" + shop_no + ", shop_name=" + shop_name + ", shop_content=" + shop_content
				+ ", shop_img=" + shop_img + ", shop_location=" + shop_location + ", shop_businessnumber="
				+ shop_businessnumber + ", shop_memberid=" + shop_memberid + "]";
	}
	
	
	
	
}
