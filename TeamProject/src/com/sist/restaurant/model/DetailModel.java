package com.sist.restaurant.model;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.service.vo.*;
import com.sist.vo.*;
import com.sist.dao.*;
import com.sist.service.dao.*;


import java.text.SimpleDateFormat;
import java.util.*;

@Controller
public class DetailModel {
	@RequestMapping("restaurant/detail.do")
	public String restaurant_detail(HttpServletRequest request, HttpServletResponse response) {
		String no=request.getParameter("no");
		
		// DAO
		MainInfoVO mvo=RestaurantDetailDAO.resDetailMaininfo(Integer.parseInt(no));
		SubinfoVO svo=RestaurantDetailDAO.resDetailSubinfo(Integer.parseInt(no));
		ReserveInfoVO rvo=RestaurantDetailDAO.resDetailReserveinfo(Integer.parseInt(no));
		List<MenuVO> menuList=RestaurantDetailDAO.resDetailMenu(Integer.parseInt(no));
		List<ImageVO> imageList=RestaurantDetailDAO.resDetailImage(Integer.parseInt(no));
		
		// Detail 위쪽에 짧은 설명
		String strContent=svo.getrContent().substring(0, svo.getrContent().indexOf("다.")+2);
		
		// 찜
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		String myWish="";
		if(id==null) { // 로그인 X
			myWish="♡";
		}
		else { // 로그인 O
			Map map=new HashMap();
			map.put("id", id);
			map.put("rno",Integer.parseInt(no));
			
			int count=RestaurantDetailDAO.myWishCheck(map);
//			System.out.println("count="+count);
			if(count>0) { // 이미 찜이 되어있으면
				myWish="♥";
			}
			else {
				myWish="♡";
			}
		}
		
		// 쿠키 
		Cookie cookie=new Cookie("res"+no, no); // 쿠키생성
		cookie.setPath("/");
		cookie.setMaxAge(60*60*24); // 기간설정(하루)
		response.addCookie(cookie);
		
		// 쿠폰
		if(id!=null) {
			Map map=new HashMap();
			map.put("rno",Integer.parseInt(no));
			map.put("userid", id);
			List<CouponVO> cList=RestaurantDetailDAO.reserveCouponData(map);
			
			request.setAttribute("cList", cList);
		}
		
		
		request.setAttribute("mvo", mvo);
		request.setAttribute("svo", svo);
		request.setAttribute("rvo", rvo);
		request.setAttribute("menuList", menuList);
		request.setAttribute("imageList", imageList);
		request.setAttribute("strContent", strContent);
		request.setAttribute("myWish", myWish);
		
		
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../restaurant/detail.jsp");
		return "../main/main.jsp";
	}
	
	// 찜 ♡하트 눌렀을때
	@RequestMapping("restaurant/mywish.do")
	public String main_mywish(HttpServletRequest request, HttpServletResponse response) {
		String rno=request.getParameter("rno");
		String myWishResult="";
		
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
//		System.out.println("id="+id);
//		System.out.println("rno="+rno);
		
		// 로그인 X
		if(id==null) {
			myWishResult="NOLOGIN";
		}
		// 로그인 O
		else {
			Map map=new HashMap();
			map.put("id", id);
			map.put("rno",rno);
			myWishResult=RestaurantDetailDAO.myWishInsert(map); // myWishDelete or myWishInsert
		}
		request.setAttribute("myWishResult", myWishResult);
		return "../restaurant/mywish_result.jsp";
	}
	
	
	// =========================================== 예약 ===================================================

