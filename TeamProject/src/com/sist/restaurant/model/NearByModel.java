package com.sist.restaurant.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller
public class NearByModel {
	
	@RequestMapping("restaurant/list_nearby.do")
	public String list_nearby(HttpServletRequest request, HttpServletResponse response)
	{
		
		
		
		return "../main.jsp";
		
	}
	
	

}
