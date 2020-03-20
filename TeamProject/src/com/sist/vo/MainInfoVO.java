package com.sist.vo;

public class MainInfoVO {
	
	// 가게 고유번호
	private int r_No;
	// 가게 이름
	private String r_Name;
	// 가게 업종
	private String r_Type;
	// 가게 전화번호
	private String r_Tel;
	// 가게 평점
	private double r_Score;
	// 가게 평점평가 인원
	private int r_ScoreCount;
	//가게비번
	private String r_Pwd;
	//주소1
	private String r_Addr1;
	//주소2
	private String r_Addr2;
	// 가게 지역(ex.서울강남,서울강북...)
	private String r_Area;
	// 가게 세부지역(ex.가로수길,강남역...)
	private String r_AreaDetail;
	public int getR_No() {
		return r_No;
	}
	public void setR_No(int r_No) {
		this.r_No = r_No;
	}
	public String getR_Name() {
		return r_Name;
	}
	public void setR_Name(String r_Name) {
		this.r_Name = r_Name;
	}
	
	
	public String getR_Type() {
		return r_Type;
	}
	public void setR_Type(String r_Type) {
		this.r_Type = r_Type;
	}
	public String getR_Tel() {
		return r_Tel;
	}
	public void setR_Tel(String r_Tel) {
		this.r_Tel = r_Tel;
	}
	public double getR_Score() {
		return r_Score;
	}
	public void setR_Score(double r_Score) {
		this.r_Score = r_Score;
	}
	public int getR_ScoreCount() {
		return r_ScoreCount;
	}
	public void setR_ScoreCount(int r_ScoreCount) {
		this.r_ScoreCount = r_ScoreCount;
	}
	public String getR_Pwd() {
		return r_Pwd;
	}
	public void setR_Pwd(String r_Pwd) {
		this.r_Pwd = r_Pwd;
	}
	public String getR_Addr1() {
		return r_Addr1;
	}
	public void setR_Addr1(String r_Addr1) {
		this.r_Addr1 = r_Addr1;
	}
	public String getR_Addr2() {
		return r_Addr2;
	}
	public void setR_Addr2(String r_Addr2) {
		this.r_Addr2 = r_Addr2;
	}
	public String getR_Area() {
		return r_Area;
	}
	public void setR_Area(String r_Area) {
		this.r_Area = r_Area;
	}
	public String getR_AreaDetail() {
		return r_AreaDetail;
	}
	public void setR_AreaDetail(String r_AreaDetail) {
		this.r_AreaDetail = r_AreaDetail;
	}
	
	
	
}