	// 예약일
	@RequestMapping("restaurant/detail_reservedate.do")
	public String restaurant_detail_reservedate(HttpServletRequest request, HttpServletResponse response) {
		
		String strYear=request.getParameter("year");
		String strMonth=request.getParameter("month");
		
		String reserve_date=request.getParameter("rdate");
		//System.out.println("reserve_date: "+reserve_date);
		
		String today=new SimpleDateFormat("yyyy-M-d").format(new Date());
		StringTokenizer st=new StringTokenizer(today,"-");
		
		String sy=st.nextToken();
		String sm=st.nextToken();
		String sd=st.nextToken();
		
		if(strYear==null)
			strYear=sy;
		if(strMonth==null)
			strMonth=sm;
		
		int year=Integer.parseInt(strYear);
		int month=Integer.parseInt(strMonth);
		int day=Integer.parseInt(sd);
		
		String[] strWeek={"일","월","화","수","목","금","토"};
		
		int total=(year-1)*365
				 +(year-1)/4
				 -(year-1)/100
				 +(year-1)/400;
		
		int[] lastDay={31,28,31,30,31,30,31,31,30,31,30,31};
		
		if((year%4==0 && year%100!=0)||(year%400==0)) 
			lastDay[1]=29;
		else
			lastDay[1]=28;
		
		// 전달까지의 합
		for(int i=0;i<month-1;i++)
			total+=lastDay[i];
		
		total++; // 1일
		
		int week=total%7; // 1일의 요일
		
		int[] days=new int[31];
		if(reserve_date!=null) {
			StringTokenizer st1=new StringTokenizer(reserve_date,",");
			while(st1.hasMoreTokens()) {
				int p=Integer.parseInt(st1.nextToken());
				if(Integer.parseInt(sy)==year && Integer.parseInt(sm)==month) {
					if(p>=day)
						days[p-1]=p;
				}
				else {
					days[p-1]=p;
				}
			}
		}
		
		request.setAttribute("year", year);
		request.setAttribute("month", month);
		request.setAttribute("day", day);
		request.setAttribute("strWeek", strWeek);
		request.setAttribute("week", week);  // 무슨요일부터 출력할건지
		request.setAttribute("lastday", lastDay[month-1]); // 1~며칠까지 출력할건지
		request.setAttribute("days", days);
		request.setAttribute("todayYear", sy);
		request.setAttribute("todayMonth", sm);
		
		return "../restaurant/detail_reservedate.jsp";
	}
	
	// 예약 시간 선택
	@RequestMapping("restaurant/detail_reservetime.do") 
	public String restaurant_detail_reservetime(HttpServletRequest request, HttpServletResponse response) {
		
		String tno=request.getParameter("tno"); // day
		
		String times=RestaurantDetailDAO.reserveTimeData(Integer.parseInt(tno));
		StringTokenizer st=new StringTokenizer(times,",");
		List<String> tlist=new ArrayList<String>();
		while(st.hasMoreTokens()) {
			String time=RestaurantDetailDAO.reserveTimeData2(Integer.parseInt(st.nextToken()));
			tlist.add(time);
		}

		request.setAttribute("tlist", tlist);
		
		return "../restaurant/detail_reservetime.jsp";
	}
	
	// 예약 인원 선택
	@RequestMapping("restaurant/detail_reserveinwon.do")
	public String restaurant_detail_reserveinwon(HttpServletRequest request, HttpServletResponse response) {
		
		return "../restaurant/detail_reserveinwon.jsp";
	}
	
	// 예약 insert
	@RequestMapping("restaurant/detail_reserveok.do")
	public String restaurant_detail_reserveok(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			request.setCharacterEncoding("UTF-8");
		} catch(Exception ex) {}
		
		/*
		 * <input type="hidden" name="rno" value="${mvo.rNo }" id="rno">
            <input type="hidden" name="respeople" value="" id="respeople"/>
            <input type="hidden" name="resdate" value="" id="resdate"/>
            <input type="hidden" name="restime" value="" id="restime"/>
            <input type="hidden" name="resmenu" value="" id="resmenu"/>
            <input type="hidden" name="resprice" value="" id="resprice"/>
	        <input type="hidden" name="rescoupon" value="" id="rescoupon"/>
		 */
		/*
		 *  RESNO     NOT NULL NUMBER         
			RNO       NOT NULL NUMBER         
			USERID    NOT NULL VARCHAR2(50)   
			REGDATE            DATE           
			RESDATE   NOT NULL VARCHAR2(20)   
			RESTIME   NOT NULL VARCHAR2(20)   
			RESMENU            VARCHAR2(2000) 
			RESPEOPLE          VARCHAR2(200)  
			RESPRICE           VARCHAR2(200)  
			RESCOUPON          VARCHAR2(200)
		 * 
		 */
		String rno=request.getParameter("rno");
		String respeople=request.getParameter("respeople");
		String resdate=request.getParameter("resdate");
		String restime=request.getParameter("restime");
		String resmenu=request.getParameter("resmenu");
		String resprice=request.getParameter("resprice");
		String rescoupon=request.getParameter("rescoupon");
		
