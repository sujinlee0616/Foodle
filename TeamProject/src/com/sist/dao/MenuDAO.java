package com.sist.dao;

import java.sql.*;
import com.sist.vo.*;

public class MenuDAO {
	private Connection conn; // Socket
	private PreparedStatement ps;// OutputStream , BufferedReader
//	private final String URL="jdbc:oracle:thin:@211.238.142.207:1521:XE";
	private final String URL="jdbc:oracle:thin:@localhost:1521:XE";
			

	public MenuDAO()
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
	
	public void menuCreate() {
		try {
			getConnection();
			String sql="CREATE TABLE menu("
					  +"rNo NUMBER,"
					  +"mName VARCHAR2(500) CONSTRAINT menu_mName_nn NOT NULL,"
					  +"mPrice NUMBER CONSTRAINT menu_mPrice_nn NOT NULL,"
					  +"mInfo VARCHAR2(1000),"
					  +"mUsergoodCound NUMBER,"
					  +"mHostgood VARCHAR2(50),"
					  +"CONSTRAINT menu_rNo_fk FOREIGN KEY(rNO)"
					  +"REFERENCES mainInfo(rNo)"
					  + ")";
			/*String sql="CREATE TABLE menu("
					  +"rNo NUMBER,"
					  +"mName VARCHAR2(500) CONSTRAINT menu_mName_nn NOT NULL,"
					  +"mPrice NUMBER CONSTRAINT menu_mPrice_nn NOT NULL,"
					  +"mInfo VARCHAR2(1000),"
					  +"mUsergoodCound NUMBER,"
					  +"mHostgood VARCHAR2(50)"
					  + ")";*/
			ps=conn.prepareStatement(sql);
			ps.executeUpdate();

		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			disConnection();
		}
	}
	
	public void menuInsert(MenuVO vo) {
		try {
			getConnection();
			String sql="INSERT INTO menu VALUES(?,?,?,?,?,?)";
			
			ps=conn.prepareStatement(sql);
			ps.setInt(1, vo.getR_No());
			ps.setString(2, vo.getM_Name());
			ps.setInt(3, vo.getM_Price());
			ps.setString(4, vo.getM_Info());
			ps.setInt(5, vo.getM_UsergoodCount());
			ps.setString(6, vo.getM_Hostgood());
			
			ps.executeUpdate();
		} catch(Exception ex) {
			ex.printStackTrace();
		} finally {
			disConnection();
		}
	}
}
