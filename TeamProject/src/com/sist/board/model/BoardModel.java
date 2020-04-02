package com.sist.board.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.sist.controller.Controller;
import com.sist.controller.RequestMapping;
@Controller
public class BoardModel {
	@RequestMapping("site/board/list.do")
	public String board_list(HttpServletRequest request, HttpServletResponse response)
	{
		return "";
	}
}
