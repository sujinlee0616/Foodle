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
	
	// MainInfo
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
	
	// SubInfo
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
	
	// ReserveInfo
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
	
	// Menu
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
	
	// Image
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
	
	// 찜 되어있는지 체크
	public static int myWishCheck(Map map) {
		int count=0;
		SqlSession session=null;
		try {
			session=ssf.openSession();
			count=session.selectOne("myWishCheck",map);
		} catch(Exception ex) {
			System.out.println("myWishCheck(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		return count;
	}
	
	// 찜 추가 or 삭제
	public static String myWishInsert(Map map) {
		String result="";
		SqlSession session=null;
		try {
			session=ssf.openSession();
			int count=session.selectOne("myWishCheck", map);
			if(count>0) { // 이미 찜 되어있으면 삭제
				session.delete("myWishDelete",map);
				session.commit();
				result="myWishDelete";
			}
			else { // 찜
				session.insert("myWishInsert", map);
				session.commit();
				result="myWishInsert";
			}
		} catch(Exception ex) {
			System.out.println("myWishInsert(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		return result;
	}
		
		
	/*// 찜 리스트
	public static List<MyWishVO> myWishList(String id) {
		List<MyWishVO> list=new ArrayList<MyWishVO>();
		SqlSession session=null;
		try {
			session=ssf.openSession();
			list=session.selectList("myWishList",id);
		} catch(Exception ex) {
			System.out.println("myWishList(): "+ex.getMessage());
		} finally {
			if(session!=null) 
				session.close();
		}
		return list;
	}*/
	
}
