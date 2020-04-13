package com.sist.service.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.service.vo.CouponVO;
import com.sist.service.vo.MemberVO;
import com.sist.service.vo.ReplyBoardVO;
import com.sist.service.vo.ReservationVO;
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
}


