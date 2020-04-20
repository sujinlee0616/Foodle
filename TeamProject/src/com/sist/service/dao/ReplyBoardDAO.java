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
	public static List<ReplyBoardVO> boardListData(Map map)
	{
		List<ReplyBoardVO> list = new ArrayList<ReplyBoardVO>();
		SqlSession session=null;
		try
		{
			session=ssf.openSession(); // GetConnection
			list=session.selectList("boardListData",map); 
			
		}catch (Exception ex) {
			System.out.println("boardListData: "+ex.getMessage());
		}finally {
			if(session!=null)
				session.close();
		}	
		return list;
	}
	
	
	// [답글형 게시판 총 페이지]
	public static int boardTotalPage()
	{
		int total=0;
		SqlSession session=null;
		
		try
		{
			session=ssf.openSession();	
			total=session.selectOne("boardTotalPage");
			
		}catch(Exception ex)
		{
			System.out.println("boardTotalPage: "+ex.getMessage());
		}
		finally
		{
			if(session!=null)
				session.close(); // 반환 
		}
		
		return total;
	}
	
	// [총 글 수]
	public static int boardContentsCount()
	{
		int total=0;
		SqlSession session=null;
		
		try
		{
			session=ssf.openSession();	
			total=session.selectOne("boardContentsCount");
			
		}catch(Exception ex)
		{
			System.out.println("boardContentsCount: "+ex.getMessage());
		}
		finally
		{
			if(session!=null)
				session.close(); // 반환 
		}
		
		return total;
	}
	
	// [답변형 게시판 상세페이지]
	public static ReplyBoardVO boardDetailData(int no)
	{
		SqlSession session = null;
		ReplyBoardVO vo=new ReplyBoardVO();
		
		try
		{
			session=ssf.openSession();
			vo=session.selectOne("boardDetailData",no);
			
		}catch (Exception ex) {
			System.out.println("boardDetailData: "+ex.getMessage());
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
			
			vo=session.selectOne("boardDetailData", no);
			
		}catch (Exception ex) {
			System.out.println("hitIncrement: "+ex.getMessage());
		}finally
		{
			session.close();
		}
		
		return vo;
	}
	
	// [글쓰기]
	public static ReplyBoardVO boardInsertData(ReplyBoardVO vo)
	{
		SqlSession session = null;
		
		try
		{
			session=ssf.openSession(true);
			session.insert("boardInsertData",vo);
		}catch (Exception ex) 
		{
			System.out.println("boardInsertData: "+ex.getMessage());
		}
		finally
		{
			if(session!=null)
				session.close();
		}
		return vo;
	}
	
	// [글 수정] - 비번체크
	public static boolean boardCheckPwd(int bno,String user_input_pwd)
	{
		boolean checkPwd=false;
		SqlSession session = null;
		System.out.println("bno="+bno);
		
		try
		{
			session=ssf.openSession();
			String db_pwd=session.selectOne("boardCheckPwd", bno);
			System.out.println("db_pwd="+db_pwd);
			
			if(db_pwd.equals(user_input_pwd))
				checkPwd=true;
			else
				checkPwd=false;
			System.out.println("checkPwd="+checkPwd);
		}
		catch (Exception ex) 
		{
			System.out.println("boardCheckPwd: "+ex.getMessage());
		}
		finally
		{
			if(session!=null)
				session.close();
		}
		
		return checkPwd;
	}
	
	
	// [글 수정] - ★★★★★ 비밀번호 체크 로직 아직 안 만들었음 ★★★★★
	public static ReplyBoardVO boardUpdateData(ReplyBoardVO vo)
	{
		
		SqlSession session = null;
		
		try
		{
			session=ssf.openSession(true);
			session.update("boardUpdateData",vo);
			session.commit();
		}catch (Exception ex) 
		{
			System.out.println("boardUpdateData: "+ex.getMessage());
		}
		finally
		{
			if(session!=null)
				session.close();
		}
		return vo;
	}
	
	// [글 삭제] -  - ★★★★★ 비밀번호 체크 로직 아직 안 만들었음 ★★★★★
	public static void boardDeleteData(int bno)
	{
		SqlSession session = null;
		
		try
		{
			session=ssf.openSession(true);
			// 1. 비번 맞는지 체크해야 
			session.delete("boardDeleteData",bno);
			session.commit();
		}catch (Exception ex) 
		{
			System.out.println("boardDeleteData: "+ex.getMessage());
		}
		finally
		{
			if(session!=null)
				session.close();
		}
		
	}
	
	
	
	
	
}











