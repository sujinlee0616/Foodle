package com.sist.dao;


import java.sql.Connection;
import java.sql.*;

import com.sist.vo.*;

public class MainInfoDAO { //오라클에 연결하는 클래스

	private Connection conn;  // 오라클 연결
	private PreparedStatement ps; // sql문장 읽기 
	private static MainInfoDAO dao; //싱글톤 생성
	private final String URL="jdbc:oracle:thin:@localhost:1521:XE";
	
	public MainInfoDAO(){ //생성자
		
		try{
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
		}catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
	}
	
		//오라클 연결
		public void getConnection(){
			
			
			try
			{
				conn=DriverManager.getConnection(URL,"hr","happy");
				
			}catch(Exception ex) {}	
		}
		
		//오라클 해제
		public void disConnection()
		{
			
			try
			{
				
				if(ps!=null) ps.close();
				if(conn!=null) conn.close();
				
				
			}catch(Exception ex) {}		
		}
	
		public static MainInfoDAO newInstance()
		{
			if(dao==null)
				dao=new MainInfoDAO();
			return dao;
			
		}
		
	
		
	
		
		public void MainInfoCreate() {
			
			try {
				getConnection();

				String sql = "CREATE TABLE Maininfo(rNo VARCHAR2(1000), rName VARCHAR2(1000),rType VARCHAR2(1000),rTel VARCHAR2(1000),"
							+ "rScore VARCHAR2(1000),rScoreCount VARCHAR2(1000),"
							+ "rAddr1 VARCHAR2(1000),rAddr2 VARCHAR2(1000),"
							+ "rPwd VARCHAR2(1000),rArea VARCHAR2(1000),rAreaDetail VARCHAR2(1000))";
				
				
				ps = conn.prepareStatement(sql);
				ps.executeQuery();

			} catch (Exception ex) {
				ex.printStackTrace();
			} finally {
				disConnection();
			}
		}
	
		
		
		
		

	public void MainInfoInsert(MainInfoVO vo) {
		
		try {
			getConnection();
			String sql = "INSERT INTO maininfo VALUES(?,?,?,?,?,?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);




			ps.setString(1, String.valueOf(vo.getR_No()));

			ps.setString(2, vo.getR_Name());
			ps.setString(3, vo.getR_Type());
			ps.setString(4, vo.getR_Tel());
			ps.setString(5, String.valueOf(vo.getR_Score()));
			ps.setString(6, String.valueOf(vo.getR_ScoreCount()));
			ps.setString(7, vo.getR_Addr1());
			ps.setString(8, vo.getR_Addr2());
			ps.setString(9, "1234");

			ps.setString(10, vo.getR_Area());
			ps.setString(11, vo.getR_AreaDetail());

			ps.executeUpdate();

		} catch (Exception ex) {
			
			ex.printStackTrace();
			
		} finally {
			
			disConnection();

		}
	}

	
	
	
	
		
		
	
}
