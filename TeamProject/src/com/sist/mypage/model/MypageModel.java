
package com.sist.mypage.model;

import javax.servlet.http.HttpServletRequest;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.*;
import com.sist.service.dao.*;
import com.sist.service.vo.*;
import com.sist.vo.ImageVO;
import com.sist.vo.MainInfoVO;
import com.sun.java.accessibility.util.java.awt.TextComponentTranslator;

import lombok.RequiredArgsConstructor;

import java.util.*;

@Controller
public class MypageModel {

	@RequestMapping("mypage/mypage.do")
	public String mypage_mypage(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../mypage/mypage.jsp");
		return "../main/main.jsp";
	}

	@RequestMapping("mypage/wish.do")
	public String mypage_wish(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
	
		List<MyWishVO> list = new ArrayList<MyWishVO>();
		
		String page=request.getParameter("page");
		String pageMove=request.getParameter("pageMove");
	
		

		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int rowSize=9;
		int start=(rowSize*curpage)-(rowSize-1);
		int end=rowSize*curpage;
		int total = MypageDAO.mypageWishTotalPage((String) session.getAttribute("id"));
		
		
		Map map=new HashMap();
		map.put("start", start);
		map.put("end", end);
		map.put("userid", (String) session.getAttribute("id"));
		
			
	
		
		list = MypageDAO.mypageMyWishList(map); 
		
/*	
		for(int i = 0 ; i < list.size() ; i++)
		{
			if(list.get(i).getMvo().getrAddr1().length()>20)
			{
				String temp= list.get(i).getMvo().getrAddr1().substring(0,20)+"...";
				list.get(i).getMvo().setrAddr1(temp);
			}	
		}
	*/	
	
		request.setAttribute("page", curpage);
		request.setAttribute("total", total);
		request.setAttribute("list", list);
		
				
		
		return "../mypage/mypage_wish.jsp";
	}
	
	
	@RequestMapping("mypage/recentpage.do")
	public String mypage_recentpage(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		System.out.println("============== 최근본 페이지 ============= ");
		
		
		
		request.setAttribute("mypage_sub", "mypage_recentpage.jsp");
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../mypage/mypage.jsp");
		return "../mypage/recentpage.jsp";
	}

