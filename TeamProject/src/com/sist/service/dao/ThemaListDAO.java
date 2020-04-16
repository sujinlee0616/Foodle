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
		
		//small 카테고리 count하기위함!
		public static int smallThemaCount(String ff)
		{
			SqlSession session =null;
			int count=0;
			
			try{
				
				session=ssf.openSession();
				
				Map map=new HashMap();
				map.put("ff", ff);
				
				count=session.selectOne("smallThemaCount",ff);
				
				
			}catch(Exception ex)
			{
				System.out.println("smallThemaCount(): "+ex.getMessage());
				
			}finally
			{
				if(session!=null)
					session.close();
				
			}
			return count;
			
		}
		
		
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
		
		
		
		
		

	
}
