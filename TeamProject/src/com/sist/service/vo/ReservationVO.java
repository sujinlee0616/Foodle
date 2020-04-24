package com.sist.service.vo;

import java.util.Date;

import com.sist.vo.MainInfoVO;

public class ReservationVO {
	private int resNo;
	private int rNo;
	private String userId;
	private Date regdate;
	private int resTotalPrice;
	private String resPhone;
	private int resPeople;
	private String resDate;
	private String resTime;
	
	// join
	private MainInfoVO mvo;
	public MainInfoVO getMvo() {
		return mvo;
	}
	public void setMvo(MainInfoVO mvo) {
		this.mvo = mvo;
	} 
	
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

	public int getResTotalPrice() {
		return resTotalPrice;
	}

	public void setResTotalPrice(int resTotalPrice) {
		this.resTotalPrice = resTotalPrice;
	}

	public String getResPhone() {
		return resPhone;
	}

	public void setResPhone(String resPhone) {
		this.resPhone = resPhone;
	}

	public int getResPeople() {
		return resPeople;
	}

	public void setResPeople(int resPeople) {
		this.resPeople = resPeople;
	}

	public String getResDate() {
		return resDate;
	}

	public void setResDate(String resDate) {
		this.resDate = resDate;
	}

	public String getResTime() {
		return resTime;
	}

	public void setResTime(String resTime) {
		this.resTime = resTime;
	}
}