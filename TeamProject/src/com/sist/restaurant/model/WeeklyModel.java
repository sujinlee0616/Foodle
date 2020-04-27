package com.sist.restaurant.model;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.service.dao.SearchDAO;
import com.sist.service.dao.WeeklyDAO;
import com.sist.vo.MainInfoVO;

@Controller
public class WeeklyModel {
	
	@RequestMapping("restaurant/list_weekly.do")
	public String weeklyList(HttpServletRequest request,HttpServletResponse response)
	{
		String page=request.getParameter("page");
		if(page==null)
			page="1";
		int curPage=Integer.parseInt(page);
		int rowSize=18;
		int start=(rowSize*curPage)-(rowSize-1);
		int end=(rowSize*curPage);
		
		Map map=new HashMap();
		map.put("start", start);
		map.put("end", end);
		
		List<MainInfoVO> list=WeeklyDAO.weeklyListData(map);
		
		for(MainInfoVO vo:list)
		{
			String addr=vo.getrAddr1();
			if(addr.length()>26)
			{
				addr=addr.substring(0,23).concat("...");
				vo.setrAddr1(addr);
			}
		}
		
		int totalPage=WeeklyDAO.weeklyTotalPage();
		
		// 1~10, 11~20
		final int BLOCK=5;
		int startPage=((curPage-1)/BLOCK*BLOCK)+1;
		int endPage=((curPage-1)/BLOCK*BLOCK)+BLOCK;
		
		int allPage=totalPage;
		if(endPage>allPage)
			endPage=allPage;
		
		request.setAttribute("list", list);
		request.setAttribute("curPage", curPage);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("BLOCK", BLOCK);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("allPage", allPage);
		
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../restaurant/list_weekly.jsp");
		
		return "../main/main.jsp";
	}
	
	
	
}
