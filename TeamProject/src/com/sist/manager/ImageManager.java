package com.sist.manager;

import java.util.*;
import com.sist.vo.*;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;


public class ImageManager {

	public ArrayList<ImageVO> ImageAllData(ArrayList<AreacodeVO> areacode) {
		
		ArrayList<ImageVO> list = new  ArrayList<ImageVO>();
		ImageVO vo;
		
		ArrayList<AreacodeVO> ac = areacode;
		int page = 1;
		int kategorie = 3;
		
		Element image;
		Element image_Name;
		Element main_Name;
		
//		System.out.println("현재 카테고리 번호 : "+ (z+1)  + ",현재페이지번호 : " + (j+1) +",현재지역번호 : "+(i+1));
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
					
						//이미지 파싱
						int count=0;
						while (true) {
							try {
								
								vo = new ImageVO(); 
								//가게No넣는부분인데 겹치지 않게 하기 위해서
								vo.setR_No(((z) + ((j)*kategorie) + ((i)*(page*kategorie))));							
								
								//사진링크 넣는 부분
								image = doc2.select("img#restphoto_img_" + count).get(0);
								vo.setI_Link("https://www.menupan.com/" + image.attr("src"));


								//사진 이름 넣는 부분
								image_Name = doc2.select("img#restphoto_img_"+count).get(0);
								vo.setI_Name(image_Name.attr("title"));
								
								list.add(vo);
								count++;
						
							} catch (Exception ex) 
							{
								ex.printStackTrace();
								break;
							}
						}			
					}	
				}
				catch(Exception ex)	{ex.printStackTrace();}
			}
		}
		return list;
	}	
	
	public static void main(String[] args) {

		ImageManager im = new ImageManager();
		AreacodeManager am = new AreacodeManager();
		
		ArrayList<ImageVO> list = new  ArrayList<ImageVO>();
		
		list = im.ImageAllData(am.AreacodeAllData());
		
		for(int i = 0; i < list.size() ; i++)
		{
			System.out.println(list.get(i).getR_No());
			System.out.println(list.get(i).getI_Name());
			System.out.println(list.get(i).getI_Link());
		}
	}
	
}
	

