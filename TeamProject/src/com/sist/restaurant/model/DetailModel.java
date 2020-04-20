package com.sist.restaurant.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.service.vo.*;
import com.sist.vo.*;
import com.sist.dao.*;
import com.sist.service.dao.*;
import java.util.*;

@Controller
public class DetailModel {
	@RequestMapping("restaurant/detail.do")
	public String restaurant_detail(HttpServletRequest request, HttpServletResponse response) {
		String no=request.getParameter("no");
		
		MainInfoVO mvo=RestaurantDetailDAO.resDetailMaininfo(Integer.parseInt(no));
		SubinfoVO svo=RestaurantDetailDAO.resDetailSubinfo(Integer.parseInt(no));
		ReserveInfoVO rvo=RestaurantDetailDAO.resDetailReserveinfo(Integer.parseInt(no));
		List<MenuVO> menuList=RestaurantDetailDAO.resDetailMenu(Integer.parseInt(no));
		List<ImageVO> imageList=RestaurantDetailDAO.resDetailImage(Integer.parseInt(no));
		
		// Detail 위쪽에 짧은 설명
		String strContent=svo.getrContent().substring(0, svo.getrContent().indexOf("다.")+2);
		
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
}
