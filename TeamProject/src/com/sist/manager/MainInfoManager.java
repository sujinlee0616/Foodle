package com.sist.manager;


import java.util.ArrayList;



import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.sist.dao.*;
import com.sist.vo.*;
// 버릴 값은 0값으로!!

public class MainInfoManager {
	
	
	public String MediaSubString(String cutchar, String fulltitle) {
		
		String temp ="";
		/*StringTokenizer a = new StringTokenizer(str);*/
		 int i=0;
		/*while(true)
		{
			i++;
			token
			temp = fulltitle.substring(0,fulltitle.indexOf(cutchar)).trim();
			try {
				temp += fulltitle.substring(fulltitle.indexOf(cutchar,i),fulltitle.indexOf(cutchar,i+1)+1).trim();
				
			}catch(Exception ex) {
				break;
			}
		}*/
		return temp.trim();
	}
	
	
	

	
	public ArrayList<MainInfoVO> mainInfoAllData(ArrayList<AreacodeVO> areacode)
	{
		ArrayList<MainInfoVO> list = new  ArrayList<MainInfoVO>();
		MainInfoVO vo;
		
		ArrayList<AreacodeVO> ac = areacode;
		int page = 20;
		int kategorie = 25;
		

		/*
		 * 
	// 가게 고유번호
	private int r_No;
	// 가게 이름
	private String r_Name;
	// 가게 업종
	private String r_Type;
	// 가게 전화번호
	private String r_Tel;
	// 가게 평점
	private double r_Score;
	// 가게 평점평가 인원
	private int r_ScoreCount;
	//가게비번
	private String r_Pwd;
	//주소1
	private String r_Addr1;
	//주소2
	private String r_Addr2;
	// 가게 지역(ex.서울강남,서울강북...)
	private String r_Area;
	// 가게 세부지역(ex.가로수길,강남역...)
	private String r_AreaDetail;
		 * 
		 * 
		 */



//		//가게 쉬는날
//		private String r_Holiday;
//		//가게 소개
//		private String r_Content;
//		//가게 좋아요 갯수
//		private String r_Good;
//		//가게 좌석 갯수
//		private String r_Seat;
//		//가게 방 갯수
//		private String r_Room;
//		//주류판매 여부
//		private String r_Drink;
//		//금연석정보
//		private String r_Nosmoking;
//		//예약 여부
//		private String r_Reserve;
//		//화장실 여부
//		private String r_Restroom;
//		//주차 여부
//		private String r_Park;
//		//배달 여부
//		private String r_Delivery;
//		//누적 방문자숫자
//		private int r_hit;
//		//홈페이지 처음 시작한 날짜
//		private Date r_Start;
//		//가게정보 수정일자
//		private Date r_Date;

//		//누적 방문자숫자
//		private int r_hit;
//		//홈페이지 처음 시작한 날짜
//		private Date r_Start;
//		//가게 지역(ex.서울강남,서울강북...)
//		private String r_Area;
//		//가게 세부지역(ex.가로수길,강남역...)
//		private String r_AreaDetail;
		Element rNo;
		Element rName;
		Element rType;
		Element rTel;
		Element rAddr1;
		Element rAddr2;
		Element rScore;
		Element rScoreCount;
//		private int r_Lowprice;	
//		private int r_Highprice;
		//위에 두개 합친것
		Element rPrice;		
//		Element r_Opentime;
//		Element r_Closetime;
		//위에 두개 합친것
		Element rBusinesstime;
		Element rHoliday;
		Element rContent;
		Element rGood;
//		Element r_Seat;
//		Element r_Room;
		//위에두개 합친것
		Element rSeat_Room;		
		Element rDrink;
		Element rNosmoking;
		Element rReserve;
		Element rRestroom;
		Element rPark;
		Element rDelivery;
		Element rOther;
		Element rTakeout;
		
		Element rhit;	
		Element rStart;
		Element rAreaDetail;
		Element rArea;
		
		Element rDate;
		
		
		//System.out.println("현재 카테고리 번호 : "+ (z+1)  + ",현재페이지번호 : " + (j+1) +", 현재지역번호 : "+(i+1));
		for(int i=0; i<ac.size(); i++)   // i < ac.size()로 변경 예정! ==> 현재 두개의 area만 돌 것!!
		{
			
			for(int j=0; j < page; j++) // 한개의 areacode를 돌때 각 페이지 별로 자료를 가져올 예정!!  현재 0,1 페이지만 긁을 예정!!
			{
				try{
					
				//	http://www.menupan.com/restaurant/bestrest/bestrest.asp?page= 12&trec=292&areacode=ss218&pt=wk // 주간랭킹 => 안에서 페이지를 모두 돌면서 상세 페이지를 모두 읽을 예정!
				//  http://www.menupan.com/restaurant/bestrest/bestrest.asp?page=   2     &trec=292&areacode=         ss218               &pt=wk   ex) 서울 가로수길 2페이지!!!
				//  http://www.menupan.com/restaurant/bestrest/bestrest.asp?page="+(j+1)+"&trec=293&areacode="+ac.get(i).getA_AreaCode()+"&pt=wk";
				/*															ㅓ+1=1페이지!   페이지 수! 		      		지역코드!!									
				 */
					String url ="http://www.menupan.com/restaurant/bestrest/bestrest.asp?page="+(j+1)+"&trec=293&areacode="+ac.get(i).getA_AreaCode()+"&pt=wk";
					
					//지역코드 별로 페이지를 돌면서 페이지별 url정보를 얻어옴!
					Document doc = Jsoup.connect(url).get(); // 지역코드와 페이지를 돌면서 url에서 얻어놓은 각 가게 페이지에서 .get()하여 얻은 정보를 doc에 저장! => 상세정보페이지 1개!
					
					Elements link = doc.select("p.listName a");  // 한개의 상세정보에서 link라는 변수를 얻을 예정! doc 상세페이지에서  tag p의 classname 이 listName 인 값의 a tag가 갖는 값을 가져옴! 
					// System.out.println(link);
					
					// 페이지를 돌면서 z에서 상세정보를 모두 긁기!!
					for(int z=0; z < kategorie; z++)   // z는 상세정보 가게 / 카테고리(가게) 1개 - 
					{
						
						
						//한개의 상세정보안의 모든 가게의 tag a값을 elem에 넣어놓음!
						Element elem=link.get(z); 
						
						//https://www.menupan.com/restaurant/onepage.asp?acode=D103352
						//elem이 갖고 있는 a tag값에서 href 값만 얻어와서 https://www.menupan.com에 붙임!
						// href => /restaurant/onepage.asp?acode=D103352 얻어옴!		
						
						String mLink="https://www.menupan.com"+ elem.attr("href");	 
						//mLink =>  https://www.menupan.com/restaurant/onepage.asp?acode=D103352		
						
						//mLink에서 얻은 해당 지역코드와 해당 페이지들에서 얻은 모든 상세정보 가게 페이지들의 정보를 doc2에 저장함!
						Document doc2=Jsoup.connect(mLink).get();
						
						
						vo = new MainInfoVO();
						
				
						//vo.setR_No(((z) + ((j)*kategorie) + ((i)*(page*kategorie))));
						/*       1r스캔개수  + 페이지개수*1r개수     + 지역코드개수*(페이지개수*r스캔개수)                   
					
						 */
						//가게 고유번호
						vo.setrNo(((z) + ((j)*kategorie) + ((i)*(page*kategorie))));
						
						//가게이름
						try {
							
							rName = doc2.select("span.storeName").get(0);
							vo.setrName(rName.text());	
						
						}catch (Exception ex) { break;}
						
						
						/*
						 * 
						try {
								r_Foodtype = doc2.select("dl.restType dd.type").get(0);
							
								if(r_Foodtype.text().indexOf("-") != -1)   //카페/주점-카페
									vo.setR_Foodtype(r_Foodtype.text().substring(0,r_Foodtype.text().indexOf("-")));
								else
									vo.setR_Foodtype(r_Foodtype.text());
									
							}catch(Exception ex) {vo.setR_Foodtype("기타");}
						 
						 */
						
						
						//가게업종
						try{			
								rType = doc2.select("dl.restType dd.type").get(0);
								
								//경우1 -가 있다면  -앞에서 자르기!
								if(rType.text().indexOf("-") != -1){ // -있다면!
									// "-" 글자 아에서 - 앞까지 자르고..
									vo.setrType(rType.text().substring(0,rType.text().indexOf("-")));
								}//경우2
								else if(rType.text().indexOf("(") != -1){ // 문자열에 "(" 있다면
									// "-" 글자 아에서 ( 앞까지 자르고..
									
									try{
										// 전문뷔페(씨푸드뷔페)  ==> 뷔페
										if(rType.text().indexOf("뷔")==2){
												
											vo.setrType(rType.text().substring(3,5));
											
										}else{ // 한식(돈까스 전문) => 한식
									
											vo.setrType(rType.text().substring(0,rType.text().indexOf("(")));
										}
									
									}catch(Exception ex)
									{ break; }
									
								}
								//경우3  전문뷔페 =>  인덱스 2번째에 "뷔"가 있으면 => 
								else if(rType.text().indexOf("뷔")==2){
								
									vo.setrType(rType.text().substring(3,5));
									 
								}// 경우 4
								else //그 외에는..그냥 담기//?
									vo.setrType(rType.text());
								
								}catch(Exception ex) {vo.setrType("기타");} //위에 해당되지 않으면!!
							
						
						//가게 전화번호
						try{
							
							rTel=doc2.select("dl.restTel dd.tel1").get(0);
							
								vo.setrTel(rTel.text().replaceAll("[()]", "").replace(" ", "-"));
						

						}catch(Exception ex) {break;} 
						

						
						//가게 구주소
						try {
							
							rAddr1 = doc2.select("dl.restAdd dd.add1").get(0);
							
							if(rAddr1.text()==null){
								
								vo.setrAddr1("0");
								
							}else{
								
								vo.setrAddr1(rAddr1.text());
								
							}
							
						}catch (Exception ex) {vo.setrAddr1("0");}
						
						//가게 신주소
						try{
							

							rAddr2 = doc2.select("dl.restAdd dd.add2").get(0);


							if(rAddr2.text()==null){

								vo.setrAddr2("0");

							}
							else  // [새주소] 서울 서초구 서초대로73길 7 => 서울 서초구 서초대로73길 7)
							{	
									
								vo.setrAddr2(rAddr2.text().substring(rAddr2.text().indexOf("]")+2));
							}
									
						}catch (Exception ex) {vo.setrAddr2("0");}
						
						//가게 평점
						try {
							
							rScore = doc2.select("dl.restGrade span.total").get(0);
							vo.setrScore(Double.parseDouble(rScore.text()));
							
							
						}catch(Exception ex) {vo.setrScore(0);}
						
						//가게평점 평가인원수
						try {
							
							rScoreCount = doc2.select("dl.restGrade span.count").get(0);
							String[] temp = rScoreCount.text().split("명");
							vo.setrScoreCount(Integer.parseInt(temp[0]));
							
						}catch(Exception ex) {vo.setrScoreCount(0);}
						//추천가격대(높음)						
						
						
						String[] area = {"서울 강남|ss","서울 강북|sn","경기 남부|cs","경기 북부|cn","인천|ic","부산|bs","대구|dg","광주|gj","대전|dj","울산|us","강원|gw","충청|cc","경상|gs","전라|jl","제주|jj"};

					    // 가게 지역!!
						for(int count = 0 ; count < area.length ; count++)
						{
					
							if(area[count].substring(area[count].indexOf("|")+1).equals(ac.get(i).getA_AreaCode().substring(0,2)))
								vo.setrArea(area[count].substring(0,area[count].indexOf("|")));
						}
			
						// 가게 세부 지역!!
						for(int count = 0 ; count < ac.size(); count++)	
						{
							if(ac.get(count).getR_Area().equals(vo.getrArea()))
							{
								
								vo.setrAreaDetail(ac.get(count + (Integer.parseInt(ac.get(i).getA_AreaCode().substring(3))) -1).getR_AreaDetail());
								break;
							}
						}
						list.add(vo);
					}
			}catch(Exception ex) {ex.printStackTrace();}
		}
	}
	
	return list;
}

	
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		MainInfoManager ifm = new MainInfoManager();
		AreacodeManager am = new AreacodeManager();
		
		
		ArrayList<MainInfoVO> list = new  ArrayList<MainInfoVO>();
		
