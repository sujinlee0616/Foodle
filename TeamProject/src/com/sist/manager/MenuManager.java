package com.sist.manager;

import java.util.*;


import com.sist.manager.*;
import com.sist.vo.*;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;


public class MenuManager {

	public ArrayList<MenuVO> MenuAllData(ArrayList<AreacodeVO> areacode) {
		
		//����Ʈ�� vo
		//ImageVO vo = new ImageVO();
		ArrayList<MenuVO> list = new  ArrayList<MenuVO>();
		MenuVO vo;
		
		ArrayList<AreacodeVO> ac = areacode;
		int page = 2;
		int kategorie = 3;
		
		/*	 
		//���� ������ȣ	
		private int r_No;
		//�޴��̸�
		private String m_Name;
		//�޴�����
		private int m_Price;
		//�޴�����
		private String m_Info;
		//���� ���ƿ� ����
		private int m_UsergoodCount;
		//������ ��õ
		private String m_Hostgood;
		*/
		Element m_Name;
		Element m_Price;
		Element m_Info;
		Element m_UsergoodCount;
		Element m_Hostgood;
		
//		System.out.println("���� ī�װ� ��ȣ : "+ (z+1)  + ",������������ȣ : " + (j+1) +",����������ȣ : "+(i+1));
		for(int i = 0 ; i < ac.size(); i++)
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
						//�̹��� �Ľ�
						int count = 0;
						while (true) {
							vo = new MenuVO();
							
							vo.setR_No(((z) + ((j)*kategorie) + ((i)*(page*kategorie))));
							
							try {
								// http://www.menupan.com/restaurant/onepage.asp?acode=T168356 (¹�c �c�� ?c��� ��µ� ?)
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
								vo.setM_Info("����");
							}
							try {
								m_UsergoodCount = doc2.select("p.good").get(count);
								vo.setM_UsergoodCount(Integer.parseInt(m_UsergoodCount.text()));
							}catch(Exception ex) {vo.setM_UsergoodCount(0);}					
							try {
								m_Hostgood = doc2.select("span.ic_recom1 img").get(count);
								vo.setM_Hostgood(m_Hostgood.attr("alt"));
							} catch (Exception ex) {
								vo.setM_Hostgood("����");
							}
							list.add(vo);
							count++;
							System.out.println(count);
						}	
					}
				}
				catch(Exception ex)	{ex.printStackTrace();}
			}
		}
		return list;
	}
	/*
	public static void main(String[] args) {

		MenuManager mm = new MenuManager();
		AreacodeManager am = new AreacodeManager();
		
		ArrayList<MenuVO> list = new  ArrayList<MenuVO>();
		
		list = mm.MenuAllData(am.AreacodeAllData());
		
		for(int i = 0; i < list.size() ; i++)
		{
			System.out.printf("���� ���� ��ȣ : "+list.get(i).getR_No()+"     ");
			System.out.printf("�޴� �̸� : "+list.get(i).getM_Name()+"     ");
			System.out.printf("�޴� ���� : "+list.get(i).getM_Price()+"     ");
			System.out.printf("�޴� ���� : "+list.get(i).getM_Info()+"     ");
			System.out.printf("���� ���ƿ� ���� : "+list.get(i).getM_UsergoodCount()+"     ");
			System.out.printf("���� ��õ : "+list.get(i).getM_Hostgood()+"     ");
			System.out.println();
		}
	}
	*/
}