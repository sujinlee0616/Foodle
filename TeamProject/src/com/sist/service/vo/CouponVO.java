package com.sist.service.vo;

import java.util.Date;

import com.sist.vo.MainInfoVO;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class CouponVO {

	private int cNo;
	private int rNo;
	private int cPrice;
	private Date cStartdate;
	private Date cEnddate;
	private String cName;
	
	private MainInfoVO mvo;
}

 