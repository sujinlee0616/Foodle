package com.sist.member.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller
public class MemberModel {
	@RequestMapping("member/login.do")
	public String login(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../member/login.jsp");
		// request.setAttribute("path", "../");
		return "../main/main.jsp";
	}
	
	@RequestMapping("member/signup.do")
	public String signup(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../member/signup.jsp");
		// request.setAttribute("path", "../");
		return "../main/main.jsp";
	}
	
	
}
