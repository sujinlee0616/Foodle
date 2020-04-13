package com.sist.service.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.service.vo.*;
import com.sist.vo.*;
import java.util.*;

public class RestaurantDetailDAO {
	private static SqlSessionFactory ssf;
	static{
		ssf=CreateSQLSessionFactory.getSsf();
	}
	
	public static MainInfoVO resDetailMaininfo(int no) {
		MainInfoVO vo=new MainInfoVO();
		SqlSession session=null;
		try {
			session=ssf.openSession();
			vo=session.selectOne("resDetailMaininfo", no);
		} catch(Exception ex) {
			System.out.println("resDetailMaininfo(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		return vo;
	}
	
	public static SubinfoVO resDetailSubinfo(int no) {
		SubinfoVO vo=new SubinfoVO();
		SqlSession session=null;
		try {
			session=ssf.openSession();
			vo=session.selectOne("resDetailSubinfo", no);
		} catch(Exception ex) {
			System.out.println("resDetailSubinfo(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		return vo;
	}
	
	public static ReserveInfoVO resDetailReserveinfo(int no) {
		ReserveInfoVO vo=new ReserveInfoVO();
		SqlSession session=null;
		try {
			session=ssf.openSession();
			vo=session.selectOne("resDetailReserveinfo", no);
		} catch(Exception ex) {
			System.out.println("resDetailReserveinfo(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		return vo;
	}
	
	public static List<MenuVO> resDetailMenu(int no) {
		List<MenuVO> menuList=new ArrayList<MenuVO>();
		SqlSession session=null;
		try {
			session=ssf.openSession();
			menuList=session.selectList("resDetailMenu",no);
		} catch(Exception ex) {
			System.out.println("resDetailMenu(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		return menuList;
	}
	
	public static List<ImageVO> resDetailImage(int no) {
		List<ImageVO> list=new ArrayList<ImageVO>();
		SqlSession session=null;
		try {
			session=ssf.openSession();
			list=session.selectList("resDetailImage",no);
		} catch(Exception ex) {
			System.out.println("resDetailImage(): "+ex.getMessage());
		} finally {
			if(session!=null) 
				session.close();
		}
		return list;
	}
}
