package com.sist.service.vo;
import java.util.*;

import lombok.Getter;
import lombok.Setter;
/*
    WISHNO  NOT NULL NUMBER       
	RNO     NOT NULL NUMBER       
	USERID  NOT NULL VARCHAR2(50) 
	REGDATE          DATE  
 */
@Getter
@Setter
public class MyWishVO {
	private int wishno;
	private int rno;
	private String userid;
	private Date regdate;
}
