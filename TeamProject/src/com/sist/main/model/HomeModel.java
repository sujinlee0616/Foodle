package com.sist.main.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller
public class HomeModel {
	@RequestMapping("main/home.do")
	public String main_home(HttpServletRequest request, HttpServletResponse response) {
		request.setAttribute("main_header", "common/header_main.jsp");
		request.setAttribute("main_jsp", "main/home.jsp");
		//request.setAttribute("path", "../");
		return "../main.jsp";
	}
}