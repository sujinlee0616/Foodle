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
	
	// [글 목록] 
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
	
	// [상세보기] 
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
	
	// [글쓰기] - 작성화면 보여줌  
	@RequestMapping("board/insert.do")
	public String reply_insert(HttpServletRequest request, HttpServletResponse response)
	{
				
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../board/insert.jsp");
		
		return "../main/main.jsp";
	}
	
	// [글쓰기] - 실제 데이터 삽입  - 왜 안되는지 확인해봐야 ★★★★★★★
	@RequestMapping("board/insert_ok.do")
	public String reply_insert_ok(HttpServletRequest request,HttpServletResponse response)
	{
		try
		{
			request.setCharacterEncoding("UTF-8");
		}catch(Exception ex){}
		
		
		// 클라이언트가 입력한 데이터를 가지고 와야...		
		// insert.jsp의 writeBd_frm에서 데이터 받아온다
		String bname=request.getParameter("name");
		String bsubject=request.getParameter("subject");
		String bcontent=request.getParameter("content");
		String bpwd=request.getParameter("pwd");
		// id 어떻게 받아올 것인가....
		
		// 데이터 확인
		System.out.println("bname="+bname+", bsubject="+bsubject+", bcontent="+bcontent+", bpwd="+bpwd);
		
		// 클라이언트가 입력해준 데이터 VO에 저장 
		ReplyBoardVO vo = new ReplyBoardVO();
		
		vo.setBname(bname);
		vo.setBsubject(bsubject);
		vo.setBcontent(bcontent);
		vo.setBpwd(bpwd);
		// id 어떻게 받아올 것인가....
		
		// VO를 INSERT 하게 mapper에서 수행 
		ReplyBoardDAO.replyInsertData(vo); // ================== mapper에서 문제 발생  ================== 
				
		return "redirect:../board/list.do";
	}
	
	// [글 수정] - 기존 글의 데이터 가져옴 - 완료 
	@RequestMapping("board/update.do")
	public String board_update(HttpServletRequest request,HttpServletResponse response)
	{
		
		// 요청 데이터 갖고 온다
		String bno = request.getParameter("bno");
						
		// DAO - 해당 글의 데이터 보여준다. 
		ReplyBoardVO vo=ReplyBoardDAO.replyDetailData((Integer.parseInt(bno)));	
				
		request.setAttribute("vo", vo);		
				
		request.setAttribute("main_jsp", "../board/update.jsp"); // main에 include시킴 
		return "../main/main.jsp";
		
	}
	
	
	// [글 삭제] 
	
	
	
	
}
