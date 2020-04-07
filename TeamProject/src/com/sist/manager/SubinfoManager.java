package com.sist.manager;

import java.util.ArrayList;
import java.util.*;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import com.sist.dao.SubinfoDAO;
import com.sist.vo.AreacodeVO;
import com.sist.vo.InfoVO;
import com.sist.vo.SubinfoVO;

public class SubinfoManager {
	SubinfoDAO dao=new SubinfoDAO();
	public ArrayList<SubinfoVO> InfoAllData(ArrayList<AreacodeVO> areacode)
	{
		ArrayList<SubinfoVO> list = new  ArrayList<SubinfoVO>();
		SubinfoVO vo;
		
		ArrayList<AreacodeVO> ac = areacode;
		int page = 20;
		int kategorie = 25;
		
		Element rNo;
		Element rDrink;
		Element rNosmoking;
		Element rPark;
		Element rDelivery;
		Element rOther;
		Element rTakeout;
		Element rContent;
		Element rGood;
		Element rHit;
		Element rStart;
		
		int ct=1;
//		System.out.println("현재 카테고리 번호 : "+ (z+1)  + ",현재페이지번호 : " + (j+1) +",현재지역번호 : "+(i+1));
		//i < ac.size()로 변경
		for(int i = 0 ; i < ac.size() ; i++)
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
							
							vo = new SubinfoVO();
							
							//가게 고유번호
							vo.setrNo(((z) + ((j)*kategorie) + ((i)*(page*kategorie))));
							
							//가게 설명
							try {
								rContent = doc2.select("div#info_ps_f").get(0);
								vo.setrContent(rContent.text());
							}catch(Exception ex) {vo.setrContent("없음");}
						
							//가게 좋아요 갯수
							try {
								rGood = doc2.select("dl.btnGood span").get(0);
								vo.setrGood(Integer.parseInt(rGood.text().replace(",", "")));
							}catch(Exception ex) {}
						
							
							///////////////////////
							vo.setrDrink("없음");
							vo.setrNosmoking("없음");
							vo.setrPark("없음");
							vo.setrOther("없음");
							vo.setrDelivery("불가능");
							vo.setrTakeout("불가능");
							//////////////////////
							for(int count = 1 ; count < 9 ; count++)
							{
								try 
								{
									if (doc2.select("ul.tableLR dt").get(count).text().equals("주류판매")) 
									{
										String drink=doc2.select("ul.tableLR dd").get(count).text();
										if(!drink.equals("판매")&&!drink.equals("판매안함"))
										{
											drink="판매안함";
										}
										vo.setrDrink(drink);
									}
									else if(doc2.select("ul.tableLR dt").get(count).text().equals("금연석"))
									{
										String noSmoking=doc2.select("ul.tableLR dd").get(count).text();
										if(noSmoking.equals("모두 흡연석"))
										{
											noSmoking="흡연석";
										}
										else
										{
											noSmoking="금연석";
										}
										vo.setrNosmoking(noSmoking);
									}
									else if (doc2.select("ul.tableLR dt").get(count).text().equals("주차")) 
									{
										String parking=doc2.select("ul.tableLR dd").get(count).text();
										if(parking.indexOf("료")==-1)
										{
											parking="없음";
										}
										else
										{
											parking=parking.substring(parking.indexOf("료")-1, parking.indexOf("료")+1);
										}
										
										vo.setrPark(parking);
									}
									
									else if (doc2.select("ul.tableLR dt").get(count).text().equals("기타시설")) 
										vo.setrOther(doc2.select("ul.tableLR dd").get(count).text());
											
									else if (doc2.select("ul.tableLR dt").get(count).text().equals("배달/포장")) 
									{
										String delivery="";
										String takeout="";
										String ss=doc2.select("ul.tableLR dd").get(count).text();
										// 포장가능 | 없음 | 배달,포장 가능 | 배달가능
										if(ss.equals("배달가능")||ss.equals("배달,포장 가능"))
										{
											delivery="가능";
										}
										else
										{
											delivery="불가능";
										}
										vo.setrDelivery(delivery);
										
										if(ss.equals("포장가능")||ss.equals("배달,포장 가능"))
										{
											takeout="가능";
										}
										else
										{
											takeout="불가능";
										}
										vo.setrTakeout(takeout);
									}
								
								}catch(Exception ex){break;}
							
							}	
							//누적 방문자숫자
							try {
								rHit = doc2.select("dl.visitor dd").get(0);
								vo.setrHit(Integer.parseInt(rHit.text().substring(0,(rHit.text().length()-1)).replace(",", "")));
							}catch(Exception ex) {vo.setrHit(0);}
							//홈페이지 처음 시작한 날짜
							try {
								rStart = doc2.select("dl.visitor dd").get(1);
								vo.setrStart(rStart.text().substring(0,(rStart.text().indexOf("이"))));
							//초기값을 2014.01.01로 함
							}catch(Exception ex) {vo.setrStart("2019.07.24");}
							
							dao.SubInfoInsert(vo);
							System.out.println("Subinfo Count: "+ct);
							ct++;
							Thread.sleep(100);
						}
				}catch(Exception ex) {ex.printStackTrace();}
			}
		}
		return list;
	}
	
	public static void main(String[] args) {
		SubinfoManager sm=new SubinfoManager();
		AreacodeManager am=new AreacodeManager();
		
//		sm.InfoAllData(am.AreacodeAllData());
//		System.out.println("parsing done!!");
		SubinfoDAO dao=new SubinfoDAO();
		dao.SubInfoCreate();
		System.out.println("create table!");
	}
}
