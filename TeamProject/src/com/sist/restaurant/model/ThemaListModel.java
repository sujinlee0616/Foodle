package com.sist.restaurant.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.service.dao.ThemaListDAO;
import com.sist.vo.DetailThemaVO;
import com.sist.vo.MainThemaVO;

@Controller
public class ThemaListModel {
	
	
	//메인&테마리스트페이지 연결
	@RequestMapping("restaurant/list_thema.do")
	public String list_thema(HttpServletRequest request, HttpServletResponse response)
	{
		String[] data={"상황별","메뉴별","스페셜"};
		
		request.setAttribute("data", data);
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../restaurant/list_thema.jsp");
		
		return "../main/main.jsp";
	}
	
	//3개 메뉴 클릭시 소테마들 ajax로 출력하는 기능
	@RequestMapping("restaurant/cate_select_ok.do")
	public String selected_bigthema(HttpServletRequest request, HttpServletResponse response)
	{
		
			String[] data={
					
					"상황별","메뉴별","스페셜"
					
				};
			
			//디폴트 페이지 넘버를 받음!!
			String no=request.getParameter("no");
		 	//String bigTabId=request.getParameter("bigTabId");
			//String res=request.getParameter("activeTab");
	
			List<MainThemaVO> list=ThemaListDAO.cateSelectData(data[Integer.parseInt(no)-1]);
			
			//List<MainThemaVO> clist=ThemaListDAO.countBigThema();
			//String tName=request.getParameter("tName");
			//List<DetailThemaVO> blist=ThemaListDAO.showMoreCate();
			
			
			request.setAttribute("list", list);
			request.setAttribute("data", data);
			//request.setAttribute("clist", clist);
		
			
			
			//String aa =request.getParameter("pwd");
			//request.setAttribute("result", aa);
			//request.setAttribute("result", request.getParameter("pwd"));
			//System.out.println(aa);
		
		return "../restaurant/cate_select_ok.jsp";

	}
	
	
	
	@RequestMapping("restaurant/catefind.do")
	public String catefind(HttpServletRequest request, HttpServletResponse response)
	{
		
		
		
		
		//창만보여주면 ok!!
		return "../restaurant/catefind.jsp";
		
	}
	
	
	
	
	
	
}
