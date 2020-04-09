package com.sist.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

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