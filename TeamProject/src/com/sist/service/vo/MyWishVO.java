package com.sist.service.vo;
import java.util.Date;
import com.sist.vo.*;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class MyWishVO {
	private int wishNo;
	private int rNo;
	private String userId;
	private Date regdate;

	private MainInfoVO mvo; 	
}
