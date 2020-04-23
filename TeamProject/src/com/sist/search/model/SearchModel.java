package com.sist.search.model;

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
public class SearchModel {
	@RequestMapping("search/searchpage.do")
	public String search_searchPage(HttpServletRequest request, HttpServletResponse response)
	{
		try {
			request.setCharacterEncoding("utf-8");
		} catch (Exception e) {
			System.out.println("한글변환 캐치절: "+e.getMessage());
		}
		//텍스트 미입력시, 공백으로 넘어온다, null이 아님.
		String cate=request.getParameter("cate");
		String area=request.getParameter("area");
		
		if(cate==null)
		{
			cate="";
		}
		if(area==null)
		{
			area="";
		}
		System.out.println("카테고리와 지역 출력: "+cate+", "+area);
		if(cate.equals(" "))
			cate=cate.trim();
		if(area.equals(" "))
			area=area.trim();
		
		String page=request.getParameter("page");
		if(page==null)
			page="1";
		int curPage=Integer.parseInt(page);
		int rowSize=18;
		int start=(rowSize*curPage)-(rowSize-1);
		int end=(rowSize*curPage);
		
		// 리스트 출력 map
		Map map=new HashMap();
		map.put("start", start);
		map.put("end", end);
		map.put("cate", cate);
		map.put("area", area);
		
		List<MainInfoVO> list=SearchDAO.searchListData(map);
		for(MainInfoVO vo:list)
		{
			String addr=vo.getrAddr1();
			if(addr.length()>26)
			{
				addr=addr.substring(0,23).concat("...");
				vo.setrAddr1(addr);
			}
		}

		int totalPage=SearchDAO.searchTotalPage(map);
		
		// 1~10, 11~20
		final int BLOCK=5;
		int startPage=((curPage-1)/BLOCK*BLOCK)+1;
		int endPage=((curPage-1)/BLOCK*BLOCK)+BLOCK;
		
		int allPage=totalPage;
		if(endPage>allPage)
			endPage=allPage;
		
		int totalCount=SearchDAO.searchTotalCount(map);
		
		request.setAttribute("list", list);
		request.setAttribute("curPage", curPage);
		request.setAttribute("totalPage", totalPage);
		request.setAttribute("BLOCK", BLOCK);
		request.setAttribute("startPage", startPage);
		request.setAttribute("endPage", endPage);
		request.setAttribute("allPage", allPage);
		request.setAttribute("cate", cate);
		request.setAttribute("area", area);
		request.setAttribute("totalCount", totalCount);
		
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../search/searchpage.jsp");
		
		return "../main/main.jsp";
	}
}
