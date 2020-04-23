package com.sist.service.dao;

import java.util.*;
import java.sql.*;
import com.sist.service.vo.BoardCommentVO;

import oracle.jdbc.OracleTypes;

// 댓글 - 프로시저로 구현 
public class BoardCommentDAO {

	private static Connection conn;
	private static CallableStatement cs;
	private final static String URL="jdbc:oracle:thin:@211.238.142.207:1521:XE";
	// private final String URL="jdbc:oracle:thin:@localhost:1521:XE";
	
	// [드라이버 등록]
	public BoardCommentDAO(){
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception ex) {
			System.out.println(ex.getMessage());
		}
	}
	
	// [연결]
	public static void getConnection()
	{
		try {
			conn=DriverManager.getConnection(URL,"hr","happy");
		} catch (Exception ex) {}
	}
	
	// [해제]
	public static void disConnection()
	{
		try {
			if(cs!=null) cs.close();
			if(conn!=null) conn.close();
		} catch (Exception ex) {}
	}
	
	// [총 댓글 수]
	/* CREATE OR REPLACE PROCEDURE commentCount(
	    bNo NUMBER,
	    total OUT NUMBER
		).. */
	public static int commentCount(int bno)
	{
		int commentCount=0;
		
		try {
			getConnection();
			String sql="{CALL commentCount(?,?)}";
			cs=conn.prepareCall(sql);
			cs.setInt(1, bno);
			cs.registerOutParameter(2, OracleTypes.INTEGER);
			cs.executeUpdate(); // 실행 
			commentCount=cs.getInt(2); 
			
			
		} catch (Exception ex) {
			ex.printStackTrace();
		}finally {
			disConnection();
		}
		return commentCount;		
	}
	
	// [댓글출력] - 작성 중 .......... 
	public static List<BoardCommentVO> commentList(int bno)
	{
		List<BoardCommentVO> list = new ArrayList<BoardCommentVO>();
		
		try
		{
			getConnection();
			
			String sql="{CALL commentList(?,?)}";
			cs=conn.prepareCall(sql); 
			cs.setInt(1, bno);
			cs.registerOutParameter(2, OracleTypes.CURSOR);
			cs.executeQuery();
			ResultSet rs=(ResultSet)cs.getObject(2);
			
			while(rs.next())
			{
				BoardCommentVO vo=new BoardCommentVO();
				vo.setBno(rs.getInt(1));
				vo.setCno(rs.getInt(2));
				vo.setUserid(rs.getString(3));
				vo.setContent(rs.getString(4));
				vo.setRegdate(rs.getString(5));				
				list.add(vo);
			}
			rs.close();
			
		}catch (Exception ex) {
			ex.printStackTrace();
		}finally{
			disConnection();
		}
		
		return list;
	}
	
}







