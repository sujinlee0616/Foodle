package com.sist.dao;

import java.util.*;
import com.sist.vo.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class ReplyBoardDAO {
	
	private static SqlSessionFactory ssf;
	static
	{
		ssf=CreateSQLSessionFactory.getSsf();
	}

	
	// [답글형 게시판 리스트]
	public static List<BoardVO> replyListData(Map map)
	{
		List<BoardVO> list = new ArrayList<BoardVO>();
		SqlSession session=null;
		try
		{
			session=ssf.openSession(); // GetConnection
			list=session.selectList("replyListData",map); 
			
		}catch (Exception ex) {
			System.out.println("replyListData: "+ex.getMessage());
		}finally {
			if(session!=null)
				session.close();
		}
		
		
		return list;
	}
	
	
}











