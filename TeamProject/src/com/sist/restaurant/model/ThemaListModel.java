package com.sist.restaurant.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller
public class ThemaListModel {

	@RequestMapping("restaurant/list_thema.do")
	public String list_thema(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../restaurant/list_thema.jsp");
		
		return "../main/main.jsp";
	}
	
	
	
}
