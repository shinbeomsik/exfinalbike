package com.spring.bf.bike;

import java.sql.Timestamp;

import org.springframework.format.annotation.DateTimeFormat;

public class BikeReplyVO {
	
	private int bikereply_no;
	private int bike_no;
	private String writer;
	private String bikereply_content;
	private String bikereply_rating;
	
	
	private Timestamp date;

	public int getBikereply_no() {
		return bikereply_no;
	}

	public void setBikereply_no(int bikereply_no) {
		this.bikereply_no = bikereply_no;
	}

	public int getBike_no() {
		return bike_no;
	}

	public void setBike_no(int bike_no) {
		this.bike_no = bike_no;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public String getBikereply_content() {
		return bikereply_content;
	}

	public void setBikereply_content(String bikereply_content) {
		this.bikereply_content = bikereply_content;
	}

	public String getBikereply_rating() {
		return bikereply_rating;
	}

	public void setBikereply_rating(String bikereply_rating) {
		this.bikereply_rating = bikereply_rating;
	}

	public Timestamp getDate() {
		return date;
	}

	public void setDate(Timestamp date) {
		this.date = date;
	}

	@Override
	public String toString() {
		return "BikeReplyVO [bikereply_no=" + bikereply_no + ", bike_no=" + bike_no + ", writer=" + writer
				+ ", bikereply_content=" + bikereply_content + ", bikereply_rating=" + bikereply_rating + ", date="
				+ date + "]";
	}

	
	
	
	
	
}
