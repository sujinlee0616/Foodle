package com.sist.restaurant.model;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.service.dao.RestaurantDetailDAO;
import com.sist.vo.MainInfoVO;
import com.sist.vo.SubinfoVO;

@Controller
public class ReviewInsertModel {

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
	
	
	@RequestMapping("restaurant/review_insert_ok.do")
	public String review_insert_ok(HttpServletRequest request,HttpServletResponse response)
	{
		
		
		return "../main/main.jsp";
	}
	
	
}
