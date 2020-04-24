package com.sist.dao;

import java.sql.*;

import com.sist.service.vo.ReplyBoardVO;
import com.sist.vo.*;

public class ReplyBoardCrDAO {

	private Connection conn;
	private PreparedStatement ps;
	private static ReplyBoardCrDAO dao; //싱글톤-DAO 객체를 하나만 만들거다. 
	private final String URL="jdbc:oracle:thin:@211.238.142.207:1521:XE";
	//private final String URL="jdbc:oracle:thin:@localhost:1521:XE";
	
	public ReplyBoardCrDAO()
    {
   	 try
   	 {
   		 Class.forName("oracle.jdbc.driver.OracleDriver");
   	 }catch(Exception ex) 
   	 {
   		 ex.printStackTrace();
   	 }
    }

	public void getConnection() {
		try {
			conn = DriverManager.getConnection(URL, "hr", "happy");
		} catch (Exception ex) {}
	}

	public void disConnection() {
		try {
			if (ps != null)
				ps.close();
			if (conn != null)
				conn.close();
		} catch (Exception ex) {}
	}
	
	// 3.DAO를 각 사용자당 한 개만 사용이 가능하게 만든다. ==> 싱글톤 
	public static ReplyBoardCrDAO newInstance()
	{
		if(dao==null)
			dao=new ReplyBoardCrDAO();
		return dao;
	}
	
	
	// [크롤링 데이터 삽입]
	public void crDataInsert(ReplyBoardVO vo)
	{
		try 
		{
			/*  [replyBoard 테이블]
			 *  BNO        NOT NULL NUMBER        // O
				USERID              VARCHAR2(50)  // X
				BNAME      NOT NULL VARCHAR2(30)  // O
				BSUBJECT   NOT NULL VARCHAR2(100) // O
				BCONTENT   NOT NULL CLOB          // O
				BPWD       NOT NULL VARCHAR2(20)  // O '1234'
				REGDATE             DATE          // X 디폴트값 있음 
				HIT                 NUMBER        // X 디폴트값 있음 
				GROUP_ID            NUMBER        // O SELECT MAX(NVL(... 
				GROUP_STEP          NUMBER        // X 디폴트값 있음  
				GROUP_TAB           NUMBER        // X 디폴트값 있음 
				ROOT                NUMBER        // X 디폴트값 있음 
				DEPTH               NUMBER        // X 디폴트값 있음 
				NOTICE              CHAR(1)   	  // X 디폴트값 있음 
			*/
			getConnection();
			String sql="INSERT INTO ReplyBoard (bno,bname,bsubject,bcontent,bpwd,group_id) "
					+ "VALUES(?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, vo.getBno());
			ps.setString(2, vo.getBname());
			ps.setString(3, vo.getBsubject());
			ps.setString(4, vo.getBcontent());
			ps.setString(5, "1234");
			ps.setInt(6, vo.getGroup_id());
			
			ps.executeUpdate(); //INSERT ==> executeUpdate()
		} 
		catch (Exception ex) 
		{
			ex.printStackTrace();
		}
		finally
		{
			disConnection();
		}
	}
	
}
