package com.sist.restaurant.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller
public class WeeklyModel {
	
	@RequestMapping("restaurant/list_weekly.do")
	public String weeklyList(HttpServletRequest request,HttpServletResponse response)
	{
		
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../restaurant/list_weekly.jsp");
		return "../main/main.jsp";
	}
	
	
	
}
