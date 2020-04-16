package com.sist.restaurant.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller
public class ListThemaModel {

	@RequestMapping("restaurant/list_thema.do")
	public String list_thema(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../restaurant/list_thema.jsp");
		
		return "../main/main.jsp";
	}
	
	
	@RequestMapping("restaurant/selected_bigthema.do")
	public String selected_bigthema(HttpServletRequest request, HttpServletResponse response)
	{
		 //String bigTabId=request.getParameter("bigTabId");
		 
			String res=request.getParameter("activeTab");
			
			request.getParameter("pwd");
			//String aa =request.getParameter("pwd");
			//request.setAttribute("result", aa);
			request.setAttribute("result", request.getParameter("pwd"));
			//System.out.println(aa);
		
		return "/restaurant/"+res+".jsp";
	}
	
	
	
}
