package com.sist.service.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.vo.MainInfoVO;

public class WeeklyDAO {
	private static SqlSessionFactory ssf;
	static
	{
		ssf=CreateSQLSessionFactory.getSsf();
	}
	
	public static List<MainInfoVO> weeklyListData(Map map)
	{
		SqlSession session=null;
		List<MainInfoVO> list=new ArrayList<MainInfoVO>();
		try {
			session=ssf.openSession();
			list=session.selectList("weeklyListData",map);
		} catch (Exception e) {
			System.out.println("weeklyListData: "+e.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		
		return list;
	}
	
	public static int weeklyTotalPage(Map map)
	{
		SqlSession session=null;
		int total=0;
		
		try {
			session=ssf.openSession();
			total=session.selectOne("weeklyTotalPage",map); // 얘는 mapper의 id명칭이다 메소드명이 아님!!
		} catch (Exception e) {
			System.out.println("weeklyTotalPage: "+e.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		
		return total;
	}
	
	public static int weeklyTotalCount(Map map)
	{
		SqlSession session=null;
		int total=0;
		
		try {
			session=ssf.openSession();
			total=session.selectOne("weeklyCount",map); // 얘는 mapper의 id명칭이다 메소드명이 아님!!
		} catch (Exception e) {
			System.out.println("weeklyTotalPage: "+e.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		
		return total;
	}
}