		System.out.println(ifm.MediaSubString(",", "aaa,bbb,ccc"));
		
		list = ifm.mainInfoAllData(am.AreacodeAllData());
		
		MainInfoDAO dao=MainInfoDAO.newInstance();
		
		dao.mainInfoCreate();
		
		int k=1;
		for(int i = 0 ; i < list.size() ; i++)
		{
			
			System.out.println("k="+k);
			
			try{
				
				Thread.sleep(500);
				
			}catch(Exception ex) {}	
			
			k++;
			
			System.out.println(list.get(i).getrNo());
			System.out.println(list.get(i).getrName());
			System.out.println(list.get(i).getrType());
			System.out.println(list.get(i).getrTel());
			System.out.println(list.get(i).getrAddr1());
			System.out.println(list.get(i).getrAddr2());
			System.out.println(list.get(i).getrScore());
			System.out.println(list.get(i).getrScoreCount());	
			
			System.out.println(list.get(i).getrArea());
			System.out.println(list.get(i).getrAreaDetail());
			
			System.out.println();
			
		/*
			System.out.println(list.get(i).getR_Tel());
			System.out.println(list.get(i).getR_Addr1());
			System.out.println(list.get(i).getR_Addr2());
			
			System.out.println(list.get(i).getR_Delivery());
			System.out.println(list.get(i).getR_hit());
			System.out.println(list.get(i).getR_Start());
		*/	
			
		}
		System.out.println("save end.........");
		
		
		
		
	}

}
