package com.sist.restaurant.model;

import java.util.HashMap;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.service.dao.RestaurantDetailDAO;
import com.sist.service.dao.SearchDAO;
import com.sist.service.dao.WeeklyDAO;
import com.sist.vo.MainInfoVO;

@Controller
public class WeeklyModel {
	
	@RequestMapping("restaurant/list_weekly.do")
	public String weeklyList(HttpServletRequest request,HttpServletResponse response)
	{	
		try {
			request.setCharacterEncoding("utf-8");
		} catch (Exception e) {}
		
		String today=request.getParameter("today");
		String filter1=request.getParameter("filter1");
		String filter2=request.getParameter("filter2");
		String filter3=request.getParameter("filter3");
		String filter4=request.getParameter("filter4");
		
		System.out.println("weekly's "+filter1+","+filter2+","+filter3+","+filter4);
		
		String page=request.getParameter("page");
		
		if(page==null)
			page="1";
		int curPage=Integer.parseInt(page);
		int rowSize=15;
		int start=(rowSize*curPage)-(rowSize-1);
		int end=(rowSize*curPage);
		
		// 찜 
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		
		Map map=new HashMap();
		map.put("start", start);
		map.put("end", end);
		map.put("today", today);
		map.put("filter1", filter1);
		map.put("filter2", filter2);
		map.put("filter3", filter3);
		map.put("filter4", filter4);
		
		List<MainInfoVO> list=WeeklyDAO.weeklyListData(map);
		
		for(MainInfoVO vo:list)
		{
			String addr=vo.getrAddr1();
			if(addr.length()>25)
			{
				addr=addr.substring(0,20).concat("...");
				vo.setrAddr1(addr);
			}
			// 찜 - 찜 되어 있는지 아닌지 노출만. 
			String myWish="";
			if(id==null) { // 로그인 X
				myWish="♡";
			}
			else { // 로그인 O
				Map map2=new HashMap();
				map2.put("id", id);
				map2.put("rno",vo.getrNo());
				int count=RestaurantDetailDAO.myWishCheck(map2);
				// System.out.println("count="+count);
				if(count>0) { // 이미 찜이 되어있으면
					myWish="♥";
				}
				else {
					myWish="♡";
				}
			}
			vo.setMyWish(myWish);
		}
		
		int totalPage=WeeklyDAO.weeklyTotalPage(map);
		System.out.println("1 totalpage="+totalPage);
		System.out.println("==========================================");
		
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
	
	@RequestMapping("restaurant/list_weekly_filter.do")
	public String list_weekly_filter(HttpServletRequest request, HttpServletResponse response)
	{
		try {
			request.setCharacterEncoding("utf-8");
		} catch (Exception e) {}
		
		String today=request.getParameter("today");
		String filter1=request.getParameter("filter1");
		String filter2=request.getParameter("filter2");
		String filter3=request.getParameter("filter3");
		String filter4=request.getParameter("filter4");

		System.out.println("filter's "+filter1+","+filter2+","+filter3+","+filter4);
		
		String page=request.getParameter("page");
		if(page==null)
			page="1";
		int curPage=Integer.parseInt(page);
		int rowSize=15;
		int start=(rowSize*curPage)-(rowSize-1);
		int end=(rowSize*curPage);
		
		
		Map map=new HashMap();
		map.put("start", start);
		map.put("end", end);
		map.put("today", today);
		map.put("filter1", filter1);
		map.put("filter2", filter2);
		map.put("filter3", filter3);
		map.put("filter4", filter4);
		
		List<MainInfoVO> list=WeeklyDAO.weeklyListData(map);
		// 찜 
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		
		for(MainInfoVO vo:list)
		{
			String addr=vo.getrAddr1();
			if(addr.length()>25)
			{
				addr=addr.substring(0,20).concat("...");
				vo.setrAddr1(addr);
			}
			// 찜 - 찜 되어 있는지 아닌지 노출만. 
			String myWish="";
			if(id==null) { // 로그인 X
				myWish="♡";
			}
			else { // 로그인 O
				Map map2=new HashMap();
				map2.put("id", id);
				map2.put("rno",vo.getrNo());
				int count=RestaurantDetailDAO.myWishCheck(map2);
				// System.out.println("count="+count);
				if(count>0) { // 이미 찜이 되어있으면
					myWish="♥";
				}
				else {
					myWish="♡";
				}
			}
			vo.setMyWish(myWish);
			
		}
		
		int totalPage=WeeklyDAO.weeklyTotalPage(map);
		System.out.println("2 totalpage="+totalPage);
		System.out.println("==========================================");
		
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
		
		return "../restaurant/list_weekly_filter.jsp";
	}
	
	@RequestMapping("restaurant/list_weekly_filter_page.do")
	public String list_weekly_filter_page(HttpServletRequest request, HttpServletResponse response)
	{
		try {
			request.setCharacterEncoding("utf-8");
		} catch (Exception e) {}
		
		String today=request.getParameter("today");
		String filter1=request.getParameter("filter1");
		String filter2=request.getParameter("filter2");
		String filter3=request.getParameter("filter3");
		String filter4=request.getParameter("filter4");
		
		String page=request.getParameter("page");
		if(page==null)
			page="1";
		int curPage=Integer.parseInt(page);
		int rowSize=15;
		int start=(rowSize*curPage)-(rowSize-1);
		int end=(rowSize*curPage);
		
		
		Map map=new HashMap();
		map.put("start", start);
		map.put("end", end);
		map.put("today", today);
		map.put("filter1", filter1);
		map.put("filter2", filter2);
		map.put("filter3", filter3);
		map.put("filter4", filter4);
		
		List<MainInfoVO> list=WeeklyDAO.weeklyListData(map);
		
		for(MainInfoVO vo:list)
		{
			String addr=vo.getrAddr1();
			if(addr.length()>25)
			{
				addr=addr.substring(0,20).concat("...");
				vo.setrAddr1(addr);
			}
		}
		
		int totalPage=WeeklyDAO.weeklyTotalPage(map);
		
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
		
		return "../restaurant/list_weekly_filter_page.jsp";
	}
	
}
