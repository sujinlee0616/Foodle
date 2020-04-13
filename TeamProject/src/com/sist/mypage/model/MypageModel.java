package com.sist.mypage.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.*;
import com.sist.service.dao.*;
import com.sist.service.vo.*;
import java.util.*;

@Controller
public class MypageModel {

	@RequestMapping("mypage/mypage.do")
	public String member_logout(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		

		
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../mypage/mypage.jsp");
		return "../main/main.jsp";
	}
	@RequestMapping("mypage/coupon.do")
	public String mypage_coupon(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		List<CouponVO> list = new ArrayList<CouponVO>();
		list=MypageDAO.mypageCouponList((String)session.getAttribute("id"));
		
		request.setAttribute("list", list);
		
		request.setAttribute("mypage_sub", "mypage_coupon.jsp");
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../mypage/mypage.jsp");
		return "../main/main.jsp";
	}
	@RequestMapping("mypage/infoupdate.do")
	public String mypage_infoupdate(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		request.setAttribute("mypage_sub", "mypage_infoupdate.jsp");
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../mypage/mypage.jsp");
		return "../main/main.jsp";
	}
	@RequestMapping("mypage/recentpage.do")
	public String mypage_recentpage(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		
		request.setAttribute("mypage_sub", "mypage_recentpage.jsp");
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../mypage/mypage.jsp");
		return "../main/main.jsp";
	}
	@RequestMapping("mypage/reserve.do")
	public String mypage_reserve(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		List<ReservationVO> list = new ArrayList<ReservationVO>();
		list=MypageDAO.mypageReserveList((String)session.getAttribute("id"));
		
		
		request.setAttribute("list", list);

		
		request.setAttribute("mypage_sub", "mypage_reserve.jsp");
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../mypage/mypage.jsp");
		return "../main/main.jsp";
	}
	@RequestMapping("mypage/review.do")
	public String mypage_review(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		request.setAttribute("mypage_sub", "mypage_review.jsp");
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../mypage/mypage.jsp");
		return "../main/main.jsp";
	}
	@RequestMapping("mypage/wish.do")
	public String mypage_wish(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
	
		
		request.setAttribute("mypage_sub", "mypage_wish.jsp");
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../mypage/mypage.jsp");
		return "../main/main.jsp";
	}
}
