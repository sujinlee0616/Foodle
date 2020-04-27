package com.sist.restaurant.model;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.service.dao.RestaurantDetailDAO;
import com.sist.service.dao.ReviewInsertDAO;
import com.sist.service.vo.ReviewVO;
import com.sist.vo.MainInfoVO;
import com.sist.vo.SubinfoVO;

@Controller
public class ReviewInsertModel {

	// [리뷰 작성] - 화면만 
	@RequestMapping("restaurant/review_insert.do")
	public String review_insert(HttpServletRequest request,HttpServletResponse response)
	{
		
		String no=request.getParameter("no");
		// DAO
		MainInfoVO mvo=RestaurantDetailDAO.resDetailMaininfo(Integer.parseInt(no));
		SubinfoVO svo=RestaurantDetailDAO.resDetailSubinfo(Integer.parseInt(no));
		
		// Detail 위쪽에 짧은 설명
		String strContent=svo.getrContent().substring(0, svo.getrContent().indexOf("다.")+2);
		
		// 찜
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		String myWish="";
		if(id==null) { // 로그인 X
			myWish="♡";
		}
		else { // 로그인 O
			Map map=new HashMap();
			map.put("id", id);
			map.put("rno",Integer.parseInt(no));
			
			int count=RestaurantDetailDAO.myWishCheck(map);
//			System.out.println("count="+count);
			if(count>0) { // 이미 찜이 되어있으면
				myWish="♥";
			}
			else {
				myWish="♡";
			}
		}
		
		request.setAttribute("mvo", mvo);
		request.setAttribute("svo", svo);
		request.setAttribute("strContent", strContent);
		request.setAttribute("myWish", myWish);
		
		request.setAttribute("main_header", "../common/header_sub.jsp");
		request.setAttribute("main_jsp", "../restaurant/review_insert.jsp");
		return "../main/main.jsp";
	}
	
	// [리뷰 작성] - 실제처리
	@RequestMapping("restaurant/review_insert_ok.do")
	public String review_insert_ok(HttpServletRequest request,HttpServletResponse response)
	{
		try
		{
			request.setCharacterEncoding("UTF-8");
		}catch(Exception ex){}
		
		// 클라이언트가 입력한 데이터를 가지고 온다
		String rNo=request.getParameter("rNo");
		String rating=request.getParameter("rating");
		String content=request.getParameter("content");
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		System.out.println("rNo="+rNo+", rating="+rating+", content="+content+", id="+id);
		
		// 클라이언트가 입력해준 데이터 VO에 저장 
		ReviewVO vo=new ReviewVO();
		
		// ============================================ ★★★ ============================================
		// 주석 풀고 set 하면 insert됨. 근데 lombok이 작동 안해서인지 리뷰 insert는 되는데 리뷰 리스트가 안 보임. 학원가서 해볼것. 
		//vo.setUserId(id);
		//vo.setrNo(Integer.parseInt(rNo));
		//vo.setRevScore(Double.parseDouble(rating));
		//vo.setRevContent(content);
		System.out.println("vo="+vo);
		
		// DAO 
		ReviewInsertDAO.reviewInsertData(vo);
		
		return "redirect:../restaurant/detail.do?no="+rNo;
	}
	
	// 리뷰쓰기 버튼 클릭 시
	@RequestMapping("restaurant/login_check.do")
	public String main_(HttpServletRequest request, HttpServletResponse response) 
	{
		HttpSession session=request.getSession();
		String id=(String)session.getAttribute("id");
		String result="";
		System.out.println("id="+id);
			
		// 로그인 X
		if(id==null)
			result="NotLoggedIn";
		// 로그인 O
		else
			result="LoggedIn";
		System.out.println("login_check_result="+result);
		
		request.setAttribute("result", result);
		return "../restaurant/login_check.jsp";
	}
	
}
