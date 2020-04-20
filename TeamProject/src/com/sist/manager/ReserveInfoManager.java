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
		// 테이블 생성 
		// dao.ReserveInfoCreate();
		
		ReserveInfoVO vo;
		ArrayList<ReserveInfoVO> list = new  ArrayList<ReserveInfoVO>();
		
		ArrayList<AreacodeVO> ac = areacode;
		int page = 20;
		int category = 25;
		
		Element rNo;
		Element rPrice;	// r_Lowprice, r_Highprice 합친 것 
		Element r_Lowprice;
		Element r_Highprice;
		Element rBusinesstime; // r_Opentime, r_Closetime 합친 것 
		Element rReserve;
		Element rHoliday;
		Element rSeat_Room; // r_Seat, r_Room 합친 것 	
		
		int count=1;
		// System.out.println("현재 카테고리 번호 : "+ (z+1)  + ",현재페이지번호 : " + (j+1) +",현재지역번호 : "+(i+1));
		// i < ac.size()로 변경
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
							
							
							while(true)
							{
								try
								{
									vo = new ReserveInfoVO();
									
									// 1. rNo 가게 고유번호
									vo.setrNo(z + j*category + i*page*category);

									// 2. rLowprice 추천가격대(높음)						
									try {
										r_Lowprice = doc2.select("p.price strong").get(0);
										vo.setrLowprice(Integer.parseInt(r_Lowprice.text().replace(",", "")));
										//rPrice = doc2.select("p.price strong").get(0);
										//vo.setrLowprice(Integer.parseInt(rPrice.text().replace(",", "")));		
										
									}catch(Exception ex) {vo.setrLowprice(0);}
									
									// 3. rHighprice 추천가격대(낮음)
									try {
										r_Highprice = doc2.select("p.price strong").get(1);
										vo.setrHighprice(Integer.parseInt(r_Highprice.text().replace(",", "")));
										//rPrice = doc2.select("p.price strong").get(1);
										//vo.setrHighprice(Integer.parseInt(rPrice.text().replace(",", "")));
										
									}catch(Exception ex) {vo.setrHighprice(0);}	
									
									// 4. rOpentime 가게 오픈시간
									// 5. rClosetime 가게 닫는시간			
									try {
										rBusinesstime = doc2.select("ul.tableTopA dd.txt2").get(0);
										int opt=Integer.parseInt(rBusinesstime.text().substring(0,rBusinesstime.text().indexOf("~")).trim().substring(0,2));
										// System.out.println(temp1);
										int clst=Integer.parseInt(rBusinesstime.text().substring(rBusinesstime.text().indexOf("~")+1).trim().substring(0,2));
										// System.out.println(temp2);
										vo.setrOpentime(opt);		
										vo.setrClosetime(clst);
									}catch(Exception ex) 
									{
										vo.setrOpentime(9);
										vo.setrClosetime(18);
									}	
									
									// 7. rHoliday 가게 쉬는날
									try {
										// rHoliday = doc2.select("ul.tableTopA dd.txt1").get(0);
										// vo.setRHoliday(rHoliday.text());
										String hol;
										int rand=(int)(Math.random()*7); // 0~6 난수
										switch (rand) {
											case 0:  hol = "일";
													 break;
								            case 1:  hol = "월";
								                     break;
								            case 2:  hol = "화";
								                     break;
								            case 3:  hol = "수";
								                     break;
								            case 4:  hol = "목";
								                     break;
								            case 5:  hol = "금";
								                     break;
								            case 6:  hol = "토";
								                     break;
								            default: hol = "일";
								                     break;
										}
										vo.setrHoliday(hol);
										
									}catch(Exception ex) {
										vo.setrHoliday("없음");}
									
									// 8. rSeat 가게 좌석 갯수
									try {
										rSeat_Room = doc2.select("ul.tableLR dd").get(0);
										String[] temp2 = rSeat_Room.text().split("/");			
										vo.setrSeat(Integer.parseInt(temp2[0].trim().substring(0,temp2[0].indexOf("석"))));
									}catch(Exception ex) {
										vo.setrSeat(0);
									}
									// 9. rRoom 가게 방 갯수  
									try {
										rSeat_Room = doc2.select("ul.tableLR dd").get(0);
										String[] temp2 = rSeat_Room.text().split("/");	
										int roomNum=Integer.parseInt(temp2[1].trim().substring(3,temp2[1].indexOf("개")-1));
										vo.setrRoom(roomNum);		
									}catch(Exception ex) {
										vo.setrRoom(0);
									}
									
									// 10. rRoomcount - 랜덤값 5~10 
									try
									{
										int rand=(int)(Math.random()*6 + 5);
										vo.setrRoomcount(rand);
									}catch(Exception ex){
										vo.setrRoomcount(5);
									}
									
									
									// 6. rReserve 예약정보
									vo.setrReserve("없음");
									for(int cnt=1; cnt<9 ; cnt++)
									{
										try 
										{
											if (doc2.select("ul.tableLR dt").get(cnt).text().equals("예약정보")) 
												vo.setrReserve(doc2.select("ul.tableLR dd").get(cnt).text().substring(0,3));
										}catch(Exception ex){break;}
									}	
											
									// Data Check 
									/*System.out.println("현재 카테고리 번호:"+ (z+1)  + ", 현재페이지번호:" + (j+1) +", 현재지역번호:"+(i+1));
									System.out.println("rNo="+vo.getrNo()
														+", rLowprice="+vo.getrLowprice()
														+", rHighprice="+vo.getrHighprice()
														+", rOpentime="+vo.getrOpentime()
														+", rClosetime="+vo.getrClosetime()
														+", rReserve="+vo.getrReserve()
														+", rHoliday="+vo.getrHoliday()
														+", rSeat="+vo.getrSeat()
														+", rRoom="+vo.getrRoom()
														+", rRoomcount="+vo.getrRoomcount());*/
									
									// 넣는 부분								
									dao.ReserveInfoInsert(vo);
									Thread.sleep(100);
									System.out.println("Reserveinfo Count: "+count);
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
