package com.sist.vo;

public class ReserveInfoVO {

	/*[reserveInfo table] - 모든 컬럼에 디폴트값 없음. 
	 *  rNo			NUMBER			N-N	fk
		rLowprice	VARVHAR2	100	NULL	
		rHighprice	VARVHAR2	100	NULL	
		rOpentime	VARVHAR2	100	N-N	
		rClosetime	VARVHAR2	100	NULL	
		rReserve	VARCHAR2	20	N-N	
		rHoliday	VARCHAR2	100	N-N	
		rSeat		VARCHAR2	20	N-N	
		rRoom		NUMBER			N-N	
	*/
	
	private int rNo;
	private int rLowprice;
	private int rHighprice;
	private int rOpentime;
	private int rClosetime;
	private String rReserve;
	private String rHoliday;
	private int rSeat;
	private int rRoom;
	private int rRoomcount;
	private String rReservedate;
	
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
	public String getrReserve() {
		return rReserve;
	}
	public void setrReserve(String rReserve) {
		this.rReserve = rReserve;
	}
	public String getrHoliday() {
		return rHoliday;
	}
	public void setrHoliday(String rHoliday) {
		this.rHoliday = rHoliday;
	}
	public int getrSeat() {
		return rSeat;
	}
	public void setrSeat(int rSeat) {
		this.rSeat = rSeat;
	}
	public int getrRoom() {
		return rRoom;
	}
	public void setrRoom(int rRoom) {
		this.rRoom = rRoom;
	}
	public int getrRoomcount() {
		return rRoomcount;
	}
	public void setrRoomcount(int rRoomcount) {
		this.rRoomcount = rRoomcount;
	}
	public String getrReservedate() {
		return rReservedate;
	}
	public void setrReservedate(String rReservedate) {
		this.rReservedate = rReservedate;
	}
	
	
}
