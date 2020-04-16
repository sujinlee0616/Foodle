package com.sist.service.dao;

import java.util.ArrayList;
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
	
	public static List<ReservationVO> mypageReserveList(String userid)
	{
		List<ReservationVO> list = new ArrayList<ReservationVO>();
		SqlSession session=null;
		
		try 
		{
			session=ssf.openSession();
			if(userid!=null)
				list = session.selectList("mypageRerveList",userid);
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
	public static List<CouponVO> mypageCouponList(String userid)
	{
		List<CouponVO> list = new ArrayList<CouponVO>();
		SqlSession session=null;
		
		try 
		{
			session=ssf.openSession();
			if(userid!=null)
				list = session.selectList("mypageCouponList",userid);
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
	public static List<ReviewVO> mypageReviewList(String userid)
	{
		List<ReviewVO> list = new ArrayList<ReviewVO>();
		SqlSession session=null;
		
		try 
		{
			session=ssf.openSession();
			if(userid!=null)
			{

				list = session.selectList("mypageReviewList",userid);
				
				for(int i = 0 ; i < list.size() ; i++)
				{
					String temp = list.get(i).getRevcontent();
					if(temp.length() > 10)
						temp = temp.substring(0,10) + "...";
					
					list.get(i).setRevcontent(temp);
				}
			}
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
}


