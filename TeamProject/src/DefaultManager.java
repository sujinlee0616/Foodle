
//굿굿b 아주 잘했어요 b (박수) 
import java.util.*;


import com.sist.manager.*;
import com.sist.vo.*;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;


public class DefaultManager {

	public ArrayList<InfoVO> AllData(ArrayList<AreacodeVO> areacode) {
		
		//각파트의 vo
		//ImageVO vo = new ImageVO();
		ArrayList<InfoVO> list = new  ArrayList<InfoVO>();
		
		
		ArrayList<AreacodeVO> ac = areacode;
		int page = 2;
		int kategorie = 3;
		
		Element image;
		Element image_Name;
		Element main_Name;
		
//		System.out.println("현재 카테고리 번호 : "+ (z+1)  + ",현재페이지번호 : " + (j+1) +",현재지역번호 : "+(i+1));
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
						
						System.out.println("mno : "+((z) + ((j)*kategorie) + ((i)*(page*kategorie))));
						System.out.println("현재지역코드 : " + ac.get(i).getA_AreaCode()+ ",현재지역 : "+ ac.get(i).getR_Area()+",현재 상세 지역 : "+ac.get(i).getR_AreaDetail());
						System.out.println("현재 카테고리 번호 : "+ (z+1)  + ",현재페이지번호 : " + (j+1) +",현재지역번호 : "+(i+1));
						
						//이미지 파싱
						while (true) {
							try {
								break;
							} catch (Exception ex) {
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
	
		DefaultManager a = new DefaultManager();
		AreacodeManager b = new AreacodeManager();
		a.AllData(b.AreacodeAllData());
	}
}