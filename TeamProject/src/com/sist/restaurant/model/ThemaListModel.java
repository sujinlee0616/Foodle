package com.sist.restaurant.model;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.service.dao.ThemaListDAO;
import com.sist.vo.MainThemaVO;
import com.sist.vo.NearbyVO;
import com.sist.vo.DetailThemaVO;
import com.sist.vo.InfoThemaVO;
import com.sist.vo.MainInfoVO;

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
			System.out.println("MODEL-NO:"+no);
			List<MainThemaVO> list=ThemaListDAO.cateSelectData(data[Integer.parseInt(no)-1]);
		
			
			
			System.out.println("(cate_select_ok.do): "+list);
			
			request.setAttribute("list", list);
			request.setAttribute("data", data);
			//request.setAttribute("clist", clist);
		
			
			
			//String aa =request.getParameter("pwd");
			//request.setAttribute("result", aa);
			//request.setAttribute("result", request.getParameter("pwd"));
			//System.out.println(aa);
		
		return "../restaurant/cate_select_ok.jsp";

	}

	
	@RequestMapping("restaurant/result_thema_list.do")
	public String result_thema_list(HttpServletRequest request, HttpServletResponse response)
	{
		
		//cate_select_ok로 부터 디폴트 페이지 정보/ 
		String no=request.getParameter("no"); // 현재로선 1 or other number
		System.out.println("no => "+no);
		String detailThema_col=	request.getParameter("detailThema_col"); // 가족모임
		System.out.println("detailThema_col=> "+detailThema_col);
		String infoThema_col=request.getParameter("infoThema_col");  //어떤 가족 모임 장소를 찾고 계신가요?
		System.out.println("infoThema_col=> "+infoThema_col);

		
		//dao연결 하러      고고!
		List<NearbyVO> slist=ThemaListDAO.searchThema(detailThema_col);
		System.out.println("result_thema_list.do: "+slist);
		
		for(NearbyVO vo:slist){
			
			String addr=vo.getrAddr2();
			if(addr.length()> 20){
				
				addr=addr.substring(0,20).concat("...");
				vo.setrAddr2(addr);
				
			}

			
		}
		
		
		request.setAttribute("slist", slist);
		request.setAttribute("infoThema_col",infoThema_col); //~~~테마 설명문!
		request.setAttribute("detailThema_col", detailThema_col);
		
		return "../restaurant/result_thema_list.jsp";
	}
	
	
	
	
}
