package com.sist.service.dao;

import java.util.*;

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
	// 주간 맛집 Top30
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
		
	//인기 맛집 Top3
	public static List<MainInfoVO> popularTop3() {
		List<MainInfoVO> list=new ArrayList<MainInfoVO>();
		SqlSession session=null;
		try {
			session=ssf.openSession();
			list=session.selectList("popularTop3");
		} catch(Exception ex) {
			System.out.println("popularTop3(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		return list;
	}
	
	// 쿠키 (최근본)
	public static MainInfoVO cookieData(int rno) {
		MainInfoVO vo=new MainInfoVO();
		SqlSession session=null;
		try {
			session=ssf.openSession();
			vo=session.selectOne("cookieData", rno);
		} catch(Exception ex) {
			System.out.println("cookieData(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		return vo;
	}

	
}
