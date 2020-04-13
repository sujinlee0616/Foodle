package com.sist.vo;

public class MenuVO {
	// 가게 고유번호
	private int rNo;
	// 메뉴이름
	private String mName;
	// 메뉴가격
	private int mPrice;
	// 메뉴정보
	private String mInfo;
	// 유저 좋아요 갯수
	private int mUsergoodCount;
	// 주인장 추천
	private String mHostgood;
	
	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	public String getmName() {
		return mName;
	}
	public void setmName(String mName) {
		this.mName = mName;
	}
	public int getmPrice() {
		return mPrice;
	}
	public void setmPrice(int mPrice) {
		this.mPrice = mPrice;
	}
	public String getmInfo() {
		return mInfo;
	}
	public void setmInfo(String mInfo) {
		this.mInfo = mInfo;
	}
	public int getmUsergoodCount() {
		return mUsergoodCount;
	}
	public void setmUsergoodCount(int mUsergoodCount) {
		this.mUsergoodCount = mUsergoodCount;
	}
	public String getmHostgood() {
		return mHostgood;
	}
	public void setmHostgood(String mHostgood) {
		this.mHostgood = mHostgood;
	}
	
	
}
