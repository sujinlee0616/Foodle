package com.sist.service.vo;

import java.util.Date;
/*
	RESNO     NOT NULL NUMBER         
	RNO       NOT NULL NUMBER         
	USERID    NOT NULL VARCHAR2(50)   
	REGDATE            DATE           
	RESPEOPLE NOT NULL NUMBER(3)      
	RESDATE   NOT NULL VARCHAR2(20)   
	RESTIME   NOT NULL VARCHAR2(20)   
	RESMENU            VARCHAR2(2000) 
 */
public class ReservationVO {
	private int resno;
	private int rno;
	private String userid;
	private Date regdate;
	private int respeople;
	private String resdate;
	private String restime;
	private String resmenu;
	
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
	public String getResmenu() {
		return resmenu;
	}
	public void setResmenu(String resmenu) {
		this.resmenu = resmenu;
	}
	
	
	
}