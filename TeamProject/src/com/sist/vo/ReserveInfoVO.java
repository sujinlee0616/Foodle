package com.sist.vo;

import lombok.Getter;
import lombok.Setter;

@Getter 
@Setter 

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
	private String rLowprice;
	private String rHighprice;
	private String rOpentime;
	private String rClosetime;
	private String rReserve;
	private String rHoliday;
	private String rSeat;
	private int rRoom;
	
	
}
