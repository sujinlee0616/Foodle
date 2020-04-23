package com.sist.manager;

import java.util.*;

import com.sist.dao.InfoThemeDAO;
import com.sist.manager.*;
import com.sist.vo.*;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;


public class InfoThemaManager {
	
	InfoThemeDAO dao = new InfoThemeDAO();

	public ArrayList<InfoThemaVO> InfoThemaAllData(ArrayList<AreacodeVO> areacode) {
		
		// 테이블 생성
		dao.resThemeCreate();
		
		InfoThemaVO vo;
		ArrayList<InfoThemaVO> list = new  ArrayList<InfoThemaVO>();
		
		
		ArrayList<AreacodeVO> ac = areacode;
		int page = 20;
		int category = 25;
		
		Element image;
		Element image_Name;
		Element main_Name;
		
//		System.out.println("현재 카테고리 번호 : "+ (z+1)  + ",현재페이지번호 : " + (j+1) +",현재지역번호 : "+(i+1));
		//ac.size()으로 바꿀것
		for(int i=0; i<ac.size(); i++)
		{
			for(int j=0; j<page; j++)
			{
				try
				{
				String url = "http://www.menupan.com/restaurant/bestrest/bestrest.asp?page="+(j+1)+"&trec=293&areacode="+ac.get(i).getA_AreaCode()+"&pt=wk";
				Document doc =Jsoup.connect(url).get();
				Elements link = doc.select("p.listName a");
					
						for(int z=0; z<category; z++)
						{
						Element elem = link.get(z);
						String mLink = "http://www.menupan.com" + elem.attr("href");
						Document doc2 = Jsoup.connect(mLink).get();
						
						int count = 0;
						while(true)
						{
							try
							{
								vo = new InfoThemaVO();
								vo.setrNo(z + j*category + i*page*category);
										
								// 테마 넣는 부분
								Element R_Thema = doc2.select("dd.Theme a").get(count);
								vo.setrThema(R_Thema.text());
								
								// Data Check 
								System.out.println("현재 카테고리 번호:"+ (z+1)  + ", 현재페이지번호:" + (j+1) +", 현재지역번호:"+(i+1));
								System.out.println("rNo="+vo.getrNo()+", rThema="+vo.getrThema());
								
								dao.resThemeInsert(vo);
								Thread.sleep(500);
								count++;
								
								
							}catch(Exception ex) {break;}	
						}
							
					}
				}
				catch(Exception ex)	{ex.printStackTrace();}
			}
		}
		return list;
	}
	public static void main(String[] args) {
	
		InfoThemaManager a = new InfoThemaManager();
		AreacodeManager b = new AreacodeManager();
	
		a.InfoThemaAllData(b.AreacodeAllData());
		
		
		System.out.println("========================= END =========================");
		/*for(int i = 0 ; i < list.size() ; i++)
		{
			System.out.println(list.get(i).getR_No());
			System.out.println(list.get(i).getR_Thema());
		}
		*/
	}
}