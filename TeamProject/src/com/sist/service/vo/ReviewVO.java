package com.sist.service.vo;

import java.util.*;

import com.sist.vo.MainInfoVO;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReviewVO {
	private int revNo;
	private String userId;
	private int rNo;
	private double revScore;
	private String revContent;
	private Date revDate;
	private int revGood;
	private int revBad;
	
	//join
	private MainInfoVO mvo;
}

