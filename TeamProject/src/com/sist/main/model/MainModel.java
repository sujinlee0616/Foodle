package com.sist.main.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.MainDAO;
import com.sist.vo.MainInfoVO;

@Controller
public class MainModel {
	@RequestMapping("main/main.do")
	public String main_main(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_header", "../common/header_main.jsp");
		request.setAttribute("main_jsp", "../main/home.jsp");
		
		List<MainInfoVO> weeklytop30list=MainDAO.weeklyTop30();
		request.setAttribute("weeklytop30list", weeklytop30list);
		
		return "../main/main.jsp";
	}
}
