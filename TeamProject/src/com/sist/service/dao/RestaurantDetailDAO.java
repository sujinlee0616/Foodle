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
	
	// 리뷰
	public static List<ReviewVO> reviewData(Map map) {
		List<ReviewVO> list=new ArrayList<ReviewVO>();
		SqlSession session=null;
		try {
			session=ssf.openSession();
			list=session.selectList("reviewData", map);
		} catch(Exception ex) {
			System.out.println("reviewData(): "+ex.getMessage());
		} finally {
			if(session!=null) {
				session.close();
			}
		}
		return list;
	}
		
	// 리뷰 개수
	public static int reviewTotalCount(int rno) {
		int count=0;
		SqlSession session=null;
		try {
			session=ssf.openSession();
			count=session.selectOne("reviewTotalCount", rno);
		} catch(Exception ex) {
			System.out.println("reviewTotalCount(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		return count;
	}
		
	// 리뷰 총 페이지
	public static int reviewTotalPage(int rno) {
		int totalpage=0;
		SqlSession session=null;
		try {
			session=ssf.openSession();
			totalpage=session.selectOne("reviewTotalPage", rno);
		} catch(Exception ex) {
			System.out.println("reviewTotalPage(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		return totalpage;
	}
	
	// 리뷰 평점 평균 
	public static double reviewScoreAvg(int rno) {
		double scoreAvg=0.0;
		SqlSession session=null;
		try {
			session=ssf.openSession();
			scoreAvg=session.selectOne("reviewScoreAvg", rno);
		} catch(Exception ex) {
			System.out.println("reviewScoreAvg(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		return scoreAvg;
	}
	
	// 해당 날짜의 예약 가능 시간(번호) (ex. 1,3,4,5,8,9,...)
	public static String reserveTimeData(int tno) {
		String result="";
		SqlSession session=null;
		try {
			session=ssf.openSession();
			result=session.selectOne("reserveTimeData", tno);
		} catch(Exception ex) {
			System.out.println("reserveTimeData(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		return result;
	}
	
	// 해당 번호의 시간  (ex. 1=>08:00)
	public static String reserveTimeData2(int tno) {
		String result="";
		SqlSession session=null;
		try {
			session=ssf.openSession();
			result=session.selectOne("reserveTimeData2", tno);
		} catch(Exception ex) {
			System.out.println("reserveTimeData2(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		return result;
	}
	
	// 예약 insert
	public static void reserveInsert(Map map) {
		SqlSession session=null;
		try {
			session=ssf.openSession(true);
			session.insert("reserveInsert", map);
		} catch(Exception ex) {
			System.out.println("reserveInsert(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
	}
	
	// 예약 - 사용가능한 쿠폰 
	public static List<CouponVO> reserveCouponData(Map map) {
		List<CouponVO> list=new ArrayList<CouponVO>();
		SqlSession session=null;
		try {
			session=ssf.openSession();
			list=session.selectList("reserveCouponData", map);
		} catch(Exception ex) {
			System.out.println("reserveCouponData(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
		return list;
	}
	
	// 사용한 쿠폰 삭제
	public static void reserveCouponDelete(Map map) {
		SqlSession session=null;
		try {
			session=ssf.openSession(true);
			session.delete("reserveCouponDelete", map);
		} catch(Exception ex) {
			System.out.println("reserveCouponDelete(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
	}
}