	@RequestMapping("mypage/reserve.do")
	public String mypage_reserve(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		List<ReservationVO> list = new ArrayList<ReservationVO>();
		
		String page=request.getParameter("page");
		String pageMove=request.getParameter("pageMove");
	
		

		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int rowSize=5;
		int start=(rowSize*curpage)-(rowSize-1);
		int end=rowSize*curpage;
		int total = MypageDAO.mypageReserveTotalPage((String) session.getAttribute("id"));
		
		
		Map map=new HashMap();
		map.put("start", start);
		map.put("end", end);
		map.put("userid", (String) session.getAttribute("id"));
	

		list = MypageDAO.mypageReserveList(map);
		
		System.out.println(total + ": total");
		request.setAttribute("page", curpage);
		request.setAttribute("total", total);
		request.setAttribute("list", list);
		
		return "../mypage/mypage_reserve.jsp";
	}
	
	
	@RequestMapping("mypage/review.do")
	public String mypage_review(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();

		List<ReviewVO> list = new ArrayList<ReviewVO>();

		
		String page=request.getParameter("page");
	
		String pageMove=request.getParameter("pageMove");
		String reviewRangeList=request.getParameter("reviewRangeList");
		if(reviewRangeList=="")
			reviewRangeList=null;
		
		if(reviewRangeList!=null)
			reviewRangeList=reviewRangeList.substring(0,reviewRangeList.length()-1);
		
		
		
		String[] reviewRangeTemp;
		if(reviewRangeList!=null)
		{
			reviewRangeTemp = reviewRangeList.split(",");
		}
		else
			reviewRangeTemp = new String[0];
		
		String[] reviewRange = new String[4];


		
		for(int i = 0 ; i < reviewRangeTemp.length-1 ; i++)
		{	
																		
			String keyWord = reviewRangeList.substring(reviewRangeList.lastIndexOf(",")+1,reviewRangeList.lastIndexOf(":"));
		
			if(reviewRangeTemp[i].indexOf(keyWord)!=-1)
			{
				reviewRangeTemp[i]="";
			}
		}

		if(reviewRangeTemp.length==1)
			reviewRange[0]=reviewRangeTemp[0];
		
		for(int i = 0 ; i < reviewRangeTemp.length ; i++)
		{
			if(i==reviewRangeTemp.length-1 && reviewRangeTemp[i] =="")
				continue;
			
			if(reviewRangeTemp[i] =="")
			{
				reviewRange[i] = reviewRangeTemp[i+1];
				reviewRangeTemp[i+1] ="";
			}
			else
			{
				reviewRange[i]=reviewRangeTemp[i];
			}
		}
	
		reviewRangeList="";
		System.out.println(pageMove);
		if(pageMove==null)
		{
			for(int i = reviewRange.length-1 ; i >= 0 ; i--)
			{
				if(reviewRange[i]!=null)
					reviewRangeList+=reviewRange[i]+",";
			}
		}
		else
			for(int i = 0 ; i < reviewRange.length ; i++)
			{
				if(reviewRange[i]!=null)
					reviewRangeList+=reviewRange[i]+",";
			}
		
		int total = MypageDAO.mypageReviewTotalPage((String) session.getAttribute("id"));
		
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		int rowSize=10;
		int start=(rowSize*curpage)-(rowSize-1);
		int end=rowSize*curpage;

		
		Map map=new HashMap();
		map.put("start", start);
		map.put("end", end);
		map.put("userid", (String) session.getAttribute("id"));
		
		if(reviewRangeList!="")
			map.put("range", reviewRangeList.replace(":", " ").substring(0,reviewRangeList.length()-1));
			
	

				
	
		
		
		if(map.get("range")!=null)
		{
			//DAO 정렬
		/*	System.out.println(map.get("start")+":start");
			System.out.println(map.get("end")+":end");
			System.out.println(map.get("userid")+":userid");
			System.out.println(map.get("range")+":range");*/
			
			list = MypageDAO.mypageReviewRangeList(map);
		}
		else
			list = MypageDAO.mypageReviewList(map);
		

		
	
		

/*
		for(int i = 0 ; i < list.size() ; i++)

		{
			String temp = list.get(i).getRevContent();
			if(temp.length() > 10)
				temp = temp.substring(0,10) + "...";
			
			list.get(i).setRevContent(temp);
		}
*/
	
		request.setAttribute("page", curpage);
		request.setAttribute("total", total);
		System.out.println(curpage);
		

		request.setAttribute("list", list);
		request.setAttribute("reviewRangeList", reviewRangeList);
		System.out.println(reviewRangeList);
		return "../mypage/mypage_review.jsp";
		
		
	}

	
	
	
	@RequestMapping("mypage/coupon.do")
	public String mypage_coupon(HttpServletRequest request, HttpServletResponse response) {
		
		HttpSession session = request.getSession();
		
		
		List<CouponVO> list = new ArrayList<CouponVO>();
		
		String page=request.getParameter("page");
		String pageMove=request.getParameter("pageMove");
		
		if(page==null)
			page="1";
	
		int curpage=Integer.parseInt(page);
		
		int rowSize=6;
		int start=(rowSize*curpage)-(rowSize-1);
		int end=rowSize*curpage;
		int total = MypageDAO.mypageCouponTotalPage((String) session.getAttribute("id"));
		
		Map map=new HashMap();
		map.put("start", start);
		map.put("end", end);
		map.put("userid", (String) session.getAttribute("id"));
		
		
		
		list = MypageDAO.mypageCouponList(map);
		
		request.setAttribute("page", curpage);
		request.setAttribute("total", total);
		request.setAttribute("list", list);
		
		
		return "../mypage/mypage_coupon.jsp";
	}
	@RequestMapping("mypage/coupon_search.do")
	public String mypage_coupon_search(HttpServletRequest request, HttpServletResponse response) {
		
		
		HttpSession session = request.getSession();

		
		List<CouponVO> list = new ArrayList<CouponVO>();
		int start = 1;
		int end = 10;
		String rname = request.getParameter("rname");
		if(rname.length()>5)
		{
			rname = request.getParameter("rname").substring(0,5);
			
		}
		
		Map map=new HashMap();
		
		map.put("userid", (String) session.getAttribute("id"));
		map.put("start", start);
		map.put("end", end);
		map.put("rname", rname);
		
		
		
		list = MypageDAO.mypageCouponSearch(map);
		
		request.setAttribute("list", list);
		
		
		return "../mypage/mypage_coupon.jsp";
	}
	
	
	@RequestMapping("mypage/coupon_search_list.do")
	public String mypage_coupon_search_list(HttpServletRequest request, HttpServletResponse response) {				
		HttpSession session = request.getSession();

		List<CouponVO> list = new ArrayList<CouponVO>();
		int start = 1;
		int end = 10;
		String rname = request.getParameter("rname");
		
	
		
		
		
		Map map=new HashMap();
		
		map.put("userid", (String) session.getAttribute("id"));
		map.put("start", start);
		map.put("end", end);
		map.put("rname", rname);
		
		list = MypageDAO.mypageCouponSearchList(map);
		
//////////////////////////////////////////////////////////////////주석처리부분 10:80		
/*		
		
		for(int i = 0 ; i < list.size() ; i++)
		{
			if(list.get(0).getMvo().getrName().length()>5)
			{
				String temp;
				
				temp = list.get(i).getMvo().getrName().substring(0,5)+"...";
				
				list.get(i).getMvo().setrName(temp);
		
			}
		}
		
			
*/		
		request.setAttribute("list", list);
		
		return "../mypage/mypage_coupon_search_list.jsp";
	}


	
	@RequestMapping("mypage/infoupdate_check.do")
	public String mypage_infoupdate_check(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		return "../mypage/mypage_infoupdate_check.jsp";
	}




