package com.sist.service.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import java.util.*;
import com.sist.vo.*;

public class SearchDAO {
	private static SqlSessionFactory ssf;
	static
	{
		ssf=CreateSQLSessionFactory.getSsf();
	}
	
	public static List<MainInfoVO> searchListData(Map map)
	{
		SqlSession session=null;
		List<MainInfoVO> list=new ArrayList<MainInfoVO>();
		
		try {
			session=ssf.openSession();
			list=session.selectList("searchListData",map);
		} catch (Exception e) {
			System.out.println("searchListData: "+e.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		
		return list;
	}
	
	public static int searchTotalPage(Map map)
	{
		SqlSession session=null;
		int total=0;
		
		try {
			session=ssf.openSession();
			total=session.selectOne("searchTotalPage",map); // 얘는 mapper의 id명칭이다 메소드명이 아님!!
		} catch (Exception e) {
			System.out.println("searchTotalPage: "+e.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		
		return total;
	}
	
	public static int searchTotalCount(Map map)
	{
		SqlSession session=null;
		int total=0;
		
		try {
			session=ssf.openSession();
			total=session.selectOne("searchTotalCount",map);
		} catch (Exception e) {
			System.out.println("searchTotalCount: "+e.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		
		return total;
	}
	
}
