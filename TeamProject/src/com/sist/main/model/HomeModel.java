package com.sist.main.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;

@Controller
public class HomeModel {
	@RequestMapping("main/home.do")
	public String main_home(HttpServletRequest request, HttpServletResponse response) {

		return "redirect:../main/main.do";
	}
}