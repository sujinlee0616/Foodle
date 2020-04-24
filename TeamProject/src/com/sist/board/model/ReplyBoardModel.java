package com.sist.board.model;

import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

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
		
		// 댓글 개수 ★
		for(ReplyBoardVO vo:list)
		{
			vo.setCmtCount(ReplyBoardDAO.listCmtCount(vo.getBno()));
		}
		
		// Pagination
		int startpage=1;
		int endpage=1;
		int pageScope=10;
		startpage=((int) Math.floor((curpage-1)/10))*pageScope+1;
		endpage=((int) Math.floor((curpage-1)/10))*pageScope+pageScope;
		if(endpage>totalpage)
			endpage=totalpage;
		//System.out.println("curpage="+curpage+", totalpage="+totalpage+", startpage="+startpage+", endpage="+endpage);
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
		String bno=request.getParameter("bno");
		
		// 상세보기 ==> 글 내용 받아오고, 조회수 증가 
		ReplyBoardVO vo=ReplyBoardDAO.boardDetailData(Integer.parseInt(bno));
		vo=ReplyBoardDAO.hitIncrement(Integer.parseInt(bno));
		request.setAttribute("vo", vo);
		
		// ================ 댓글 ================
		
		// [총 댓글 수] 
		Map map=new HashMap();
		map.put("pNo", Integer.parseInt(bno)); 		
		int commentCount=BoardCommentDAO.commentCount(map);
		request.setAttribute("commentCount", commentCount);
			
		// [댓글목록]
		map=new HashMap();
		map.put("pNo", Integer.parseInt(bno)); 		
		List<BoardCommentVO> cmt_list=BoardCommentDAO.cmtList(map);
		request.setAttribute("cmt_list", cmt_list);

		
		// ================ 상세보기 하단 리스트 ================
		String page=request.getParameter("page");
		if(page==null)
			page="1";
		int curpage=Integer.parseInt(page);
		// VO에 start랑 end는 없으니까 map 사용 
		map=new HashMap();
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
		
		// 댓글 개수 ★
		for(ReplyBoardVO cmtvo:list)
		{
			cmtvo.setCmtCount(ReplyBoardDAO.listCmtCount(cmtvo.getBno()));
		}
		
		// Pagination
		int startpage=1;
		int endpage=1;
		int pageScope=10;
		startpage=((int) Math.floor((curpage-1)/10))*pageScope+1;
		endpage=((int) Math.floor((curpage-1)/10))*pageScope+pageScope;
		if(endpage>totalpage)
			endpage=totalpage;
		//System.out.println("curpage="+curpage+", totalpage="+totalpage+", startpage="+startpage+", endpage="+endpage);
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
		// id 어떻게 받아올 것인가? - 아래와 같이 받아오면 됨 - 아래 두 줄.
		//HttpSession session=request.getSession();
		//String id=(String)session.getAttribute("id");
		
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
	
	// [답글쓰기]
	@RequestMapping("board/reply.do")
	public String board_reply(HttpServletRequest request,HttpServletResponse response)
	{
		String pno=request.getParameter("pno");
		
		request.setAttribute("pno", pno);
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../board/reply.jsp");
		
		return "../main/main.jsp";
	}
	
	// [답글쓰기] - 실제 처리 
	@RequestMapping("board/reply_ok.do")
	public String board_reply_ok(HttpServletRequest request,HttpServletResponse response)
	{
		try
		{
			request.setCharacterEncoding("UTF-8");
		}catch(Exception ex){}
		
		String pno=request.getParameter("pno"); //엄마글 번호 
		System.out.println("pno="+pno);
		
		// 클라이언트 입력 데이터 
		String bname=request.getParameter("name");
		String bsubject=request.getParameter("subject");
		String bcontent=request.getParameter("content");
		String bpwd=request.getParameter("pwd");

		// 데이터 확인
		//System.out.println("bname="+bname+", bsubject="+bsubject+", bcontent="+bcontent+", bpwd="+bpwd);
		
		// 클라이언트가 입력해준 데이터 VO에 저장 
		ReplyBoardVO vo = new ReplyBoardVO();
		vo.setBname(bname);
		vo.setBsubject(bsubject);
		vo.setBcontent(bcontent);
		vo.setBpwd(bpwd);
		
		// VO를 INSERT 하게 mapper에서 수행 
		ReplyBoardDAO.boardReplyInsert(Integer.parseInt(pno), vo);
				
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
	
	// [글 수정], [글 삭제] - 비번체크 
	@RequestMapping("board/pwd_check.do")
	public String board_pwd_check(HttpServletRequest request,HttpServletResponse response) 
	{
		// 클라이언트가 보내준 데이터
		String no=request.getParameter("bno");
		String user_input_pwd=request.getParameter("pwd"); // 클라이언트가 입력한 데이터  
		//System.out.println("user_input_pwd="+user_input_pwd);
		
		// 클라이언트가 입력한 비번과 DB의 실제비번이 같은지 확인
		boolean result=ReplyBoardDAO.boardCheckPwd(Integer.parseInt(no),user_input_pwd); 
		//System.out.println("result="+result);
		
		request.setAttribute("result", result);
		
		return "../board/pwd_check.jsp";
	}

	
	// [글 수정] - 실제 수정, 데이터 update
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
		
		// 이 데이터들을 VO에 담아서...
		ReplyBoardVO vo=new ReplyBoardVO();
		vo.setBno(Integer.parseInt(bno));
		vo.setBname(bname);
		vo.setBsubject(bsubject);
		vo.setBcontent(bcontent);
		
		// DAO 연동
		ReplyBoardDAO.boardUpdateData(vo);
		
		return "redirect:../board/detail.do?&bno="+bno;
	}
	
	
	// [글 삭제] - 화면만 보여줌
	@RequestMapping("board/delete.do")
	public String board_delete(HttpServletRequest request,HttpServletResponse response)
	{
		String bno=request.getParameter("bno");
		request.setAttribute("bno", bno);	
		
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../board/delete.jsp"); 
		return "../main/main.jsp";
	}
	
	// [글 삭제] - 실제 삭제 
	@RequestMapping("board/delete_ok.do")
	public String board_delete_ok(HttpServletRequest request,HttpServletResponse response)
	{
		String bno=request.getParameter("bno");
		String pwd=request.getParameter("pwd");
		
		ReplyBoardDAO.boardDeleteData(Integer.parseInt(bno));
		
		return "redirect:../board/list.do";
	}
	
	// [댓글 작성]  
	@RequestMapping("board/comment_insert.do")
	public String comment_insert(HttpServletRequest request,HttpServletResponse response)
	{
		try
		{
			request.setCharacterEncoding("UTF-8");
		}catch(Exception ex){}
		
		String bno=request.getParameter("bno"); 
		HttpSession session=request.getSession();
		String userid=(String)session.getAttribute("id");		
		String content=request.getParameter("cmtContent");
		System.out.println("bno="+bno);
		System.out.println("userid="+userid);
		
		Map map=new HashMap();
		map.put("pBno", Integer.parseInt(bno));
		map.put("pUserId", userid);
		map.put("pContent", content);
		BoardCommentDAO.commentInsert(map);		
		
		return "redirect:../board/detail.do?&bno="+bno;
	}

	// [댓글 삭제] 
	@RequestMapping("board/comment_delete.do")
	public String comment_delete(HttpServletRequest request,HttpServletResponse response)
	{
		String bno=request.getParameter("bno"); // 리다이렉트 할 때만 필요함 
		String cno=request.getParameter("cno");// 데이터 처리할 땐 사실 cno만 있으면 됨
		//System.out.println("bno="+bno);
		//System.out.println("cno="+cno);
		
		Map map=new HashMap();
		map.put("pCno", Integer.parseInt(cno));
		BoardCommentDAO.commentDelete(map);		
		
		return "redirect:../board/detail.do?&bno="+bno;
	}
	
	// [댓글 수정] 
	@RequestMapping("board/comment_update.do")
	public String comment_update(HttpServletRequest request,HttpServletResponse response)
	{
		String bno=request.getParameter("bno"); // 리다이렉트 할 때만 필요함
		String cno=request.getParameter("cno");
		//System.out.println("bno="+bno);
		//System.out.println("cno="+cno);
		
		Map map=new HashMap();
		map.put("pCno", Integer.parseInt(cno));
		BoardCommentDAO.commentUpdate(map);	
		
		return "redirect:../board/detail.do?&bno="+bno;
	}
	
	
	
}
