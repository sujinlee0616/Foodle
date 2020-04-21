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
	
	// [답글쓰기]
	public static void boardReplyInsert(int pno,ReplyBoardVO vo)
	{
		SqlSession session=null;
		
		try
		{
			session=ssf.openSession();
			
			// 1. 엄마 글의 정보를 먼저 읽어 들어온다
			ReplyBoardVO pvo=session.selectOne("getParentInfo",pno); // 상위 글의 데이터 모음(pvo) 가져옴  
			System.out.println("1번 수행 완료");
			
			// 2. 같은 그룹 안에 있는 글들의 group_step 1씩 증가시킨다
			session.update("boardGroupStepIncrement",pvo);
			System.out.println("2번 수행 완료");
			
			// 3. 답글 insert함
			vo.setGroup_id(pvo.getGroup_id());
			vo.setGroup_step(pvo.getGroup_step()+1);
			vo.setGroup_tab(pvo.getGroup_tab()+1);
			vo.setRoot(pno);
			session.insert("boardReplyInsert",vo);
			System.out.println("3번 수행 완료");
			
			// 4.엄마글의 depth(자기 밑에 몇 개를 달고 있는지) 1개 증가시킴
			session.update("parentDetphIncrement",pno);
			System.out.println("4번 수행 완료");
			
			// 커밋 날림 - 1~4 다 정상수행하면 커밋하고 
			session.commit();
			
		}catch(Exception ex)
		{
			System.out.println("boardReplyInsert: "+ex.getMessage());
			session.rollback(); // 1~4 중 하나라도 정상수행 못한다면 롤백 
		}
		finally
		{
			if(session!=null)
				session.close(); 
		}
	}

	
	
	// [글 수정],[글 삭제] - 비번체크
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
	
	
	// [글 수정] - 실제처리
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
	
	// [글 삭제] - 실제 처리
	public static void boardDeleteData(int bno)
	{
		SqlSession session = null;
		
		try
		{
			session=ssf.openSession();
			
			// 삭제 대상 글의 데이터를 가지고 와서 
			ReplyBoardVO vo=session.selectOne("boardDetailData", bno);
			
			if(vo.getDepth()==0) { // 자식글 없으면 삭제시키고 엄마글의 depth 감소시킨다 
				session.delete("boardDeleteData",bno);
				session.update("parentDepthDecrement",vo.getRoot());
			}
			else { // 글은 냅두되 관리자가 삭제한 글이라고 바꾼다.
				vo.setBname("-");
				vo.setBsubject("관리자가 삭제한 게시물입니다");
				vo.setBcontent("관리자가 삭제한 게시물입니다.");
				vo.setBno(bno);
				session.update("boardSubjectUpdate",vo);
			}
			
			session.commit();			
			
		}catch (Exception ex) 
		{
			System.out.println("boardDeleteData: "+ex.getMessage());
			session.rollback();
		}
		finally
		{
			if(session!=null)
				session.close();
		}
		
	}
	
	
	
	
	
}











