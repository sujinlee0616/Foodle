package com.sist.restaurant.model;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
import com.sist.service.dao.NearbyListDAO;
import com.sist.vo.TestVO;

@Controller
public class NearByNewModel {
	
	//주변맛집 인클루드 and (디폴트 페이지 처리해야하는 곳!)
	@RequestMapping("restaurant/list_nearby.do")
	public String list_nearby(HttpServletRequest request, HttpServletResponse response)
	{

		List<TestVO> list=NearbyListDAO.nearbyDefault();
		
		request.setAttribute("defList", list);
		request.setAttribute("main_header", "../common/header_sub.jsp"); 
		//값에 해당하는 부분 작성 법: 기준 : @RequestMapping("restaurant/list_nearby.do") 에서 list_nearby.do가 기준이 되어
		//기준되는 파일이 해당 키("main_jsp")가 값("../restaurant/list_nearby.jsp")에 있는 페이지까지 가기위한 경로를 주는 것이다.
		request.setAttribute("main_jsp", "../restaurant/list_nearby.jsp");

		
		return "../main/main.jsp"; //값에 해당하는 페이지가 인클루드 되어있는 부모 페이지로 가기위한 경로 
		
	}
	

	@RequestMapping("restaurant/list_nearby_default.do")
	public String list_nearby_default(HttpServletRequest request, HttpServletResponse response)
	{

		List<TestVO> dlist=NearbyListDAO.nearbyDefault();	
		request.setAttribute("result", dlist);
			
		return "/restaurant/list_nearby_result.jsp";
	}
	
	
	
	
	
	@RequestMapping("restaurant/list_nearby_result.do" )
	public  String list_nearby_restruant(HttpServletRequest request, HttpServletResponse response)
	{
		
		//사용자로 받은 값 console창에 나타내봄
		request.getParameter("type_name");
		String aa =request.getParameter("takeout_col");
		//request.setAttribute("result", aa);
		
		//System.out.println(">  >"+aa+"<"); // 한식 
		
		
		//사용자로 부터 받은 값이 여러개이기 때문에 Map으로 받아서 DAO로 넣을 예정!
		//request들을 넣을 Map 객체 생성!
		Map<String, String> nearbyResultRequest = new HashMap<String, String>();
		// "menu_priceAsc":sortbyLprice
		nearbyResultRequest.put("lowPrice_col",request.getParameter("lowPrice_col"));
		nearbyResultRequest.put("type_name", request.getParameter("type_name"));     // 업종선택시 받은값
		nearbyResultRequest.put("rest_open", request.getParameter("rest_open"));     // 가게 오픈 여부 받은 값
		nearbyResultRequest.put("sortby_col", request.getParameter("sortby_col"));   // 정렬순 정보 받은 값
		nearbyResultRequest.put("takeout_col", request.getParameter("takeout_col"));  // 테이브아웃 정보 받은 값
		//map의 Key로 Mapper랑 맵핑되고 거기에 들어가는 값은 map의 밸류
		
		
		//request들을 담은 Map 객체에 
		List<TestVO> nearbyList = NearbyListDAO.nearbyResult(nearbyResultRequest);
				
		//Ajax로 결과 보냄!!
		request.setAttribute("result", nearbyList);
		
		System.out.println("list>>>>>>>>>>>");
		System.out.println(nearbyList);

		
		return "/restaurant/list_nearby_result.jsp"; //ajax되어 불려오는 JSP로 보내야한다. 인클루드가 된것이 아니기 때문에 MAIN으로 보낼 필요X
		
	}

}