	@RequestMapping("mypage/infoupdate_check_ok.do")
	public String mypage_infoupdate_check_ok(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		MemberVO vo = new MemberVO();
		
		String id = (String) session.getAttribute("id");
		String pwd = request.getParameter("pwd");
		
		vo = MypageDAO.mypage_infoupdate_check(pwd, id);

		if (vo.getMsg().equals("OK")) {
			request.setAttribute("vo", vo);
			
			
			return "../mypage/mypage_infoupdate.jsp";
		} else {
			return "../mypage/mypage_infoupdate_check.jsp";
		}
	}

	@RequestMapping("mypage/infoupdate_ok.do")
	public String mypage_infoupdate_ok(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			request.setCharacterEncoding("UTF-8");

			HttpSession session = request.getSession();
	
			String utype = request.getParameter("utype");
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");
			String birth = request.getParameter("birth").replace(" ", "0").replace(".", "");
			String email = request.getParameter("email");
			String pwd_hint = request.getParameter("pwd_hint");
			String pwd_hintAns = request.getParameter("pwd_hintAns");
			String cellnum = request.getParameter("cellnum");
			String telnum = request.getParameter("telnum");
			String address_main = request.getParameter("address_main");
			String postcode = request.getParameter("postcode");
			String address_detail = request.getParameter("address_detail");

			MemberVO vo = new MemberVO();
			vo.setUserid(id);
			vo.setUpwd(pwd);
			vo.setUname(name);
			vo.setUgender(gender);
			vo.setUbirth(birth);
			vo.setUemail(email);
			vo.setHint(pwd_hint);
			vo.setHintans(pwd_hintAns);
			vo.setUtel(telnum);
			vo.setUphone(cellnum);
			vo.setUpost(postcode);
			vo.setUaddr1(address_main);
			vo.setUaddr2(address_detail);
			vo.setUtype(utype);
	
	
	
	
	
	/*
	 * 데이터 확인	
			System.out.println("1:"+vo.getUserid());
			System.out.println("2:"+vo.getUpwd());
			System.out.println("3:"+vo.getUname());
			System.out.println("4:"+vo.getUgender());
			System.out.println("5:"+vo.getUbirth());
			System.out.println("6:"+vo.getUemail());
			System.out.println("7:"+vo.getHint());
			System.out.println("8:"+vo.getHintans());
			System.out.println("9:"+vo.getUtel());
			System.out.println("10:"+vo.getUphone());
			System.out.println("11:"+vo.getUpost());
			System.out.println("12:"+vo.getUaddr1());
			System.out.println("13:"+vo.getUaddr2());
			System.out.println("14:"+vo.getUtype());
	*/
			
		
			System.out.println("데이터 넣기 직전");
			// DAO 연결
			MypageDAO.mypage_infoupdate_ok(vo);
			System.out.println("데이터 넣은후");
		} catch (Exception ex) {
			
		}
		
		return "redirect:mypage.do";
	}
}


