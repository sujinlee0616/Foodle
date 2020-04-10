package com.sist.board.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller
public class BoardModel {
	
	@RequestMapping("board/list.do")
	public String reply_list(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../board/list.jsp");
		
		
		
		
		return "../main/main.jsp";
	}
	
	@RequestMapping("board/detail.do")
	public String reply_detail(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../board/detail.jsp");
		
		return "../main/main.jsp";
	}
}
