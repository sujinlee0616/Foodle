package com.sist.manager;

import java.text.SimpleDateFormat;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import com.sist.vo.AreacodeVO;
import com.sist.vo.ImageVO;
import com.sist.vo.InfoVO;


public class InfoManager {
	
	
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
	
	public ArrayList<InfoVO> InfoAllData(ArrayList<AreacodeVO> areacode)
	{
		ArrayList<InfoVO> list = new  ArrayList<InfoVO>();
		InfoVO vo;
		
		ArrayList<AreacodeVO> ac = areacode;
		int page = 2;
		int kategorie = 1;
		


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

		
//		System.out.println("현재 카테고리 번호 : "+ (z+1)  + ",현재페이지번호 : " + (j+1) +",현재지역번호 : "+(i+1));
		//i < ac.size()로 변경
		for(int i = 0 ; i < 2 ; i++)
		{
			for(int j = 0 ; j < page ; j++)
			{
				try
				{
					String url = "http://www.menupan.com/restaurant/bestrest/bestrest.asp?page="+(j+1)+"&trec=293&areacode="+ac.get(i).getA_AreaCode()+"&pt=wk";
					
					Document doc =Jsoup.connect(url).get();
					Elements link = doc.select("p.listName a");
						for(int z = 0 ; z < kategorie ; z++)
						{
							Element elem = link.get(z);
							String mLink = "http://www.menupan.com" + elem.attr("href");
							Document doc2 = Jsoup.connect(mLink).get();
							
							vo = new InfoVO();
							
							//가게 고유번호
							vo.setrNo(((z) + ((j)*kategorie) + ((i)*(page*kategorie))));
							//가게이름
							try 
							{		
								rName = doc2.select("span.storeName").get(0);
								vo.setrName(rName.text());						
							} catch (Exception ex) {break;}
							//가게업종
							try {
							rType = doc2.select("dl.restType dd.type").get(0);
							if(rType.text().indexOf("-") != -1)
								vo.setrType(rType.text().substring(0,rType.text().indexOf("-")));
							else
								vo.setrType(rType.text());
							}catch(Exception ex) {vo.setrType("기타");}
							//가게 전화번호
							try {
							rTel = doc2.select("dl.restTel dd.tel1").get(0);
							vo.setrTel(rTel.text());
							}catch(Exception ex) {vo.setrTel("없음");}					
							//가게 구주소
							try {
								rAddr1 = doc2.select("dl.restAdd dd.add1").get(0);
								vo.setrAddr1(rAddr1.text());
							}catch (Exception ex) {vo.setrAddr1("없음");}
							//가게 신주소
							try{
								rAddr2 = doc2.select("dl.restAdd dd.add2").get(0);
								vo.setrAddr2(rAddr2.text());
							}catch (Exception ex) {vo.setrAddr1("");}
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
							//추천가격대(낮음)
							try {
								rPrice = doc2.select("p.price strong").get(0);
								vo.setrLowprice(rPrice.text());
							}catch(Exception ex) {vo.setrLowprice("없음");}
							try {
								rPrice = doc2.select("p.price strong").get(1);
								vo.setrHighprice(rPrice.text());								
							}catch(Exception ex) {vo.setrHighprice("없음");}	
							
							//가게 오픈시간
							//가게 닫는시간			
							try {
								rBusinesstime = doc2.select("ul.tableTopA dd.txt2").get(0);

								vo.setrOpentime(rBusinesstime.text().substring(0,rBusinesstime.text().indexOf("~")).trim());		
								vo.setrClosetime(rBusinesstime.text().substring(rBusinesstime.text().indexOf("~")+1).trim());
							}catch(Exception ex) 
							{
								vo.setrOpentime("없음");
								vo.setrClosetime("없음");
							}	
							//가게 쉬는날
							try {
							rHoliday = doc2.select("ul.tableTopA dd.txt1").get(0);
							vo.setrHoliday(rHoliday.text());
							}catch(Exception ex) {
								vo.setrHoliday("없음");}
							//가게 설명
							try {
								rContent = doc2.select("div#info_ps_f").get(0);
								vo.setrContent(rContent.text());
							}catch(Exception ex) {vo.setrContent("없음");}
							
							//가게 좋아요 갯수
							try {
								rGood = doc2.select("dl.btnGood span").get(0);
								vo.setrGood(rGood.text());
							}catch(Exception ex) {}
							
							//가게 좌석 갯수
							try {
								rSeat_Room = doc2.select("ul.tableLR dd").get(0);
								String[] temp2 = rSeat_Room.text().split("/");						
								vo.setrSeat(temp2[0].trim());
							}catch(Exception ex) {
								vo.setrSeat("없음");
							}
							//가게 방 갯수
							try {
								rSeat_Room = doc2.select("ul.tableLR dd").get(0);
								String[] temp2 = rSeat_Room.text().split("/");	
								vo.setrRoom(temp2[1].trim());			
							}catch(Exception ex) {
								vo.setrRoom("방: 방없음");
							}
							///////////////////////
							vo.setrDrink("없음");
							vo.setrNosmoking("없음");
							vo.setrReserve("없음");
							vo.setrRestroom("없음");
							vo.setrPark("없음");
							vo.setrOther("없음");
							vo.setrDelivery("없음");
							//////////////////////
							for(int count = 1 ; count < 9 ; count++)
							{
								try 
								{
									
									if (doc2.select("ul.tableLR dt").get(count).text().equals("주류판매")) 
										vo.setrDrink(doc2.select("ul.tableLR dd").get(count).text());
									
									else if(doc2.select("ul.tableLR dt").get(count).text().equals("금연석"))
										vo.setrNosmoking(doc2.select("ul.tableLR dd").get(count).text());
									
									else if (doc2.select("ul.tableLR dt").get(count).text().equals("예약정보")) 
										vo.setrReserve(doc2.select("ul.tableLR dd").get(count).text());
										
									else if (doc2.select("ul.tableLR dt").get(count).text().equals("화장실")) 
										vo.setrRestroom(doc2.select("ul.tableLR dd").get(count).text());
										
									else if (doc2.select("ul.tableLR dt").get(count).text().equals("주차")) 
									{
										String park=doc2.select("ul.tableLR dd").get(count).text();
										if(park.equals("유료"))
										{
											park="유료";
										}
										vo.setrPark(doc2.select("ul.tableLR dd").get(count).text());
									}
									
									else if (doc2.select("ul.tableLR dt").get(count).text().equals("기타시설")) 
										vo.setrOther(doc2.select("ul.tableLR dd").get(count).text());
											
									else if (doc2.select("ul.tableLR dt").get(count).text().equals("배달/포장")) 
										vo.setrDelivery(doc2.select("ul.tableLR dd").get(count).text());
								
								}catch(Exception ex){break;}
							
							}	
							//누적 방문자숫자
							try {
								
								rhit = doc2.select("dl.visitor dd").get(0);
								vo.setRhit(rhit.text().substring(0,(rhit.text().length()-1)));						
							}catch(Exception ex) {vo.setRhit("0");}
							//홈페이지 처음 시작한 날짜
							try {
								rStart = doc2.select("dl.visitor dd").get(1);
								vo.setrStart(rStart.text().substring(0,(rStart.text().indexOf("이"))));
							//초기값을 2014.01.01로 함
							}catch(Exception ex) {vo.setrStart("2014.01.01");}
							///////////////////// 수정 필요
							
							String[] area = {"서울 강남|ss","서울 강북|sn","경기 남부|cs","경기 북부|cn","인천|ic","부산|bs","대구|dg","광주|gj","대전|dj","울산|us","강원|gw","충청|cc","경상|gs","전라|jl","제주|jj"};

						
							for(int count = 0 ; count < area.length ; count++)
							{
						
								if(area[count].substring(area[count].indexOf("|")+1).equals(ac.get(i).getA_AreaCode().substring(0,2)))
									vo.setrArea(area[count].substring(0,area[count].indexOf("|")));
							}
				

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

		
		InfoManager ifm = new InfoManager();
		AreacodeManager am = new AreacodeManager();
		
		
		ArrayList<InfoVO> list = new  ArrayList<InfoVO>();
		
		
		
		System.out.println(ifm.MediaSubString(",", "aaa,bbb,ccc"));
		/*
		list = ifm.InfoAllData(am.AreacodeAllData());
		
		for(int i = 0 ; i < list.size() ; i++)
		{
			System.out.println(list.get(i).getR_No());
			System.out.println(list.get(i).getR_Name());
			System.out.println(list.get(i).getR_Foodtype());
			System.out.println(list.get(i).getR_Tel());
			System.out.println(list.get(i).getR_Addr1());
			System.out.println(list.get(i).getR_Addr2());
			System.out.println(list.get(i).getR_Score());
			System.out.println(list.get(i).getR_ScoreCount());		
			System.out.println(list.get(i).getR_Lowprice());
			System.out.println(list.get(i).getR_Highprice());
			System.out.println(list.get(i).getR_Opentime());
			System.out.println(list.get(i).getR_Closetime());
			System.out.println(list.get(i).getR_Holiday());
			System.out.println(list.get(i).getR_Content());
			System.out.println(list.get(i).getR_Good());
			System.out.println(list.get(i).getR_Seat());
			System.out.println(list.get(i).getR_Room());
			
			System.out.println(list.get(i).getR_Drink());
			System.out.println(list.get(i).getR_Nosmoking());
			System.out.println(list.get(i).getR_Reserve());
			System.out.println(list.get(i).getR_Restroom());
			System.out.println(list.get(i).getR_Park());
			System.out.println(list.get(i).getR_Other());
			System.out.println(list.get(i).getR_Delivery());
			System.out.println(list.get(i).getR_hit());
			System.out.println(list.get(i).getR_Start());
			
			System.out.println(list.get(i).getR_Area());
			System.out.println(list.get(i).getR_AreaDetail());
			
			System.out.println();
		}
		*/
	}
}
