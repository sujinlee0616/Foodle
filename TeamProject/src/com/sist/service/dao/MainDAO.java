package com.sist.service.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.vo.*;
import com.sist.service.vo.*;

public class MainDAO {
	private static SqlSessionFactory ssf;
	static
	{
		ssf=CreateSQLSessionFactory.getSsf();
	}
	
	// [mainImageData] - MyBatis 에러 잡기 쉽게 try~catch 절로 만들었음 
		public static List<MainInfoVO> weeklyTop30()
		{
			SqlSession session=null; // null 해줘야!
			List<MainInfoVO> list=new ArrayList<MainInfoVO>();
			
			try {
				session=ssf.openSession(); // 이전에 코딩했던 버젼의 getConnection에 해당함 
				list=session.selectList("weeklyTop30"); // 이전에 코딩했던 버젼의, preparedStautement에 SQL문 갖다놓는 것에 해당함
				// SQL문: main-mapper.xml의 id="weeklyTop30"인 SQL문.
			} catch (Exception ex) {
				System.out.println("weeklyTop30(): "+ex.getMessage());
			}
			finally {
				if(session!=null)
					session.close();
			}
			return list;
		}
		
		/*public static List<ImageVO> weeklyTop30img() {
			List<ImageVO> weekimglist=new ArrayList<ImageVO>();
			SqlSession session=null;
			try {
				session=ssf.openSession();
				weekimglist=session.selectList("weeklyTop30img");
			} catch(Exception ex) {
				System.out.println("weeklyTop30img(): "+ex.getMessage());
			} finally {
				if(session!=null)
					session.close();
			}
			
			return weekimglist;
		}*/
		
}
