package com.sist.service.vo;

import java.util.Date;

public class MyWishVO {

	private int wishno;
	private int rno;
	private String userid;
	private Date regdate;
	
	
	public int getWishno() {
		return wishno;
	}
	public void setWishno(int wishno) {
		this.wishno = wishno;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
}
