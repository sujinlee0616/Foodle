package com.sist.manager;
import com.sist.vo.*;
import com.sist.dao.*;
import java.util.*;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;


public class MenuManager {

	public ArrayList<MenuVO> MenuAllData(ArrayList<AreacodeVO> areacode) {
		
		//각파트의 vo
		//ImageVO vo = new ImageVO();
		ArrayList<MenuVO> list = new  ArrayList<MenuVO>();
		MenuVO vo;
		
		ArrayList<AreacodeVO> ac = areacode;
		int page = 20;
		int kategorie = 25;
		
		
		/*	 
		//가게 고유번호	
		private int r_No;
		//메뉴이름
		private String m_Name;
		//메뉴가격
		private int m_Price;
		//메뉴정보
		private String m_Info;
		//유저 좋아요 갯수
		private int m_UsergoodCount;
		//주인장 추천
		private String m_Hostgood;
		*/
		Element m_Name;
		Element m_Price;
		Element m_Info;
		Element m_UsergoodCount;
		Element m_Hostgood;
		
//		System.out.println("현재 카테고리 번호 : "+ (z+1)  + ",현재페이지번호 : " + (j+1) +",현재지역번호 : "+(i+1));
		for(int i = 0 ; i < ac.size(); i++)
//		for(int i = 0 ; i < 1; i++)
//		for(int i = 0 ; i < 3; i++)
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
						
			
						System.out.println(mLink);
						
						
						int count = 0;
						while (true) {
							vo = new MenuVO();
							
							vo.setR_No(z + (j*kategorie) + (i*(page*kategorie)));
							
							try {
								// http://www.menupan.com/restaurant/onepage.asp?acode=T168356 (쨔c c가 ?c라고 출력됨 ?)
								m_Name = doc2.select("span.mTitle input").get(count);
								vo.setM_Name(m_Name.attr("value"));
							} catch (Exception ex) {break;}

							try {
								m_Price = doc2.select("p.price input").get(count);
								vo.setM_Price(Integer.parseInt(m_Price.attr("value")));							
							} catch (Exception ex) {
								vo.setM_Price(0);
							}

							try {									
								m_Info = doc2.select("span.mDetail").get(count);
								vo.setM_Info(m_Info.text());
							} catch (Exception ex) {
								vo.setM_Info("없음");
							}
							try {
								m_UsergoodCount = doc2.select("p.good").get(count);
								vo.setM_UsergoodCount(Integer.parseInt(m_UsergoodCount.text()));
							}catch(Exception ex) {vo.setM_UsergoodCount(0);}					
							try {
								m_Hostgood = doc2.select("span.ic_recom1 img").get(count);
								vo.setM_Hostgood(m_Hostgood.attr("alt"));
							} catch (Exception ex) {
								vo.setM_Hostgood("없음");
							}
							list.add(vo);
							count++;
//							System.out.println(count);
						}	
					}
				}
				catch(Exception ex)	{
					ex.printStackTrace(); 
					System.out.println("page="+(j+1));
				}
			}
		}
		return list;
	}
	
	public static void main(String[] args) {
		MenuManager mm = new MenuManager();
		AreacodeManager am = new AreacodeManager();
		
//		ArrayList<MenuVO> list = new ArrayList<MenuVO>();
		
		ArrayList<MenuVO> list = mm.MenuAllData(am.AreacodeAllData());
		
		/*for(int i = 0; i < list.size() ; i++)
		{
			System.out.printf("가게 고유 번호 : "+list.get(i).getR_No()+"     ");
			System.out.printf("메뉴 이름 : "+list.get(i).getM_Name()+"     ");
			System.out.printf("메뉴 가격 : "+list.get(i).getM_Price()+"     ");
			System.out.printf("메뉴 정보 : "+list.get(i).getM_Info()+"     ");
			System.out.printf("유저 좋아요 숫자 : "+list.get(i).getM_UsergoodCount()+"     ");
			System.out.printf("주인 추천 : "+list.get(i).getM_Hostgood()+"     ");
			System.out.println();
		}*/
		
		/*for(MenuVO vo:list) {
			System.out.printf("가게 고유 번호 : "+vo.getR_No()+"     ");
			System.out.printf("메뉴 이름 : "+vo.getM_Name()+"     ");
			System.out.printf("메뉴 가격 : "+vo.getM_Price()+"     ");
			System.out.printf("메뉴 정보 : "+vo.getM_Info()+"     ");
			System.out.printf("유저 좋아요 숫자 : "+vo.getM_UsergoodCount()+"     ");
			System.out.printf("주인 추천 : "+vo.getM_Hostgood()+"     ");
			System.out.println();
		}*/
		
		MenuDAO dao=new MenuDAO();
		dao.menuCreate();
		System.out.println("CREATE TABLE menu!!");
		// 혹시모르니  잠깐 쉰다
		try {
			Thread.sleep(2000);
		} catch(Exception ex) {
			ex.printStackTrace();
		}
		
		int k=1;
		for(MenuVO vo:list) {
			dao.menuInsert(vo);
			try {
				Thread.sleep(100);
			} catch(Exception ex) {
				ex.printStackTrace();
			}
			System.out.println("k="+k);
			k++;
		}
		System.out.println("END!!");
		
		
	
	}
	
}