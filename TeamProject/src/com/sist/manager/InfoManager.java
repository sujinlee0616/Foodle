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
		






//		//���� ���³�
//		private String r_Holiday;
//		//���� �Ұ�
//		private String r_Content;
//		//���� ���ƿ� ����
//		private String r_Good;
//		//���� �¼� ����
//		private String r_Seat;
//		//���� �� ����
//		private String r_Room;
//		//�ַ��Ǹ� ����
//		private String r_Drink;
//		//�ݿ�������
//		private String r_Nosmoking;
//		//���� ����
//		private String r_Reserve;
//		//ȭ��� ����
//		private String r_Restroom;
//		//���� ����
//		private String r_Park;
//		//��� ����
//		private String r_Delivery;
//		//���� �湮�ڼ���
//		private int r_hit;
//		//Ȩ������ ó�� ������ ��¥
//		private Date r_Start;
//		//�������� ��������
//		private Date r_Date;

//		//���� �湮�ڼ���
//		private int r_hit;
//		//Ȩ������ ó�� ������ ��¥
//		private Date r_Start;
//		//���� ����(ex.���ﰭ��,���ﰭ��...)
//		private String r_Area;
//		//���� ��������(ex.���μ���,������...)
//		private String r_AreaDetail;
		
		Element r_No;
		Element r_Name;
		Element r_Foodtype;
		Element r_Tel;
		Element r_Addr1;
		Element r_Addr2;
		Element r_Score;
		Element r_ScoreCount;
//		private int r_Lowprice;	
//		private int r_Highprice;
		//���� �ΰ� ��ģ��
		Element r_Price;		
//		Element r_Opentime;
//		Element r_Closetime;
		//���� �ΰ� ��ģ��
		Element r_Businesstime;
		Element r_Holiday;
		Element r_Content;
		Element r_Good;
//		Element r_Seat;
//		Element r_Room;
		//�����ΰ� ��ģ��
		Element r_Seat_Room;		
		Element r_Drink;
		Element r_Nosmoking;
		Element r_Reserve;
		Element r_Restroom;
		Element r_Park;
		Element r_Delivery;
		Element r_Other;
		Element r_Takeout;
		
		Element r_hit;	
		Element r_Start;
		Element r_AreaDetail;
		Element r_Area;
		
		Element r_Date;

		
