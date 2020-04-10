package com.sist.board.model;

import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.*;
import com.sist.service.dao.*;
import com.sist.service.vo.*;

@Controller
public class ReplyBoardModel {
	
	@RequestMapping("board/list.do")
	public String reply_list(HttpServletRequest request, HttpServletResponse response)
	{
		
		// 클라이언트 요청 데이터 가져옴 
		String page=request.getParameter("page");
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);

		// VO에 start랑 end는 없으니까 map 사용 
		Map map=new HashMap();
		int rowSize=15;
		int start = rowSize*(curpage-1)+1;
		int end=rowSize*curpage;
		map.put("start", start);
		map.put("end", end);
		
		List<ReplyBoardVO> list=ReplyBoardDAO.replyListData(map); // 
		int totalpage=ReplyBoardDAO.replyTotalPage();
		
		request.setAttribute("list", list);
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);		
		
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../board/list.jsp");		
		
		return "../main/main.jsp";
	}
	
	@RequestMapping("board/detail.do")
	public String reply_detail(HttpServletRequest request, HttpServletResponse response)
	{
		// 요청데이터
		String no=request.getParameter("no");
		
		// DAO 
		ReplyBoardVO vo=ReplyBoardDAO.replyDetailData(Integer.parseInt(no));
		vo=ReplyBoardDAO.hitIncrement(Integer.parseInt(no));
		
		request.setAttribute("vo", vo);
		
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../board/detail.jsp");
		
		return "../main/main.jsp";
	}
}
