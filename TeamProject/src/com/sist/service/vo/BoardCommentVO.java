package com.sist.service.vo;

import lombok.Getter;
import lombok.Setter;

/* 
 * [boardComment 테이블]
 *  CNO     NOT NULL NUMBER       
	BNO     NOT NULL NUMBER       
	USERID  NOT NULL VARCHAR2(50) 
	CONTENT NOT NULL CLOB         
	REGDATE          DATE    
 */

@Getter
@Setter

public class BoardCommentVO {
	private int cno;
	private int bno;
	private String userid;
	private String content;
	private String regdate;
	
}
