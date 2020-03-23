package com.sist.vo;

import java.util.Date;

import org.jsoup.nodes.Element;

public class InfoVO {
	
	// 가게 고유번호
	private int rNo;
	// 가게 이름
	private String rName;
	// 가게 업종
	private String rType;
	// 가게 전화번호
	private String rTel;
	// 가게 구주소
	private String rAddr1;
	// 가게 신주소
	private String rAddr2;
	// 가게 평점
	private double rScore;
	// 가게 평점평가 인원
	private int rScoreCount;
	// 추천가격대(낮음)
	private String rLowprice;
	// 추천가격대(높음)
	private String rHighprice;
	// 가게 오픈시간
	private String rOpentime;
	// 가게 닫는시간
	private String rClosetime;
	// 가게 쉬는날
	private String rHoliday;
	// 가게 소개
	private String rContent;
	// 가게 좋아요 갯수
	private String rGood;
	// 가게 좌석 갯수
	private String rSeat;
	// 가게 방 갯수
	private String rRoom;

	// 주류판매 여부
	private String rDrink;
	// 금연석정보
	private String rNosmoking;
	// 예약 여부
	private String rReserve;
	// 화장실 여부
	private String rRestroom;
	// 주차 여부
	private String rPark;

	// 배달 여부
	private String rDelivery;

	// 기타시설
	private String rOther;
	// 포장가능
	private String rTakeout;
	// 누적 방문자숫자
	private String rhit;
	// 홈페이지 처음 시작한 날짜
	private String rStart;
	// 가게정보 수정일자
	private Date rDate;
	// 가게 지역(ex.서울강남,서울강북...)
	private String rArea;
	// 가게 세부지역(ex.가로수길,강남역...)
	private String rAreaDetail;
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
	public String getrLowprice() {
		return rLowprice;
	}
	public void setrLowprice(String rLowprice) {
		this.rLowprice = rLowprice;
	}
	public String getrHighprice() {
		return rHighprice;
	}
	public void setrHighprice(String rHighprice) {
		this.rHighprice = rHighprice;
	}
	public String getrOpentime() {
		return rOpentime;
	}
	public void setrOpentime(String rOpentime) {
		this.rOpentime = rOpentime;
	}
	public String getrClosetime() {
		return rClosetime;
	}
	public void setrClosetime(String rClosetime) {
		this.rClosetime = rClosetime;
	}
	public String getrHoliday() {
		return rHoliday;
	}
	public void setrHoliday(String rHoliday) {
		this.rHoliday = rHoliday;
	}
	public String getrContent() {
		return rContent;
	}
	public void setrContent(String rContent) {
		this.rContent = rContent;
	}
	public String getrGood() {
		return rGood;
	}
	public void setrGood(String rGood) {
		this.rGood = rGood;
	}
	public String getrSeat() {
		return rSeat;
	}
	public void setrSeat(String rSeat) {
		this.rSeat = rSeat;
	}
	public String getrRoom() {
		return rRoom;
	}
	public void setrRoom(String rRoom) {
		this.rRoom = rRoom;
	}
	public String getrDrink() {
		return rDrink;
	}
	public void setrDrink(String rDrink) {
		this.rDrink = rDrink;
	}
	public String getrNosmoking() {
		return rNosmoking;
	}
	public void setrNosmoking(String rNosmoking) {
		this.rNosmoking = rNosmoking;
	}
	public String getrReserve() {
		return rReserve;
	}
	public void setrReserve(String rReserve) {
		this.rReserve = rReserve;
	}
	public String getrRestroom() {
		return rRestroom;
	}
	public void setrRestroom(String rRestroom) {
		this.rRestroom = rRestroom;
	}
	public String getrPark() {
		return rPark;
	}
	public void setrPark(String rPark) {
		this.rPark = rPark;
	}
	public String getrDelivery() {
		return rDelivery;
	}
	public void setrDelivery(String rDelivery) {
		this.rDelivery = rDelivery;
	}
	public String getrOther() {
		return rOther;
	}
	public void setrOther(String rOther) {
		this.rOther = rOther;
	}
	public String getrTakeout() {
		return rTakeout;
	}
	public void setrTakeout(String rTakeout) {
		this.rTakeout = rTakeout;
	}
	public String getRhit() {
		return rhit;
	}
	public void setRhit(String rhit) {
		this.rhit = rhit;
	}
	public String getrStart() {
		return rStart;
	}
	public void setrStart(String rStart) {
		this.rStart = rStart;
	}
	public Date getrDate() {
		return rDate;
	}
	public void setrDate(Date rDate) {
		this.rDate = rDate;
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
	
	
	
	
}

