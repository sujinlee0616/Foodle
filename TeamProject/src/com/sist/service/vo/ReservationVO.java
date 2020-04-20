package com.sist.service.vo;

import java.util.Date;

public class ReservationVO {
	private int resno;
	private int rno;
	private String userid;
	private Date regdate;
	private int restotalprice;
	private String resphone;
	private int respeople;
	private String resdate;
	private String restime;
	
	
	public int getResno() {
		return resno;
	}
	public void setResno(int resno) {
		this.resno = resno;
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
	public int getRestotalprice() {
		return restotalprice;
	}
	public void setRestotalprice(int restotalprice) {
		this.restotalprice = restotalprice;
	}
	public String getResphone() {
		return resphone;
	}
	public void setResphone(String resphone) {
		this.resphone = resphone;
	}
	public int getRespeople() {
		return respeople;
	}
	public void setRespeople(int respeople) {
		this.respeople = respeople;
	}
	public String getResdate() {
		return resdate;
	}
	public void setResdate(String resdate) {
		this.resdate = resdate;
	}
	public String getRestime() {
		return restime;
	}
	public void setRestime(String restime) {
		this.restime = restime;
	}
}