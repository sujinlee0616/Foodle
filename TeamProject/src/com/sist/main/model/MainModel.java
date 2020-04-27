package com.sist.main.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.service.dao.*;
import com.sist.service.vo.MyWishVO;
import com.sist.vo.*;
import com.sun.org.apache.xerces.internal.impl.dv.xs.DoubleDV;

@Controller
public class MainModel {
	@RequestMapping("main/main.do")
	public String main_main(HttpServletRequest request, HttpServletResponse response)
	{
		List<MainInfoVO> weeklytop30list=MainDAO.weeklyTop30();
		List<MainInfoVO> popularTop3list=MainDAO.popularTop3();
		
		for(MainInfoVO vo:weeklytop30list) {
			String addr=vo.getrAddr2();
			if(addr.length()>22) {
				addr=addr.substring(0,22).concat("...");
				vo.setrAddr2(addr);
			}
		}
		for(MainInfoVO vo:popularTop3list) {
			String addr=vo.getrAddr2();
			if(addr.length()>22) {
				addr=addr.substring(0,22).concat("...");
				vo.setrAddr2(addr);
			}
		}
		
	
		request.setAttribute("weeklytop30list", weeklytop30list);
		request.setAttribute("popularTop3list", popularTop3list);
		
		request.setAttribute("main_header", "../common/header_main.jsp");
		request.setAttribute("main_jsp", "../main/home.jsp");
		
		return "../main/main.jsp";
	}
	
	@RequestMapping("main/home_recent.do")
	public String main_home_resent(HttpServletRequest request, HttpServletResponse response) {
		
		// 쿠키 페이지
		String page=request.getParameter("page");
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		
		int rowSize=3;
		int start=(rowSize*curpage)-(rowSize);
		int end=rowSize*curpage-1;
		
		
		// 쿠키 읽기
		List<MainInfoVO> cookielist=new ArrayList<MainInfoVO>();
		Cookie[] cookies=request.getCookies();
		
		int count=0;
		int totalpage=0;
		for(int i=cookies.length-1;i>=0;i--) {
			if(cookies[i].getName().startsWith("res")) {
				String no=cookies[i].getValue();
				MainInfoVO vo=MainDAO.cookieData(Integer.parseInt(no));
				if(vo.getrAddr1().length()>22) {
					vo.setrAddr1(vo.getrAddr1().substring(0,22).concat("..."));
				}
				
				if(count>=start && count<=end)
					cookielist.add(vo);
				
				count++;
				totalpage=(int)Math.ceil((double)count/3.0);
			}
		}
		
//		System.out.println("curpage="+curpage);
//		System.out.println("totalpage="+totalpage);
		
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("cookielist", cookielist);
		
		return "../main/home_recent.jsp";
	}
}
