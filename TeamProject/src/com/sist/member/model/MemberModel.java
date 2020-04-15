package com.sist.member.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.service.dao.*;
import com.sist.service.vo.CompMemberVO;
import com.sist.service.vo.MemberVO;

@Controller
public class MemberModel {
	
	// [로그인]
	@RequestMapping("member/login.do")
	public String member_login(HttpServletRequest request, HttpServletResponse response)
	{		
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../member/login.jsp");
		return "../main/main.jsp";
	}
	
	// [로그인 처리] - 결과판정
	@RequestMapping("member/login_result.do")
	public String member_login_result(HttpServletRequest request,HttpServletResponse response)
	{
		String id=request.getParameter("id");  
		String pwd=request.getParameter("pwd");
		
		// DAO 연결
		MemberVO vo=MemberDAO.memberLogin(id, pwd); 
		
		// 로그인 판정결과가 OK라면(ID/PWD 모두 일치) 세션에다가 id,name,admin값 저장 
		if(vo.getMsg().equals("OK")) 
		{
			HttpSession session=request.getSession();
			session.setAttribute("id", id);
			session.setAttribute("name", vo.getUname());
			session.setAttribute("usertype", vo.getUtype());			
		}

		// 로그인 판정 결과(ID/PWD 맞는지 검사 후 판정결과를 세가지(OK/NOPWD/NOID)로 구분해서 msg에 값 String으로 넣음
		request.setAttribute("msg", vo.getMsg());
		
		return "../member/login_result.jsp";
	}
	
	// [로그아웃]
		@RequestMapping("member/logout.do")
		public String member_logout(HttpServletRequest request,HttpServletResponse response)
		{
			HttpSession session=request.getSession();
			session.invalidate();
			return "redirect:../main/main.do";
		}
	
	// [개인회원가입] 
	@RequestMapping("member/signup.do")
	public String signup(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../member/signup.jsp");
		return "../main/main.jsp";
	}
	
	// [개인회원가입 처리] - signup.jsp에서 signup_frm 전송완료 - signup_frm에 입력된 데이터를 DB에 넣기.
	@RequestMapping("member/signup_ok.do")
	public String signup_ok(HttpServletRequest request, HttpServletResponse response)
	{
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (Exception ex) {}
		
		String utype=request.getParameter("utype");
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		String name=request.getParameter("name");
		String gender=request.getParameter("gender");
		String birth=request.getParameter("birth").replace(" ", "0").replace(".", "");
		String email=request.getParameter("email");
		String pwd_hint=request.getParameter("pwd_hint");
		String pwd_hintAns=request.getParameter("pwd_hintAns");
		String cellnum=request.getParameter("cellnum");
		String telnum=request.getParameter("telnum");
		String address_main=request.getParameter("address_main");
		String postcode=request.getParameter("postcode");
		String address_detail=request.getParameter("address_detail");
		
		// 데이터 확인 
		//System.out.println("user_type="+utype+", id="+id+", pwd="+pwd+ ", name="+name+", gender="+gender);
		//System.out.println("birth="+birth+", email="+email+", pwd_hint="+pwd_hint+", pwd_hintAns="+pwd_hintAns);
		//System.out.println("cellnum="+cellnum+", telnum="+telnum);
		//System.out.println("address_main="+address_main+", postcode="+postcode+", address_detail="+address_detail);
		
		MemberVO vo = new MemberVO();
		vo.setUtype(utype);
		vo.setUserid(id);
		vo.setUpwd(pwd);
		vo.setUname(name);
		vo.setUgender(gender);
		vo.setUbirth(birth);
		vo.setUemail(email);
		vo.setHint(pwd_hint);
		vo.setHintans(pwd_hintAns);
		vo.setUphone(cellnum);
		vo.setUtel(telnum);
		vo.setUaddr1(address_main);
		vo.setUpost(postcode);
		vo.setUaddr2(address_detail);
	
		// DAO 연결 
		MemberDAO.memberInsert(vo);		
		
		return "redirect:../main/main.do";
	}
	
	// [기업회원가입] 
	@RequestMapping("member/signup_comp.do")
	public String signup_comp(HttpServletRequest request, HttpServletResponse response)
	{
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../member/signup_comp.jsp");
		return "../main/main.jsp";
	}
		
	// [기업회원가입 처리] - signup_comp.jsp에서 signup_frm 전송완료 - signup_frm에 입력된 데이터를 DB에 넣기.
	@RequestMapping("member/signup_comp_ok.do")
	public String signup_comp_ok(HttpServletRequest request, HttpServletResponse response)
	{
		try {
			request.setCharacterEncoding("UTF-8");
		} catch (Exception ex) {}
		
		String utype=request.getParameter("utype");
		String rId=request.getParameter("rId");
		String rPwd=request.getParameter("rPwd");
		String rName=request.getParameter("rName");
		String rTel=request.getParameter("rTel");
		String address_main=request.getParameter("address_main");
		String postcode=request.getParameter("postcode");
		String address_detail=request.getParameter("address_detail");
		String rType=request.getParameter("rType");
		String rArea=request.getParameter("rArea");
		String rAreaDetail=request.getParameter("rAreaDetail");
		
		// 데이터 확인 
		System.out.println("user_type="+utype+", rId="+rId+", rPwd="+rPwd+ ", rName="+rName+", rTel="+rTel);
		System.out.println("address_main="+address_main+", postcode="+postcode+", address_detail="+address_detail);
		System.out.println("rType="+rType+", rArea="+rArea+", rAreaDetail="+rAreaDetail);
		
		CompMemberVO vo = new CompMemberVO();
		vo.setuType(utype);
		vo.setrId(rId);
		vo.setrPwd(rPwd);
		vo.setrName(rName);
		vo.setrTel(rTel);
		vo.setrAddr1(address_main);
		vo.setrPost(postcode);
		vo.setrAddr2(address_detail);
		vo.setrType(rType);
		vo.setrArea(rArea);
		vo.setrAreaDetail(rAreaDetail);
	
		// DAO 연결 
		MemberDAO.compMemberInsert(vo);		
		
		return "redirect:../main/main.do";
	}
	
		
}
