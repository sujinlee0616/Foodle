package com.sist.service.vo;

import java.util.Date;
import com.sist.vo.MainInfoVO;
/*
	RESNO     NOT NULL NUMBER         
	RNO       NOT NULL NUMBER         
	USERID    NOT NULL VARCHAR2(50)   
	REGDATE            DATE           
	RESDATE   NOT NULL VARCHAR2(20)   
	RESTIME   NOT NULL VARCHAR2(20)   
	RESMENU            VARCHAR2(2000) 
	RESPEOPLE          VARCHAR2(200)
 */

public class ReservationVO {
	private int resNo;
	private int rNo;
	private String userId;
	private Date regdate;
	private String respeople;
	private String resdate;
	private String restime;
	private String resmenu;
	
	// join
	private MainInfoVO mvo;

	public int getResNo() {
		return resNo;
	}

	public void setResNo(int resNo) {
		this.resNo = resNo;
	}

	public int getrNo() {
		return rNo;
	}

	public void setrNo(int rNo) {
		this.rNo = rNo;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public Date getRegdate() {
		return regdate;
	}

	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public String getRespeople() {
		return respeople;
	}
	public void setRespeople(String respeople) {
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

	public MainInfoVO getMvo() {
		return mvo;
	}

	public void setMvo(MainInfoVO mvo) {
		this.mvo = mvo;
	}
	

	
	
}