		resmenu=resmenu.substring(0, resmenu.lastIndexOf(","));
		
		HttpSession session=request.getSession();
		String userid=(String)session.getAttribute("id");
		
		Map<String,Object> map=new HashMap<String, Object>();
		map.put("rno", Integer.parseInt(rno));
		map.put("userid", userid);
		map.put("respeople", respeople);
		map.put("resdate", resdate);
		map.put("restime", restime);
		map.put("resmenu", resmenu);
		map.put("resprice", resprice);
		map.put("rescoupon", rescoupon);
		
		System.out.println(map.get("rno"));
		System.out.println(map.get("userid"));
		System.out.println(map.get("respeople"));
		System.out.println(map.get("resdate"));
		System.out.println(map.get("restime"));
		System.out.println(map.get("resmenu"));
		System.out.println(map.get("resprice"));
		System.out.println(map.get("rescoupon"));
		
		RestaurantDetailDAO.reserveInsert(map);
		
		// 사용한 쿠폰 삭제
		if(rescoupon!="0") {
			String cprice=rescoupon.substring(rescoupon.indexOf("*")+2,rescoupon.indexOf("(")-1);
			String cname=rescoupon.substring(0,rescoupon.indexOf("*")-1);
			String cenddate=rescoupon.substring(rescoupon.indexOf("~")+1,rescoupon.indexOf(")"));
			
			/*System.out.println("cprice:"+cprice);
			System.out.println("cname:"+cname);
			System.out.println("cenddate:"+cenddate);
			System.out.println("userid:"+userid);*/
			
			map=new HashMap<String, Object>();
			map.put("cprice", cprice);
			map.put("cname", cname);
			map.put("cenddate", cenddate);
			map.put("userid", userid);
			
			RestaurantDetailDAO.reserveCouponDelete(map);
		}
		
		return "redirect:../mypage/mypage.do";
	}
	
	// =========================================== 리뷰 ===================================================
	
	@RequestMapping("restaurant/detail_review.do")
	public String retaurant_detail_review(HttpServletRequest request, HttpServletResponse response) {
		
		
		String no=request.getParameter("no");
		String page=request.getParameter("page");
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);

		int rowSize=5;
		int start=(rowSize*curpage)-(rowSize-1);
		int end=rowSize*curpage;
		Map reviewmap=new HashMap();
		reviewmap.put("start", start);
		reviewmap.put("end", end);
		reviewmap.put("rno", Integer.parseInt(no));	
		
		List<ReviewVO> reviewList=RestaurantDetailDAO.reviewData(reviewmap);
		int reviewTotalCount= RestaurantDetailDAO.reviewTotalCount(Integer.parseInt(no));
		int totalpage=RestaurantDetailDAO.reviewTotalPage(Integer.parseInt(no));
		double reviewScoreAvg =RestaurantDetailDAO.reviewScoreAvg(Integer.parseInt(no));
		
		
		// 리뷰 페이지 블록 나누기
		final int BLOCK=5;
		int startPage=((curpage-1)/BLOCK*BLOCK)+1;
		int endPage=((curpage-1)/BLOCK*BLOCK)+BLOCK;
		
		int allPage=totalpage;
		if(endPage>allPage)
			endPage=allPage;
		
		request.setAttribute("reviewList", reviewList);
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("BLOCK", BLOCK);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("allPage", allPage);
		request.setAttribute("reviewTotalCount", reviewTotalCount);
		request.setAttribute("reviewScoreAvg", reviewScoreAvg);
		
		return "../restaurant/detail_review.jsp";
	}
	
}
