package com.sist.vo;

import com.sist.vo.ImageVO;

public class MainInfoVO {
	
	// 가게 고유번호
	private int rNo;
	// 가게 이름
	private String rName;
	// 가게 업종
	private String rType;
	// 가게 전화번호
	private String rTel;
	// 가게 평점
	private double rScore;
	// 가게 평점평가 인원
	private int rScoreCount;
	//주소1
	private String rAddr1;
	//주소2
	private String rAddr2;
	//가게비번
	private String rPwd;
	// 가게 지역(ex.서울강남,서울강북...)
	private String rArea;
	// 가게 세부지역(ex.가로수길,강남역...)
	private String rAreaDetail;
	
	// image 조인
	private ImageVO ivo=new ImageVO();
	
	public ImageVO getIvo() {
		return ivo;
	}
	public void setIvo(ImageVO ivo) {
		this.ivo = ivo;
	}
	
	
	public int getrNo() {
		return rNo;
	}
	public void setrNo(int rNo) {
		this.rNo = rNo;
	}
	public String getrName() {
		return rName;
	}
	public void setrName(String rName) {
		this.rName = rName;
	}
	public String getrType() {
		return rType;
	}
	public void setrType(String rType) {
		this.rType = rType;
	}
	public String getrTel() {
		return rTel;
	}
	public void setrTel(String rTel) {
		this.rTel = rTel;
	}
	public double getrScore() {
		return rScore;
	}
	public void setrScore(double rScore) {
		this.rScore = rScore;
	}
	public int getrScoreCount() {
		return rScoreCount;
	}
	public void setrScoreCount(int rScoreCount) {
		this.rScoreCount = rScoreCount;
	}
	public String getrAddr1() {
		return rAddr1;
	}
	public void setrAddr1(String rAddr1) {
		this.rAddr1 = rAddr1;
	}
	public String getrAddr2() {
		return rAddr2;
	}
	public void setrAddr2(String rAddr2) {
		this.rAddr2 = rAddr2;
	}
	public String getrPwd() {
		return rPwd;
	}
	public void setrPwd(String rPwd) {
		this.rPwd = rPwd;
	}
	public String getrArea() {
		return rArea;
	}
	public void setrArea(String rArea) {
		this.rArea = rArea;
	}
	public String getrAreaDetail() {
		return rAreaDetail;
	}
	public void setrAreaDetail(String rAreaDetail) {
		this.rAreaDetail = rAreaDetail;
	}
	
	
	@Override
	public String toString() {
		return "MainInfoVO [rNo=" + rNo + ", rName=" + rName + ", rType=" + rType + ", rTel=" + rTel + ", rScore="
				+ rScore + ", rScoreCount=" + rScoreCount + ", rAddr1=" + rAddr1 + ", rAddr2=" + rAddr2 + ", rPwd="
				+ rPwd + ", rArea=" + rArea + ", rAreaDetail=" + rAreaDetail + ", ivo=" + ivo + "]";
	}
	
	
	
	
}