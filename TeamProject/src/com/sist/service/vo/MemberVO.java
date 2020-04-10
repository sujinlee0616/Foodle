package com.sist.service.vo;

public class MemberVO {

	private String userid;
	private String upwd;
	private String uname;
	private String uemail;
	private String utel;
	private String uphone;
	private String upost; 
	private String uaddr1;
	private String uaddr2;
	private String usex;
	private String ubirth;
	private String utype;
	private String hint;
	private String hintans;
	
	private String msg;

	public String getUserid() {
		return userid;
	}

	public void setUserid(String userid) {
		this.userid = userid;
	}

	public String getUpwd() {
		return upwd;
	}

	public void setUpwd(String upwd) {
		this.upwd = upwd;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getUemail() {
		return uemail;
	}

	public void setUemail(String uemail) {
		this.uemail = uemail;
	}

	public String getUtel() {
		return utel;
	}

	public void setUtel(String utel) {
		this.utel = utel;
	}

	public String getUphone() {
		return uphone;
	}

	public void setUphone(String uphone) {
		this.uphone = uphone;
	}

	public String getUpost() {
		return upost;
	}

	public void setUpost(String upost) {
		this.upost = upost;
	}

	public String getUaddr1() {
		return uaddr1;
	}

	public void setUaddr1(String uaddr1) {
		this.uaddr1 = uaddr1;
	}

	public String getUaddr2() {
		return uaddr2;
	}

	public void setUaddr2(String uaddr2) {
		this.uaddr2 = uaddr2;
	}

	public String getUsex() {
		return usex;
	}

	public void setUsex(String usex) {
		this.usex = usex;
	}

	public String getUbirth() {
		return ubirth;
	}

	public void setUbirth(String ubirth) {
		this.ubirth = ubirth;
	}

	public String getUtype() {
		return utype;
	}

	public void setUtype(String utype) {
		this.utype = utype;
	}

	public String getHint() {
		return hint;
	}

	public void setHint(String hint) {
		this.hint = hint;
	}

	public String getHintans() {
		return hintans;
	}

	public void setHintans(String hintans) {
		this.hintans = hintans;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}
	
	
		
}

/* 
 * [member 테이블] 
 *  USERID  NOT NULL VARCHAR2(50)  
	UPWD    NOT NULL VARCHAR2(20)  
	UNAME   NOT NULL VARCHAR2(30)  
	UEMAIL  NOT NULL VARCHAR2(40)  
	UTEL             VARCHAR2(15)  
	UPHONE           VARCHAR2(15)  
	UPOST            VARCHAR2(7)   
	UADDR1           VARCHAR2(200) 
	UADDR2           VARCHAR2(200) 
	USEX             VARCHAR2(10)  
	UBIRTH           VARCHAR2(10)  
	UTYPE   NOT NULL VARCHAR2(10)  
	HINT    NOT NULL VARCHAR2(100) 
	HINTANS NOT NULL VARCHAR2(100) 
 */