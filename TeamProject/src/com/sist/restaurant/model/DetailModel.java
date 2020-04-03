package com.sist.restaurant.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller
public class DetailModel {
	@RequestMapping("restaurant/detail.do")
	public String restaurant_detail(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("main_header", "common/header_sub.jsp");
		request.setAttribute("main_jsp", "restaurant/detail.jsp");
		request.setAttribute("msg", "detail!");
		return "../main.jsp";
	}
}
