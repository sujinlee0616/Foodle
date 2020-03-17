package com.sist.dao;

import java.sql.*;
import java.util.*;
import com.sist.vo.*;

public class InfoThemeDAO {
	
	private Connection conn;
	private PreparedStatement ps;
	private final String URL="jdbc:oracle:thin:@localhost:1521:XE";
	
	// 1. 드라이버 등록
	public InfoThemeDAO() {
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver");
		}catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
	}
	// 2. 연결
	public void getConnection()
	{
		try 
		{
			conn=DriverManager.getConnection(URL,"hr","happy");
		} catch (Exception ex) {}
	}
	// 3. 연결 해제 
	public void disConnection()
	{
		try 
		{
			if(ps!=null) ps.close();
			if(conn!=null) conn.close();
		} catch (Exception ex) {}
	}
	
	public void resThemeInsert(InfoThemaVO vo)
	{

		try 
		{
			getConnection();
			String sql="INSERT INTO infoThema VALUES("
					+"(SELECT NVL(MAX(mno)+1,1) FROM music_genie),?)";
			/* <infoThema 테이블>
		    RNO    NOT NULL NUMBER       
			RTHEMA          VARCHAR2(50) 
			 */			
			ps=conn.prepareStatement(sql);
			ps.setString(1, vo.getR_Thema());
			ps.executeUpdate();
			
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
