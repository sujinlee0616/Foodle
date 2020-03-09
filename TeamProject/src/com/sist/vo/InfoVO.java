package com.sist.vo;

import java.util.Date;

import org.jsoup.nodes.Element;

public class InfoVO {
	
	//가게 고유번호
	private int r_No;
	//가게 이름
	private String r_Name;
	//가게 업종
	private String r_Foodtype;
	//가게 전화번호
	private String r_Tel;
	//가게 구주소
	private String r_Addr1;
	//가게 신주소
	private String r_Addr2;
	//가게 평점
	private double r_Score;
	//가게 평점평가 인원
	private int r_ScoreCount;
	//추천가격대(낮음)
	private String r_Lowprice;
	//추천가격대(높음)
	private String r_Highprice;
	//가게 오픈시간
	private String r_Opentime;
	//가게 닫는시간
	private String r_Closetime;
	//가게 쉬는날
	private String r_Holiday;
	//가게 소개
	private String r_Content;
	//가게 좋아요 갯수
	private String r_Good;
	//가게 좌석 갯수
	private String r_Seat;
	//가게 방 갯수
	private String r_Room;
	
	
	//주류판매 여부
	private String r_Drink;
	//금연석정보
	private String r_Nosmoking;
	//예약 여부
	private String r_Reserve;
	//화장실 여부
	private String r_Restroom;
	//주차 여부
	private String r_Park;
	
	//배달 여부
	private String r_Delivery;
	
	//기타시설	
	private String r_Other;
	//포장가능
	private String r_Takeout;
	//누적 방문자숫자
	private String r_hit;
	//홈페이지 처음 시작한 날짜
	private String r_Start;
	//가게정보 수정일자
	private Date r_Date;
	//가게 지역(ex.서울강남,서울강북...)
	private String r_Area;
	//가게 세부지역(ex.가로수길,강남역...)
	private String r_AreaDetail;
	
	
	
	
	public String getR_Other() {
		return r_Other;
	}
	public void setR_Other(String r_Other) {
		this.r_Other = r_Other;
	}
	public String getR_Takeout() {
		return r_Takeout;
	}
	public void setR_Takeout(String r_Takeout) {
		this.r_Takeout = r_Takeout;
	}
	public String getR_Lowprice() {
		return r_Lowprice;
	}
	public void setR_Lowprice(String r_Lowprice) {
		this.r_Lowprice = r_Lowprice;
	}
	public String getR_Highprice() {
		return r_Highprice;
	}
	public void setR_Highprice(String r_Highprice) {
		this.r_Highprice = r_Highprice;
	}
	public String getR_Foodtype() {
		return r_Foodtype;
	}
	public void setR_Foodtype(String r_Foodtype) {
		this.r_Foodtype = r_Foodtype;
	}
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
	public String getR_Tel() {
		return r_Tel;
	}
	public void setR_Tel(String r_Tel) {
		this.r_Tel = r_Tel;
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
	public String getR_Opentime() {
		return r_Opentime;
	}
	public void setR_Opentime(String r_Opentime) {
		this.r_Opentime = r_Opentime;
	}
	public String getR_Closetime() {
		return r_Closetime;
	}
	public void setR_Closetime(String r_Closetime) {
		this.r_Closetime = r_Closetime;
	}
	public String getR_Holiday() {
		return r_Holiday;
	}
	public void setR_Holiday(String r_Holiday) {
		this.r_Holiday = r_Holiday;
	}
	public String getR_Content() {
		return r_Content;
	}
	public void setR_Content(String r_Content) {
		this.r_Content = r_Content;
	}
	public String getR_Good() {
		return r_Good;
	}
	public void setR_Good(String r_Good) {
		this.r_Good = r_Good;
	}
	public String getR_Seat() {
		return r_Seat;
	}
	public void setR_Seat(String r_Seat) {
		this.r_Seat = r_Seat;
	}
	public String getR_Room() {
		return r_Room;
	}
	public void setR_Room(String r_Room) {
		this.r_Room = r_Room;
	}
	public String getR_Drink() {
		return r_Drink;
	}
	public void setR_Drink(String r_Drink) {
		this.r_Drink = r_Drink;
	}
	public String getR_Nosmoking() {
		return r_Nosmoking;
	}
	public void setR_Nosmoking(String r_Nosmoking) {
		this.r_Nosmoking = r_Nosmoking;
	}
	public String getR_Reserve() {
		return r_Reserve;
	}
	public void setR_Reserve(String r_Reserve) {
		this.r_Reserve = r_Reserve;
	}
	public String getR_Restroom() {
		return r_Restroom;
	}
	public void setR_Restroom(String r_Restroom) {
		this.r_Restroom = r_Restroom;
	}
	public String getR_Park() {
		return r_Park;
	}
	public void setR_Park(String r_Park) {
		this.r_Park = r_Park;
	}
	public String getR_Delivery() {
		return r_Delivery;
	}
	public void setR_Delivery(String r_Delivery) {
		this.r_Delivery = r_Delivery;
	}
	
	public String getR_hit() {
		return r_hit;
	}
	public void setR_hit(String r_hit) {
		this.r_hit = r_hit;
	}
	public String getR_Start() {
		return r_Start;
	}
	public void setR_Start(String r_Start) {
		this.r_Start = r_Start;
	}
	public Date getR_Date() {
		return r_Date;
	}
	public void setR_Date(Date r_Date) {
		this.r_Date = r_Date;
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

