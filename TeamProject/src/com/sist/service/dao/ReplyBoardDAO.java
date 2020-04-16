package com.sist.service.dao;

import java.util.*;
import com.sist.service.vo.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class ReplyBoardDAO {
	
	private static SqlSessionFactory ssf;
	static
	{
		ssf=CreateSQLSessionFactory.getSsf();
	}

	
	// [답글형 게시판 리스트]
	public static List<ReplyBoardVO> replyListData(Map map)
	{
		List<ReplyBoardVO> list = new ArrayList<ReplyBoardVO>();
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
	
	
	// [답글형 게시판 총 페이지]
	public static int replyTotalPage()
	{
		int total=0;
		SqlSession session=null;
		
		try
		{
			session=ssf.openSession();	
			total=session.selectOne("replyTotalPage");
			
		}catch(Exception ex)
		{
			System.out.println("replyTotalPage: "+ex.getMessage());
		}
		finally
		{
			if(session!=null)
				session.close(); // 반환 
		}
		
		return total;
	}
	
	// [답변형 게시판 상세페이지]
	public static ReplyBoardVO replyDetailData(int no)
	{
		SqlSession session = null;
		ReplyBoardVO vo=new ReplyBoardVO();
		
		try
		{
			session=ssf.openSession();
			vo=session.selectOne("replyDetailData",no);
			
		}catch (Exception ex) {
			System.out.println("replyDetailData: "+ex.getMessage());
		}finally
		{
			session.close();
		}
		
		return vo;
	}
	
	// [답변형 게시판 상세페이지 조회 시 조회수 증가]
	public static ReplyBoardVO hitIncrement(int no)
	{
		SqlSession session = null;
		ReplyBoardVO vo=new ReplyBoardVO();
		
		try
		{
			session=ssf.openSession();
			session.update("hitIncrement",no);
			session.commit();
			
			vo=session.selectOne("replyDetailData", no);
			
		}catch (Exception ex) {
			System.out.println("hitIncrement: "+ex.getMessage());
		}finally
		{
			session.close();
		}
		
		return vo;
	}
	
	// [글쓰기]
	public static ReplyBoardVO replyInsertData(ReplyBoardVO vo)
	{
		SqlSession session = null;
		
		try
		{
			session=ssf.openSession(true);
			session.insert("replyInsertData",vo);			
		}catch (Exception ex) 
		{
			System.out.println("replyInsertData: "+ex.getMessage());
		}
		finally
		{
			if(session!=null)
				session.close();
		}
		return vo;
	}
	
}











