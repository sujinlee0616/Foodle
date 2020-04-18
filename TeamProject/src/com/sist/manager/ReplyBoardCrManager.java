package com.sist.manager;

import java.util.*;

import org.jsoup.Jsoup;
import org.jsoup.nodes.*;
import org.jsoup.select.Elements;
import com.sist.dao.ReplyBoardCrDAO;
import com.sist.service.vo.ReplyBoardVO;

public class ReplyBoardCrManager {

	ReplyBoardCrDAO dao=ReplyBoardCrDAO.newInstance();
	
	// 페이지마다 각 게시물의 링크를 가져오고, 해당 상세페이지 링크로 들어가서 상세페이지 내의 정보 크롤링. 
	public ArrayList<ReplyBoardVO> ReplyBoardCrData()
	{
		ArrayList<ReplyBoardVO> list = new ArrayList<ReplyBoardVO>();
		int k=1;
		
		try 
		{
			for(int i=1;i<=38;i++) //총 38페이지
			{
				Document doc=Jsoup.connect("https://redtea.kr/pb/pb.php?id=taste&page="+i).get();
				Elements link=doc.select("table.list tr.listtr td.tdsub a"); // <a href="pb.php?id=taste&amp;no=995"> 이런식으로 되어있음
				
				for(int j=0;j<link.size();j++) //10바퀴 돈다. 
				{
					try 
					{
						// 1) 상세페이지 url 가져옴
						String url="https://redtea.kr/pb/"+link.get(j).attr("href");
						
						// 2) 상세화면에 나오는 정보들 가져옴
						Document doc2=Jsoup.connect(url).get();
						
						Element date=doc2.select("table.viewTable tbody tr td").get(1);
						Element name=doc2.selectFirst("table.viewTable td#view_writer span.is-nick");
						Element subject=doc2.selectFirst("table.viewTable td.article-subject");
						Element content=doc2.selectFirst("table.viewTable td.noborder div.articleArea");

						//  Data check
						System.out.println("k="+k+", bno=k+32="+(k+32)+", i="+i+", j="+j);
						System.out.println(date.text());
						System.out.println(name.text());
						System.out.println(subject.text());
						System.out.println(content.text());
						System.out.println("=================================================");
						
						// DB에 넣는다 
						ReplyBoardVO vo=new ReplyBoardVO();
						vo.setBno(k+32);
						vo.setBname(name.text());
						vo.setBsubject(subject.text());
						vo.setBcontent(content.text());
						vo.setGroup_id(k+32);
						
						dao.crDataInsert(vo);
						k++;
					} 
					catch (Exception ex) {
						ex.printStackTrace();
					}
					
				} 
			}
			System.out.println("End!!!!");
		}
		catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
		
		return list;
	}
	
	
	public static void main(String[] args) {
		
		ReplyBoardCrManager rbcm = new ReplyBoardCrManager();
		
		// 데이터 삽입
		rbcm.ReplyBoardCrData();
		
	}

}
