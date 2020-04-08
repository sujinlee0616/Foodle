package com.sist.search.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller
public class SearchModel {
	@RequestMapping("search/searchpage.do")
	public String search_searchPage(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../search/searchpage.jsp");
		
		return "../main/main.jsp";
	}
}
