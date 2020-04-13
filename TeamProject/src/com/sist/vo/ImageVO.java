package com.sist.vo;

public class ImageVO {

	// 가게 고유번호
	private int rNo;
	// 이미지 이름
	private String iName;
	// 이미지 링크
	private String iLink;
	
	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	public String getiName() {
		return iName;
	}
	public void setiName(String iName) {
		this.iName = iName;
	}
	public String getiLink() {
		return iLink;
	}
	public void setiLink(String iLink) {
		this.iLink = iLink;
	}
	
	
}
