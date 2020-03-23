package com.sist.manager;

import java.util.*;

import com.sist.dao.ImageDAO;
import com.sist.vo.*;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

public class ImageManager {
	ImageDAO dao=new ImageDAO();
	public ArrayList<ImageVO> ImageAllData(ArrayList<AreacodeVO> areacode) {
		
		ArrayList<ImageVO> list = new  ArrayList<ImageVO>();
		ImageVO vo;
		
		ArrayList<AreacodeVO> ac = areacode;
		int page = 30;
		int kategorie = 25;
		
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
								System.out.println(count);
								vo = new ImageVO();
								System.out.println("========vo.no 시작========");
								//가게No넣는부분인데 겹치지 않게 하기 위해서
								vo.setR_No(((z) + ((j)*kategorie) + ((i)*(page*kategorie))));	
								System.out.println("========vo.no 끝========");
								//사진링크 넣는 부분
								System.out.println("======이미지링크 시작=======");
								image = doc2.select("img#restphoto_img_" + count).get(0);
								vo.setI_Link("https://www.menupan.com" + image.attr("tag_src_z"));
								System.out.println(vo.getI_Link());
								System.out.println("======이미지링크 끝=======");
								
								//사진 이름 넣는 부분
								System.out.println("=======이미지 이름 시작=========");
								image_Name = doc2.select("img#restphoto_img_"+count).get(0);
								vo.setI_Name(image_Name.attr("title"));
								System.out.println(vo.getI_Name());
								System.out.println("=======이미지 이름 끝=========");
								
								dao.InsertImageData(vo);
								count++;
								Thread.sleep(1000);
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
		
		im.ImageAllData(am.AreacodeAllData());
		System.out.println("===================parsing done===================");
		System.out.println("===================parsing done===================");
//		ArrayList<ImageVO> list = new  ArrayList<ImageVO>();
//		
//		list = im.ImageAllData(am.AreacodeAllData());
//		System.out.println("======================메인부분=======================");
//		for(int i = 0; i < list.size() ; i++)
//		{
//			System.out.println(list.get(i).getR_No());
//			System.out.println(list.get(i).getI_Name());
//			System.out.println(list.get(i).getI_Link());
//		}
	}
	
}
	

