package com.sist.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.*;

import javax.naming.*;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.sist.manager.*;
import com.sist.vo.DetailThemaVO;
import com.sist.vo.MainThemaVO;

//connection pool

public class detailThemaDAO {

	private Connection conn;
	private PreparedStatement ps;
	private static detailThemaDAO dao; //싱클톤 만들기
	private ThemaManager mgr;
	private final String URL="jdbc:oracle:thin:@211.238.142.207:1521:XE";

		public detailThemaDAO(){
		
		try
		{
			
		Class.forName("oracle.jdbc.driver.OracleDriver");
			
		}catch(Exception ex)
		{
			
			System.out.println(ex.getMessage());
			
		}
		
	}
	
	
	//연결
	public void getConnection()
	{
		try
		{
			
			conn=DriverManager.getConnection(URL, "hr", "happy");
			
			/*
			Context init=new InitialContext(); //탐색기 열기
			Context c=(Context)init.lookup("java://comp//env");
			DataSource ds=(DataSource)c.lookup("jdbc/oracle");
			conn=ds.getConnection();
			*/
			
		}catch(Exception ex)
		{
			ex.printStackTrace();	
		}
		
	}
	
	//반환
	public void disConnection()
	{
		try
		{
			if(ps!=null) ps.close();
			if(conn!=null) conn.close();
			
		}catch(Exception ex) {}
		
	}
	
	public static detailThemaDAO newInstance()
	{
		if(dao==null)
			dao=new detailThemaDAO();
		return dao;
		
	}
	
	public void mainThemaInsert(MainThemaVO vo)
	{
		try{
			
			getConnection();
			
			String sql="INSERT INTO mainThema VALUES(?,?,?)"; 
			
			ps=conn.prepareStatement(sql);
			
			ps.setString(1, vo.getT_MainThema());
			ps.setString(2, vo.getT_DetailThema());
			ps.setString(3, vo.getT_Info());
			
			ps.executeUpdate();
			
			
		}catch(Exception ex)
		{
			ex.printStackTrace();
			
		}finally
		{
			disConnection();
			
		}
		
		
	}
	
	
	public void detailThemaInsert(DetailThemaVO vo)
	{
		try{
			
			getConnection();
			
			String sql="INSERT INTO detailThema VALUES(?,?)";
			
			ps=conn.prepareStatement(sql);
			
			ps.setString(1, vo.getT_DetailThema());
			ps.setString(2, vo.getT_Info());
			
			ps.executeUpdate();
			
			
			
		}catch(Exception ex)
		{
			
			ex.printStackTrace();
			
		}finally{
			
			disConnection();
		}
		
		
	}
	
	
	
	
	
	
}
