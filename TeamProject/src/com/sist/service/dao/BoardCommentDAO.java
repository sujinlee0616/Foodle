package com.sist.service.dao;

import java.util.*;


import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.sql.*;

import java.sql.*;
import java.util.*;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.sist.service.vo.BoardCommentVO;

import oracle.jdbc.OracleTypes;

// 댓글 - 프로시저로 구현 
public class BoardCommentDAO {

	private static SqlSessionFactory ssf; // 파싱하는 애 
	static
	{
		ssf=CreateSQLSessionFactory.getSsf();
	}
	
	
	// [총 댓글 수]
	/* CREATE OR REPLACE PROCEDURE commentCount(
	    bNo NUMBER,
	    total OUT NUMBER
		).. */
	public static int commentCount(Map map) 
	{
		int commentCount=0;
		SqlSession session=null;
		
		try {
			session=ssf.openSession();
			session.update("commentCount",map);
			commentCount=(int)map.get("total");
			//System.out.println("DAO commentCount="+commentCount);
		} 
		catch (Exception ex) {
			System.out.println("commentCount: "+ex.getMessage());
		}
		finally {
			if(session!=null)
				session.close();
		}
		return commentCount;		
	}
	
	// [댓글출력]
	public static List<BoardCommentVO> cmtList(Map map)
	{
		List<BoardCommentVO> list = new ArrayList<BoardCommentVO>();
		SqlSession session=null;
		
		try
		{
			session=ssf.openSession();
			session.update("cmtList",map);
			list=(ArrayList<BoardCommentVO>)map.get("cResult");
			//System.out.println("DAO list="+list);
		} 
		catch (Exception ex) 
		{
			System.out.println("cmtList: "+ex.getMessage());
		} 
		finally {
			if(session!=null)
				session.close();
		}
		return list;
	}
	
	// [댓글 작성]
	public static void commentInsert(Map map)
	{
		SqlSession session=null;
		try {
			session=ssf.openSession(); // 프로시저에서 커밋해주니까 내가 따로 오토커밋 설정 안 해줘도 됨 
			session.update("commentInsert",map); // 프로시저 호풀할 땐 항상 update로
		} 
		catch (Exception ex) {
			System.out.println("commentInsert: "+ex.getMessage());
		} 
		finally {
			if(session!=null)
				session.close();
		}
	}
	// [댓글 삭제]
	public static void commentDelete(Map map)
	{
		SqlSession session=null;
		try {
			session=ssf.openSession(); // 프로시저에서 커밋해주니까 내가 따로 오토커밋 설정 안 해줘도 됨 
			session.update("commentDelete",map); // 프로시저 호풀할 땐 항상 update로
		} 
		catch (Exception ex) {
			System.out.println("commentDelete: "+ex.getMessage());
		} 
		finally {
			if(session!=null)
				session.close();
		}
	}
	
	// [댓글 수정]
	public static void commentUpdate(Map map)
	{
		SqlSession session=null;
		try {
			session=ssf.openSession(); // 프로시저에서 커밋해주니까 내가 따로 오토커밋 설정 안 해줘도 됨 
			session.update("commentUpdate",map); // 프로시저 호풀할 땐 항상 update로
		} 
		catch (Exception ex) {
			System.out.println("commentUpdate: "+ex.getMessage());
		} 
		finally {
			if(session!=null)
				session.close();
		}
	}
	
	// [대댓글 달기]
	public static void commentReply(Map map)
	{
		SqlSession session=null;
		try {
			session=ssf.openSession(); 
			session.update("commentReply",map); 
		} 
		catch (Exception ex) {
			System.out.println("commentReply: "+ex.getMessage());
		} 
		finally {
			if(session!=null)
				session.close();
		}
	}
	
}







