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
	public String board_list(HttpServletRequest request, HttpServletResponse response)
	{
		
		// 클라이언트 요청 데이터 가져옴 
		String page=request.getParameter("page");
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);

		// VO에 start랑 end는 없으니까 map 사용 
		Map map=new HashMap();
		int rowSize=15;
		int start = rowSize*(curpage-1)+1; // curpage의 첫 컨텐츠 번호 
		int end=rowSize*curpage; // curpage의 마지막 컨텐츠번호 
		map.put("start", start);
		map.put("end", end);
		List<ReplyBoardVO> list=ReplyBoardDAO.boardListData(map); // 
		int totalpage=ReplyBoardDAO.boardTotalPage();
		int contentsCnt=ReplyBoardDAO.boardContentsCount();
		request.setAttribute("list", list);
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("contentsCnt", contentsCnt);
		
		// Pagination
		int startpage=1;
		int endpage=1;
		int pageScope=10;
		startpage=((int) Math.floor((curpage-1)/10))*pageScope+1;
		endpage=((int) Math.floor((curpage-1)/10))*pageScope+pageScope;
		if(endpage>totalpage)
			endpage=totalpage;
		System.out.println("curpage="+curpage+", totalpage="+totalpage+", startpage="+startpage+", endpage="+endpage);
		request.setAttribute("startpage", startpage);
		request.setAttribute("endpage", endpage);
		
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../board/list.jsp");		
		return "../main/main.jsp";
	}
	
	// [상세보기] 
	@RequestMapping("board/detail.do")
	public String board_detail(HttpServletRequest request, HttpServletResponse response)
	{
		// 요청데이터
		String no=request.getParameter("no");
		
		// DAO 
		ReplyBoardVO vo=ReplyBoardDAO.boardDetailData(Integer.parseInt(no));
		vo=ReplyBoardDAO.hitIncrement(Integer.parseInt(no));
		
		request.setAttribute("vo", vo);
		
		// ======== 상세보기 하단 리스트 ========
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
		List<ReplyBoardVO> list=ReplyBoardDAO.boardListData(map); // 
		int totalpage=ReplyBoardDAO.boardTotalPage();
		int contentsCnt=ReplyBoardDAO.boardContentsCount();
		request.setAttribute("list", list);
		request.setAttribute("curpage", curpage);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("contentsCnt", contentsCnt);
		
		// Pagination
		int startpage=1;
		int endpage=1;
		int pageScope=10;
		startpage=((int) Math.floor((curpage-1)/10))*pageScope+1;
		endpage=((int) Math.floor((curpage-1)/10))*pageScope+pageScope;
		if(endpage>totalpage)
			endpage=totalpage;
		System.out.println("curpage="+curpage+", totalpage="+totalpage+", startpage="+startpage+", endpage="+endpage);
		request.setAttribute("startpage", startpage);
		request.setAttribute("endpage", endpage);
				
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../board/detail.jsp");
		return "../main/main.jsp";
	}
	
	// [글쓰기] - 작성화면 보여줌  
	@RequestMapping("board/insert.do")
	public String board_insert(HttpServletRequest request, HttpServletResponse response)
	{
				
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../board/insert.jsp");
		
		return "../main/main.jsp";
	}
	
	// [글쓰기] - 실제 처리 
	@RequestMapping("board/insert_ok.do")
	public String board_insert_ok(HttpServletRequest request,HttpServletResponse response)
	{
		try
		{
			request.setCharacterEncoding("UTF-8");
		}catch(Exception ex){}
		
		// 클라이언트가 입력한 데이터를 가지고 와야
		String bname=request.getParameter("name");
		String bsubject=request.getParameter("subject");
		String bcontent=request.getParameter("content");
		String bpwd=request.getParameter("pwd");
		// id 어떻게 받아올 것인가....
		
		// 데이터 확인
		// System.out.println("bname="+bname+", bsubject="+bsubject+", bcontent="+bcontent+", bpwd="+bpwd);
		
		// 클라이언트가 입력해준 데이터 VO에 저장 
		ReplyBoardVO vo = new ReplyBoardVO();
		
		vo.setBname(bname);
		vo.setBsubject(bsubject);
		vo.setBcontent(bcontent);
		vo.setBpwd(bpwd);
		// id 어떻게 받아올 것인가....
		
		// VO를 INSERT 하게 mapper에서 수행 
		ReplyBoardDAO.boardInsertData(vo);
				
		return "redirect:../board/list.do";
	}
	
	// [글 수정] - 기존 글의 데이터 가져옴
	@RequestMapping("board/update.do")
	public String board_update(HttpServletRequest request,HttpServletResponse response)
	{		
		// 요청 데이터 갖고 온다
		String bno=request.getParameter("bno");
						
		// DAO - 해당 글의 데이터 보여준다. - 이전에 만들어놓은 DAO 메소드 재활용..
		ReplyBoardVO vo=ReplyBoardDAO.boardDetailData((Integer.parseInt(bno)));	
				
		request.setAttribute("vo", vo);		
		
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../board/update.jsp"); // main에 include시킴 
		return "../main/main.jsp";
		
	}
	
	// [글 수정] - 실제 수정, 데이터 update  - ★★★★★ 비밀번호 체크 로직 아직 안 만들었음 ★★★★★
	@RequestMapping("board/update_ok.do")
	public String board_update_ok(HttpServletRequest request,HttpServletResponse response)
	{
		try
		{
			request.setCharacterEncoding("UTF-8");
		}catch(Exception ex){}
		
		// 사용자 요청 데이터 (사용자가 수정한 글 내용 + 글 번호) 갖고온다
		String bno=request.getParameter("bno");
		String bname=request.getParameter("name");
		String bsubject=request.getParameter("subject");
		String bcontent=request.getParameter("content");
		String bpwd=request.getParameter("pwd");
		
		// 이 데이터들을 VO에 담아서...
		ReplyBoardVO vo=new ReplyBoardVO();
		vo.setBno(Integer.parseInt(bno));
		vo.setBname(bname);
		vo.setBsubject(bsubject);
		vo.setBcontent(bcontent);
		vo.setBpwd(bpwd);
		
		// DAO 연동
		ReplyBoardDAO.boardUpdateData(vo);
		
		return "redirect:../board/detail.do?no="+bno;
	}
	
	
	// [글 삭제] - 잠시만... 비번을 어디서 입력받지...? JSP에서..  - ★★★★★ 비밀번호 체크해서 맞아야만 삭제 가능하게 해야함 ★★★★★
	@RequestMapping("board/delete.do")
	public String boardDeleteData(HttpServletRequest request,HttpServletResponse response)
	{
		String bno=request.getParameter("bno");
		
		// DAO 연동
		ReplyBoardDAO.boardDeleteData(Integer.parseInt(bno));
		
		return "redirect:../board/list.do";
	}
	
	
	
	
}
