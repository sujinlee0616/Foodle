package com.sist.service.dao;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.service.vo.CouponVO;
import com.sist.service.vo.MemberVO;
import com.sist.service.vo.MyWishVO;
import com.sist.service.vo.ReplyBoardVO;
import com.sist.service.vo.ReservationVO;
import com.sist.service.vo.ReviewVO;
import com.sist.vo.*;

public class MypageDAO {
	
	private static SqlSessionFactory ssf;
	static
	{
		ssf=CreateSQLSessionFactory.getSsf();
	}
	
	public static List<CouponVO> mypageCouponList(Map map)
	{
		List<CouponVO> list = new ArrayList<CouponVO>();
		SqlSession session=null;		
		try 
		{
			session=ssf.openSession();
				
			if(map.get("userid")!=null)
				list = session.selectList("mypageCouponList",map);
			
			
		} 
		catch (Exception ex) {
			System.out.println("memberLogin: "+ex.getMessage());
		}
		finally {
			if(session!=null)
				session.close(); 
		}
		
		return list;
	}
	public static List<CouponVO> mypageCouponSearch(Map map)
	{
		List<CouponVO> list = new ArrayList<CouponVO>();
		SqlSession session=null;		
		try 
		{
			session=ssf.openSession();
				
			if(map.get("userid")!=null)
				list = session.selectList("mypageCouponSearch",map);
			
		} 
		catch (Exception ex) {
			System.out.println("memberLogin: "+ex.getMessage());
		}
		finally {
			if(session!=null)
				session.close(); 
		}
		
		return list;
	}
	
	
	public static List<CouponVO> mypageCouponSearchList(Map map)
	{
		List<CouponVO> list = new ArrayList<CouponVO>();
		SqlSession session=null;		
		try 
		{
			session=ssf.openSession();
				
			if(map.get("userid")!=null)
				list = session.selectList("mypageCouponSearchList",map);
			
		} 
		catch (Exception ex) {
			System.out.println("memberLogin: "+ex.getMessage());
		}
		finally {
			if(session!=null)
				session.close(); 
		}
		
		return list;
	}
	public static int mypageCouponTotalPage() {
		int total=0;
		SqlSession session=null;
		try {
			session=ssf.openSession();
			total=session.selectOne("mypageCouponTotalPage");
		} catch(Exception ex) {
			System.out.println("replyTotalPage(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		return total;
	}
	public static int mypageReserveTotalPage() {
		int total=0;
		SqlSession session=null;
		try {
			session=ssf.openSession();
			total=session.selectOne("mypageReserveTotalPage");
		} catch(Exception ex) {
			System.out.println("replyTotalPage(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		return total;
	}
	
	
	public static List<ReservationVO> mypageReserveList(Map map)
	{
		List<ReservationVO> list = new ArrayList<ReservationVO>();
		SqlSession session=null;
		
		try 
		{
			session=ssf.openSession();
			if(map.get("userid")!=null)
				list = session.selectList("mypageReserveList",map);
				
			
		} 
		catch (Exception ex) {
			System.out.println("memberLogin: "+ex.getMessage());
		}
		finally {
			if(session!=null)
				session.close(); 
		}
		
		return list;
	}
	
	
	public static List<ReviewVO> mypageReviewList(Map map)
	{
		List<ReviewVO> list = new ArrayList<ReviewVO>();
		SqlSession session=null;
		
		try 
		{
			session=ssf.openSession();
			if(map.get("userid")!=null)
				list = session.selectList("mypageReviewList",map);
				
			
		} 
		catch (Exception ex) {
			System.out.println("memberLogin: "+ex.getMessage());
		}
		finally {
			if(session!=null)
				session.close(); 
		}
		
		return list;
	}
	public static List<ReviewVO> mypageReviewRangeList(Map map)
	{
		List<ReviewVO> list = new ArrayList<ReviewVO>();
		SqlSession session=null;
		
		try 
		{
			session=ssf.openSession();
			if(map.get("userid")!=null)
				list = session.selectList("mypageReviewRangeList",map);
	
		
				
			
		} 
		catch (Exception ex) {
			System.out.println("memberLogin: "+ex.getMessage());
		}
		finally {
			if(session!=null)
				session.close(); 
		}
		
		return list;
	}
	
	
	public static int mypageReviewTotalPage() {
		int total=0;
		SqlSession session=null;
		try {
			session=ssf.openSession();
			total=session.selectOne("mypageReviewTotalPage");
		} catch(Exception ex) {
			System.out.println("replyTotalPage(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		return total;
	}
	
	public static MemberVO mypage_infoupdate_check(String pwd,String id)
	{
		MemberVO vo = new MemberVO();
		SqlSession session=null;
		
		try 
		{
			session=ssf.openSession();
			vo = session.selectOne("mypageInfoupdateDetail",id);
			
			if(vo.getUpwd().equals(pwd))
			{
				vo.setMsg("OK");
			}
			else
			{
				vo.setMsg("NO");
			}
			
		} 
		catch (Exception ex) {
			System.out.println("memberLogin: "+ex.getMessage());
		}
		finally {
			if(session!=null)
				session.close(); 
		}
		
		return vo;
	}
	public static void mypage_infoupdate_ok(MemberVO vo)
	{
		 
		SqlSession session=null;
		
		try 
		{
			
			session=ssf.openSession(true);
			
			
			session.update("mypageInfoupdate",vo);
			
		
		} 
		catch (Exception ex) {
			System.out.println("memberLogin: "+ex.getMessage());
		}
		finally {
			if(session!=null)
				session.close(); 
		}
	}
	
	public static List<MyWishVO> mypageMyWishList(Map map)
	{
		List<MyWishVO> list = new ArrayList<MyWishVO>();
		SqlSession session=null;
		
		try 
		{
			session=ssf.openSession();
			if(map.get("userid")!=null)
			{			
				list = session.selectList("mypageMyWishList",map);		
			}
			System.out.println(list.size());
			/*
			System.out.println("1:+"+list.get(0).getRegdate());
			System.out.println("2:+"+list.get(0).getRNo());
			System.out.println("3:+"+list.get(0).getMvo().getrScore());
			System.out.println("4:+"+list.get(0).getMvo().getrTel());
			System.out.println("5:+"+list.get(0).getMvo().getrAddr1());
			System.out.println("6:+"+list.get(0).getMvo().getrName());
			System.out.println("7:+"+list.get(0).getMvo().getIvo().getiLink());
			*/
			
			
		} 
		catch (Exception ex) {
			System.out.println("memberLogin: "+ex.getMessage());
		}
		finally {
			if(session!=null)
				session.close(); 
		}
		
		return list;
	}	
	public static int mypageWishTotalPage() {
		int total=0;
		SqlSession session=null;
		try {
			session=ssf.openSession();
			total=session.selectOne("mypageWishTotalPage");
		} catch(Exception ex) {
			System.out.println("replyTotalPage(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		return total;
	}
	
}


