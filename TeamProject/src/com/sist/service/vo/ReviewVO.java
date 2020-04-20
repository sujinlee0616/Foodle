package com.sist.service.vo;

import java.util.*;

public class ReviewVO {
	private int reviewno;
	private String userid;
	private int rno;
	private double revscore;
	private String revcontent;
	private Date revdate;
	private int revgood;
	private int revbad;
	
	
	public int getReviewno() {
		return reviewno;
	}
	public void setReviewno(int reviewno) {
		this.reviewno = reviewno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public double getRevscore() {
		return revscore;
	}
	public void setRevscore(double revscore) {
		this.revscore = revscore;
	}
	public String getRevcontent() {
		return revcontent;
	}
	public void setRevcontent(String revcontent) {
		this.revcontent = revcontent;
	}
	public Date getRevdate() {
		return revdate;
	}
	public void setRevdate(Date revdate) {
		this.revdate = revdate;
	}
	public int getRevgood() {
		return revgood;
	}
	public void setRevgood(int revgood) {
		this.revgood = revgood;
	}
	public int getRevbad() {
		return revbad;
	}
	public void setRevbad(int revbad) {
		this.revbad = revbad;
	}
}

