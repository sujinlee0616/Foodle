package com.sist.service.vo;
<<<<<<< HEAD

import java.util.Date;

public class MyWishVO {

=======
import java.util.*;

import lombok.Getter;
import lombok.Setter;
/*
    WISHNO  NOT NULL NUMBER       
	RNO     NOT NULL NUMBER       
	USERID  NOT NULL VARCHAR2(50) 
	REGDATE          DATE  
 */
@Getter
@Setter
public class MyWishVO {
>>>>>>> aa64159a4229e72ae2683828aa3f20f2c203670d
	private int wishno;
	private int rno;
	private String userid;
	private Date regdate;
<<<<<<< HEAD
	
	
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
=======
>>>>>>> aa64159a4229e72ae2683828aa3f20f2c203670d
}
