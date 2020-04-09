package com.sist.member.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.MemberDAO;
import com.sist.vo.MemberVO;

@Controller
public class MemberModel {
	
	// 로그인
	@RequestMapping("member/login.do")
	public String login(HttpServletRequest request, HttpServletResponse response)
	{
		
		String id=request.getParameter("user_id"); // getParameter 안의 "id"는 login.jsp의 login_frm의 name="user_id"임 
		String pwd=request.getParameter("user_pwd");
		
		// DAO 연결
		MemberVO vo=MemberDAO.memberLogin(id, pwd); // 얘가 문제....
		
		// 로그인 판정결과가 OK라면(ID/PWD 모두 일치) 세션에다가 id,name,admin값 저장 
		/*if(vo.getMsg().equals("OK")) 
		{
			HttpSession session=request.getSession();
			session.setAttribute("id", id);
			session.setAttribute("name", vo.getUname());
			session.setAttribute("usertype", vo.getUtype());
		}*/
		
		// 로그인 판정 결과(ID/PWD 맞는지 검사 후 판정결과를 세가지(OK/NOPWD/NOID)로 구분해서 msg에 값 String으로 넣음
		/*request.setAttribute("msg", vo.getMsg()); */
		
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../member/login.jsp");
		
		return "../main/main.jsp";
	}
	
	// [회원가입] 
	@RequestMapping("member/signup.do")
	public String signup(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../member/signup.jsp");
		// request.setAttribute("path", "../");
		return "../main/main.jsp";
	}
	
	// [로그아웃]
	@RequestMapping("member/logout.do")
	public String member_logout(HttpServletRequest request,HttpServletResponse response)
	{
		HttpSession session=request.getSession();
		session.invalidate();
		return "redirect:../main/main.do";
	}

}
