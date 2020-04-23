package com.sist.vo;

//3개의 
public class NearbyVO {
	private int rNo;
	private int rLowprice;
	private int rHighprice;
	private int rOpentime;
	private int rClosetime;
    
	// 이미지 이름
	private String iName;
	// 이미지 링크
	private String iLink;
	
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
	
	private int rHit;
	private String rTakeout;
	
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
	public int getrLowprice() {
		return rLowprice;
	}
	public void setrLowprice(int rLowprice) {
		this.rLowprice = rLowprice;
	}
	public int getrHighprice() {
		return rHighprice;
	}
	public void setrHighprice(int rHighprice) {
		this.rHighprice = rHighprice;
	}
	public int getrOpentime() {
		return rOpentime;
	}
	public void setrOpentime(int rOpentime) {
		this.rOpentime = rOpentime;
	}
	public int getrClosetime() {
		return rClosetime;
	}
	public void setrClosetime(int rClosetime) {
		this.rClosetime = rClosetime;
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
	public int getrHit() {
		return rHit;
	}
	public void setrHit(int rHit) {
		this.rHit = rHit;
	}
	public String getrTakeout() {
		return rTakeout;
	}
	public void setrTakeout(String rTakeout) {
		this.rTakeout = rTakeout;
	}
	@Override
	public String toString() {
		return "NearbyVO [rNo=" + rNo + ", rLowprice=" + rLowprice + ", rHighprice=" + rHighprice + ", rOpentime="
				+ rOpentime + ", rClosetime=" + rClosetime + ", iName=" + iName + ", iLink=" + iLink + ", rName="
				+ rName + ", rType=" + rType + ", rTel=" + rTel + ", rScore=" + rScore + ", rScoreCount=" + rScoreCount
				+ ", rAddr1=" + rAddr1 + ", rAddr2=" + rAddr2 + ", rPwd=" + rPwd + ", rArea=" + rArea + ", rAreaDetail="
				+ rAreaDetail + ", rHit=" + rHit + ", rTakeout=" + rTakeout + "]";
	}
	
	
	
}
