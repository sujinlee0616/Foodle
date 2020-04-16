package com.sist.service.dao;

import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.vo.*;

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
		
		
		
		
		
		

	
}
