package com.sist.vo;

import java.util.Date;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter

/*  [replyBoard 테이블]
 *  BNO        NOT NULL NUMBER        
	USERID              VARCHAR2(50)  
	BNAME      NOT NULL VARCHAR2(30)  
	BSUBJECT   NOT NULL VARCHAR2(100) 
	BCONTENT   NOT NULL CLOB          
	BPWD       NOT NULL VARCHAR2(20)  
	REGDATE             DATE          
	HIT                 NUMBER        
	GROUP_ID            NUMBER        
	GROUP_STEP          NUMBER        
	GROUP_TAB           NUMBER        
	ROOT                NUMBER        
	DEPTH               NUMBER        
	NOTICE              CHAR(1) 
 */
public class BoardVO {
	private int bno;
	private String userid;
	private String bname;
	private String bsubject;
	private String bcontent;
	private String bpwd;
	private Date regdate;
	private int hit;
	private int group_id;
	private int group_step;
	private int group_tab;
	private int root;
	private int depth;
	private String notice;
}
