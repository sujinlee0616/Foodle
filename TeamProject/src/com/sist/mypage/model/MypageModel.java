package com.sist.mypage.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.dao.*;
import com.sist.service.dao.*;
import com.sist.service.vo.*;
import java.util.*;

@Controller
public class MypageModel {

	@RequestMapping("mypage/mypage.do")
	public String mypage_mypage(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../mypage/mypage.jsp");
		return "../main/main.jsp";
	}

	@RequestMapping("mypage/wish.do")
	public String mypage_wish(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		List<MyWishVO> list = new ArrayList<MyWishVO>();
		list = MypageDAO.mypageMyWishList((String) session.getAttribute("id"));

		request.setAttribute("list", list);
		
		return "../mypage/mypage_wish.jsp";
	}
	
	
	@RequestMapping("mypage/recentpage.do")
	public String mypage_recentpage(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		
		
		request.setAttribute("mypage_sub", "mypage_recentpage.jsp");
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../mypage/mypage.jsp");
		return "../main/main.jsp";
	}

	@RequestMapping("mypage/reserve.do")
	public String mypage_reserve(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		List<ReservationVO> list = new ArrayList<ReservationVO>();
		list = MypageDAO.mypageReserveList((String) session.getAttribute("id"));

		request.setAttribute("list", list);

		return "../mypage/mypage_reserve.jsp";
	}
	
	@RequestMapping("mypage/review.do")
	public String mypage_review(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		List<ReviewVO> list = new ArrayList<ReviewVO>();
		list = MypageDAO.mypageReviewList((String) session.getAttribute("id"));

		request.setAttribute("list", list);

		return "../mypage/mypage_review.jsp";
	}
	
	@RequestMapping("mypage/coupon.do")
	public String mypage_coupon(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		List<CouponVO> list = new ArrayList<CouponVO>();
		list = MypageDAO.mypageCouponList((String) session.getAttribute("id"));

		request.setAttribute("list", list);

		return "../mypage/mypage_coupon.jsp";
	}
	



	@RequestMapping("mypage/infoupdate_check.do")
	public String mypage_infoupdate_check(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();

		return "../mypage/mypage_infoupdate_check.jsp";
	}

	@RequestMapping("mypage/infoupdate_check_ok.do")
	public String mypage_infoupdate_check_ok(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		MemberVO vo = new MemberVO();

		String id = (String) session.getAttribute("id");
		String pwd = request.getParameter("pwd");

		vo = MypageDAO.mypage_infoupdate_check(pwd, id);

		if (vo.getMsg().equals("OK")) {
			request.setAttribute("vo", vo);
			
			
			return "../mypage/mypage_infoupdate.jsp";
		} else {
			return "../mypage/mypage_infoupdate_check.jsp";
		}
	}

	@RequestMapping("mypage/infoupdate_ok.do")
	public String mypage_infoupdate_ok(HttpServletRequest request, HttpServletResponse response) {
		
		try {
			request.setCharacterEncoding("UTF-8");

			HttpSession session = request.getSession();
	
			String utype = request.getParameter("utype");
			String id = request.getParameter("id");
			String pwd = request.getParameter("pwd");
			String name = request.getParameter("name");
			String gender = request.getParameter("gender");
			String birth = request.getParameter("birth").replace(" ", "0").replace(".", "");
			String email = request.getParameter("email");
			String pwd_hint = request.getParameter("pwd_hint");
			String pwd_hintAns = request.getParameter("pwd_hintAns");
			String cellnum = request.getParameter("cellnum");
			String telnum = request.getParameter("telnum");
			String address_main = request.getParameter("address_main");
			String postcode = request.getParameter("postcode");
			String address_detail = request.getParameter("address_detail");

			 //데이터 확인
	/*		 System.out.println("user_type="+utype+", id="+id+", pwd="+pwd+ 
					 ",name="+name+", gender="+gender);
			 System.out.println("birth="+birth+", email="+email+
					 ",pwd_hint="+pwd_hint+", pwd_hintAns="+pwd_hintAns);
			 System.out.println("cellnum="+cellnum+", telnum="+telnum);
			 System.out.println("address_main="+address_main+
					 ",postcode="+postcode+", address_detail="+address_detail);*/

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
			MypageDAO.mypage_infoupdate_ok(vo);
		} catch (Exception ex) {
			
		}
		
		return "redirect:mypage.do";
	}

	




	
	
	
	
	
	
	
//	@RequestMapping("mypage/test.do")
//	public String test(HttpServletRequest request, HttpServletResponse response) {
//		
//		request.setAttribute("main", arg1);
//		return "../main/main/jsp";
//	}
	@RequestMapping("mypage/test_ok.do")
	public String test_ok(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		
		List<MyWishVO> list = new ArrayList<MyWishVO>();
		list = MypageDAO.mypageMyWishList((String) session.getAttribute("id"));


		
		//[{a,b,c,d}]
		String json ="[";
				
		for(int i = 0 ; i < list.size() ; i++)
		{
			json +="{";
			json +="rno:";
			json +="\"";
			json +=list.get(i).getRno();
			json +="\"";
			json +=",";
			json +="regdate:";
			json +="\"";
			json +=list.get(i).getRegdate();
			json +="\"";
			json +=",";
			json +="userid:";
			json +="\"";
			json +=list.get(i).getUserid();
			json +="\"";
			json +=",";
			json +="wishno:";
			json +="\"";
			json +=list.get(i).getWishno();
			json +="\"";
			json +="}";
			json +=",";	
		}
		json=json.substring(0,json.length()-1);
		json +="]";
		
		System.out.println(json);
		
		request.setAttribute("list", json);
		

		return "../mypage/test_ok.jsp";
	}
		
}
