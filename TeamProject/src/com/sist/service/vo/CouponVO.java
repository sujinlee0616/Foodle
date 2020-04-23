package com.sist.service.vo;

import java.util.Date;

public class CouponVO {

	private int cno;
	private int rno;
	private int cprice;
	private Date cstartdate;
	private Date cenddate;
	private String cname;
	
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public int getCprice() {
		return cprice;
	}
	public void setCprice(int cprice) {
		this.cprice = cprice;
	}
	public Date getCstartdate() {
		return cstartdate;
	}
	public void setCstartdate(Date cstartdate) {
		this.cstartdate = cstartdate;
	}
	public Date getCenddate() {
		return cenddate;
	}
	public void setCenddate(Date cenddate) {
		this.cenddate = cenddate;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}

}

 