//		System.out.println("���� ī�װ� ��ȣ : "+ (z+1)  + ",������������ȣ : " + (j+1) +",����������ȣ : "+(i+1));
		//i < ac.size()�� ����
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
							
							//���� ������ȣ
							vo.setR_No(((z) + ((j)*kategorie) + ((i)*(page*kategorie))));
							//�����̸�
							try 
							{		
								r_Name = doc2.select("span.storeName").get(0);
								vo.setR_Name(r_Name.text());						
							} catch (Exception ex) {break;}
							//���Ծ���
							try {
							r_Foodtype = doc2.select("dl.restType dd.type").get(0);
							if(r_Foodtype.text().indexOf("-") != -1)
								vo.setR_Foodtype(r_Foodtype.text().substring(0,r_Foodtype.text().indexOf("-")));
							else
								vo.setR_Foodtype(r_Foodtype.text());
							}catch(Exception ex) {vo.setR_Foodtype("��Ÿ");}
							//���� ��ȭ��ȣ
							try {
							r_Tel = doc2.select("dl.restTel dd.tel1").get(0);
							vo.setR_Tel(r_Tel.text());
							}catch(Exception ex) {vo.setR_Tel("����");}					
							//���� ���ּ�
							try {
								r_Addr1 = doc2.select("dl.restAdd dd.add1").get(0);
								vo.setR_Addr1(r_Addr1.text());
							}catch (Exception ex) {vo.setR_Addr1("����");}
							//���� ���ּ�
							try{
								r_Addr2 = doc2.select("dl.restAdd dd.add2").get(0);
								vo.setR_Addr2(r_Addr2.text());
							}catch (Exception ex) {vo.setR_Addr1("");}
							//���� ����
							try {
								r_Score = doc2.select("dl.restGrade span.total").get(0);
								vo.setR_Score(Double.parseDouble(r_Score.text()));
							}catch(Exception ex) {vo.setR_Score(0);}
							//�������� ���ο���
							try {
								r_ScoreCount = doc2.select("dl.restGrade span.count").get(0);
								String[] temp = r_ScoreCount.text().split("��");
								vo.setR_ScoreCount(Integer.parseInt(temp[0]));
							}catch(Exception ex) {vo.setR_ScoreCount(0);}
							//��õ���ݴ�(����)						
							//��õ���ݴ�(����)
							try {
								r_Price = doc2.select("p.price strong").get(0);
								vo.setR_Lowprice(r_Price.text());
							}catch(Exception ex) {vo.setR_Lowprice("����");}
							try {
								r_Price = doc2.select("p.price strong").get(1);
								vo.setR_Highprice(r_Price.text());								
							}catch(Exception ex) {vo.setR_Highprice("����");}	
							
							//���� ���½ð�
							//���� �ݴ½ð�			
							try {
								r_Businesstime = doc2.select("ul.tableTopA dd.txt2").get(0);

								vo.setR_Opentime(r_Businesstime.text().substring(0,r_Businesstime.text().indexOf("~")).trim());		
								vo.setR_Closetime(r_Businesstime.text().substring(r_Businesstime.text().indexOf("~")+1).trim());
							}catch(Exception ex) 
							{
								vo.setR_Opentime("����");
								vo.setR_Closetime("����");
							}	
							//���� ���³�
							try {
							r_Holiday = doc2.select("ul.tableTopA dd.txt1").get(0);
							vo.setR_Holiday(r_Holiday.text());
							}catch(Exception ex) {
								vo.setR_Holiday("����");}
							//���� ����
							try {
								r_Content = doc2.select("div#info_ps_f").get(0);
								vo.setR_Content(r_Content.text());
							}catch(Exception ex) {vo.setR_Content("����");}
							
							//���� ���ƿ� ����
							try {
								r_Good = doc2.select("dl.btnGood span").get(0);
								vo.setR_Good(r_Good.text());
							}catch(Exception ex) {}
							
							//���� �¼� ����
							try {
								r_Seat_Room = doc2.select("ul.tableLR dd").get(0);
								String[] temp2 = r_Seat_Room.text().split("/");						
								vo.setR_Seat(temp2[0].trim());
							}catch(Exception ex) {
								vo.setR_Seat("����");
							}
							//���� �� ����
							try {
								r_Seat_Room = doc2.select("ul.tableLR dd").get(0);
								String[] temp2 = r_Seat_Room.text().split("/");	
								vo.setR_Room(temp2[1].trim());			
							}catch(Exception ex) {
								vo.setR_Room("��: �����");
							}
							///////////////////////
							vo.setR_Drink("����");
							vo.setR_Nosmoking("����");
							vo.setR_Reserve("����");
							vo.setR_Restroom("����");
							vo.setR_Park("����");
							vo.setR_Other("����");
							vo.setR_Delivery("����");
							//////////////////////
							for(int count = 1 ; count < 9 ; count++)
							{
								try 
								{
									
									if (doc2.select("ul.tableLR dt").get(count).text().equals("�ַ��Ǹ�")) 
										vo.setR_Drink(doc2.select("ul.tableLR dd").get(count).text());
									
									else if(doc2.select("ul.tableLR dt").get(count).text().equals("�ݿ���"))
										vo.setR_Nosmoking(doc2.select("ul.tableLR dd").get(count).text());
									
									else if (doc2.select("ul.tableLR dt").get(count).text().equals("��������")) 
										vo.setR_Reserve(doc2.select("ul.tableLR dd").get(count).text());
										
									else if (doc2.select("ul.tableLR dt").get(count).text().equals("ȭ���")) 
										vo.setR_Restroom(doc2.select("ul.tableLR dd").get(count).text());
										
									else if (doc2.select("ul.tableLR dt").get(count).text().equals("����")) 
										vo.setR_Park(doc2.select("ul.tableLR dd").get(count).text());
									
									else if (doc2.select("ul.tableLR dt").get(count).text().equals("��Ÿ�ü�")) 
										vo.setR_Other(doc2.select("ul.tableLR dd").get(count).text());
											
									else if (doc2.select("ul.tableLR dt").get(count).text().equals("���/����")) 
										vo.setR_Delivery(doc2.select("ul.tableLR dd").get(count).text());
								}catch(Exception ex){break;}
							}	
							//���� �湮�ڼ���
							try {
								
								r_hit = doc2.select("dl.visitor dd").get(0);
								vo.setR_hit(r_hit.text().substring(0,(r_hit.text().length()-1)));						
							}catch(Exception ex) {vo.setR_hit("0");}
							//Ȩ������ ó�� ������ ��¥
							try {
								r_Start = doc2.select("dl.visitor dd").get(1);
								vo.setR_Start(r_Start.text().substring(0,(r_Start.text().indexOf("��"))));
							//�ʱⰪ�� 2014.01.01�� ��
							}catch(Exception ex) {vo.setR_Start("2014.01.01");}
							///////////////////// ���� �ʿ�
							
							String[] area = {"���� ����|ss","���� ����|sn","��� ����|cs","��� �Ϻ�|cn","��õ|ic","�λ�|bs","�뱸|dg","����|gj","����|dj","���|us","����|gw","��û|cc","���|gs","����|jl","����|jj"};

						
							for(int count = 0 ; count < area.length ; count++)
							{
						
								if(area[count].substring(area[count].indexOf("|")+1).equals(ac.get(i).getA_AreaCode().substring(0,2)))
									vo.setR_Area(area[count].substring(0,area[count].indexOf("|")));
							}
				

							for(int count = 0 ; count < ac.size(); count++)	
							{
								if(ac.get(count).getR_Area().equals(vo.getR_Area()))
								{
									
									vo.setR_AreaDetail(ac.get(count + (Integer.parseInt(ac.get(i).getA_AreaCode().substring(3))) -1).getR_AreaDetail());
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
