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
		request.setAttribute("jsp_header", "common/header_main.jsp"); 
		//값에 해당하는 부분 작성 법: 기준 : 	@RequestMapping("restaurant/list_nearby.do") 에서 list_nearby.do가 기준이 되어
		//기준되는 파일이 해당 키의 값이 되는 페이지까지 가기위한 경로를 주는 것이다.
		request.setAttribute("jsp_main", "restautant/list_nearby.jsp");
		
		return "../main.jsp";
		
	}
	
	

}
