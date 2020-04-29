package com.sist.service.dao;

import java.util.*;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.vo.*;
//2020 04 16 test 깃
public class ThemaListDAO {

		private static SqlSessionFactory ssf;
		
		static{
			
			//파싱하여 데이터저장해놓는 ssf
			ssf=CreateSQLSessionFactory.getSsf();
		}
		
		
		public static List<MainThemaVO> cateSelectData(String fd){
			
			SqlSession session=null;
			
			List<MainThemaVO> list=new ArrayList<MainThemaVO>();
			
			try{
				
				session=ssf.openSession(); //getConnect!
				
				Map map=new HashMap();
				map.put("fd",fd);
				
				list=session.selectList("cateSelectData",map);
					
			}
			catch(Exception ex)
			{	
				System.out.println("cateSelectData(): "+ex.getMessage());	
			}
			finally
			{	
				if(session!=null)
					session.close();
			}
			return list;	
		}
		
	/*	
		public static List<MainThemaVO> countBigThema()
		{
			SqlSession session=null;
			List<MainThemaVO> list=new ArrayList<MainThemaVO>();
			
			try{
				
				session=ssf.openSession();
				list=session.selectList("countBigThema");	
				
			}catch(Exception ex)
			{
				System.out.println("countBigThema(): "+ex.getMessage());
				
			}finally
			{
				if(session!=null)
					session.close();
			}
			return list;	
		}
		
		*/
	/*	
		
		//작은 카테고 창 띄우기 위함!!
		public static List<DetailThemaVO> showMoreCate()
		{
			SqlSession session=null;
			List<DetailThemaVO> blist=new ArrayList<DetailThemaVO>();
			try{
				
				session=ssf.openSession();
				
				blist=session.selectList("showMoreCate");
				
				
			}catch(Exception ex)
			{
				System.out.println("showMoreCate()"+ ex.getMessage());
				
			}finally{
				
				if(session!=null)
					session.close();
				
			}
			return blist;
	
		}
		
		
		*/
		
	/*	
		public static List<MainThemaVO> catefindData1(String fo)
		{
			SqlSession session=null;
			List<MainThemaVO> list1=new ArrayList<MainThemaVO>();
			
			try{
				session=ssf.openSession();
				
				Map map=new HashMap();
				map.put("fo", fo);
				
				list1=session.selectList("catefindData1", map);
				
				
			}catch(Exception ex)
			{
				System.out.println("catefindData1(): "+ex.getMessage());
				
			}finally
			{
				if(session!=null)
					session.close();
				
			}
			return list1;
		}
		*/
		
		
		

		public static List<NearbyVO> searchThema(Map ft){
			
			SqlSession session=null;
			
			List<NearbyVO> slist=new ArrayList<NearbyVO>();
			
			try{
				
				session=ssf.openSession(); //getConnect!
				
				//Map map=new HashMap();
				//map.put("ft",ft);
				//System.out.println("map: "+map);
				slist=session.selectList("searchThema",ft);
				
				System.out.println("slist from DAO: "+slist.toString());
				
			}
			catch(Exception ex)
			{	
				System.out.println("searchThema(): "+ex.getMessage());	
			}
			finally
			{	
				if(session!=null)
					session.close();
			}
			return slist;	
		}
		
		
		public static int searchThemaTotalPage(String detailThema_col) {
			int count=0;
			SqlSession session=null;
			try {
				session=ssf.openSession();
				count=session.selectOne("searchThemaTotalPage", detailThema_col);
			} catch(Exception ex) {
				System.out.println("searchThemaTotalPage(): "+ex.getMessage());	
			} finally {
				if(session!=null)
					session.close();
			}
			return count;
		}
		
		

	
}
