// i,j,z 증가안함 ==> 수정해야 
package com.sist.manager;
import java.util.ArrayList;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

import com.sist.dao.*;
import com.sist.vo.*;

public class ReserveInfoManager {
	
	ReserveInfoDAO dao = new ReserveInfoDAO();
	
	public ArrayList<ReserveInfoVO> ReserveInfoData(ArrayList<AreacodeVO> areacode)
	{
		/*dao.ReserveInfoCreate();*/
		
		ReserveInfoVO vo;
		ArrayList<ReserveInfoVO> list = new  ArrayList<ReserveInfoVO>();
		
		ArrayList<AreacodeVO> ac = areacode;
		int page = 2;
		int category = 25;
		
		Element rNo;
		Element rPrice;	// r_Lowprice, r_Highprice 합친 것 
		Element rBusinesstime; // r_Opentime, r_Closetime 합친 것 
		Element rReserve;
		Element rHoliday;
		Element rSeat_Room; // r_Seat, r_Room 합친 것 	
		
		// System.out.println("현재 카테고리 번호 : "+ (z+1)  + ",현재페이지번호 : " + (j+1) +",현재지역번호 : "+(i+1));
		// i < ac.size()로 변경
		for(int i=0; i<2; i++)
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
							
							int count=0;
							while(true)
							{
								try
								{
									vo = new ReserveInfoVO();
									
									// 1. rNo 가게 고유번호
									vo.setRNo(z + j*category + i*page*category);

									// 2. rLowprice 추천가격대(높음)						
									try {
										rPrice = doc2.select("p.price strong").get(0);
										vo.setRLowprice(rPrice.text());
									}catch(Exception ex) {vo.setRLowprice("없음");}
									
									// 3. rHighprice 추천가격대(낮음)
									try {
										rPrice = doc2.select("p.price strong").get(1);
										vo.setRHighprice(rPrice.text());								
									}catch(Exception ex) {vo.setRHighprice("없음");}	
									
									// 4. rOpentime 가게 오픈시간
									// 5. rClosetime 가게 닫는시간			
									try {
										rBusinesstime = doc2.select("ul.tableTopA dd.txt2").get(0);
										vo.setROpentime(rBusinesstime.text().substring(0,rBusinesstime.text().indexOf("~")).trim());		
										vo.setRClosetime(rBusinesstime.text().substring(rBusinesstime.text().indexOf("~")+1).trim().substring(0,5));
									}catch(Exception ex) 
									{
										vo.setROpentime("없음");
										vo.setRClosetime("없음");
									}	
									
									// 7. rHoliday 가게 쉬는날
									try {
									rHoliday = doc2.select("ul.tableTopA dd.txt1").get(0);
									vo.setRHoliday(rHoliday.text());
									}catch(Exception ex) {
										vo.setRHoliday("없음");}
									
									// 8. rSeat 가게 좌석 갯수
									try {
										rSeat_Room = doc2.select("ul.tableLR dd").get(0);
										String[] temp2 = rSeat_Room.text().split("/");						
										vo.setRSeat(temp2[0].trim());
									}catch(Exception ex) {
										vo.setRSeat("없음");
									}
									// 9. rRoom 가게 방 갯수 - String을 int로 변경 
									try {
										rSeat_Room = doc2.select("ul.tableLR dd").get(0);
										String[] temp2 = rSeat_Room.text().split("/");	
										vo.setRRoom(Integer.parseInt(temp2[1].trim()));			
									}catch(Exception ex) {
										vo.setRRoom(0);
									}
									
									// 6. rReserve 예약정보
									vo.setRReserve("없음");
									for(int cnt=1; cnt<9 ; cnt++)
									{
										try 
										{
											if (doc2.select("ul.tableLR dt").get(cnt).text().equals("예약정보")) 
												vo.setRReserve(doc2.select("ul.tableLR dd").get(cnt).text().substring(0,3));
										}catch(Exception ex){break;}
									}	
											
									// Check 
									System.out.println("현재 카테고리 번호:"+ (z+1)  + ", 현재페이지번호:" + (j+1) +", 현재지역번호:"+(i+1));
									System.out.println("rNo="+vo.getRNo()
														+", rLowprice="+vo.getRLowprice()
														+", rHighprice="+vo.getRHighprice()
														+", rOpentime="+vo.getROpentime()
														+", rClosetime="+vo.getRClosetime()
														+", rReserve="+vo.getRReserve()
														+", rHoliday="+vo.getRHoliday()
														+", rSeat="+vo.getRSeat()
														+", rRoom="+vo.getRRoom());
									
									// 넣는 부분								
									dao.ReserveInfoInsert(vo);
									Thread.sleep(1000);
									count++;
									break;
									
								}catch(Exception ex) {break;}	
								
							}
						}
						
				}catch(Exception ex) {ex.printStackTrace();}
			}
		}
		
		return list;
	}
	
	public static void main(String[] args) {

		ReserveInfoManager rim = new ReserveInfoManager();
		AreacodeManager am = new AreacodeManager();
		rim.ReserveInfoData(am.AreacodeAllData());		

		System.out.println("========================= END =========================");
		
	}
	
	
	
}
