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
		
		// 쿠키 읽기
		/*List<MainInfoVO> cookielist=new ArrayList<MainInfoVO>();
		Cookie[] cookies=request.getCookies();
		System.out.println("cookies.length : "+cookies.length);/////
		//System.out.println("cookies[i].getName()"+cookies[0].getName()); /////
		for(int i=0;i<cookies.length;i++) {
			if(cookies[i].getName().startsWith("restaurant")) {
				System.out.println("aa");
				String no=cookies[i].getValue();
				MainInfoVO vo=MainDAO.cookieData(Integer.parseInt(no));
				cookielist.add(vo);
				System.out.println("no="+no);/////
			}
		}*/
		
		
		request.setAttribute("weeklytop30list", weeklytop30list);
		request.setAttribute("popularTop3list", popularTop3list);
		//request.setAttribute("cookielist", cookielist);
		
		request.setAttribute("main_header", "../common/header_main.jsp");
		request.setAttribute("main_jsp", "../main/home.jsp");
		
		return "../main/main.jsp";
	}
	
}
