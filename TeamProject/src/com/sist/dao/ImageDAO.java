package com.sist.dao;
import java.util.*;
import java.sql.*;
import com.sist.vo.*;
public class ImageDAO {
	
	private Connection conn; // Socket
	private PreparedStatement ps;// OutputStream , BufferedReader
	private final String URL="jdbc:oracle:thin:@211.238.142.207:1521:XE";
//	private final String URL="jdbc:oracle:thin:@localhost:1521:XE";
			

	// 드라이버 등록 => 한번만 수행
	public ImageDAO()
     {
    	 try
    	 {
    		 Class.forName("oracle.jdbc.driver.OracleDriver");
    	 }catch(Exception ex) 
    	 {
    		 ex.printStackTrace();
    	 }
     }

	// 오라클 연결
	public void getConnection() {
		try {
			conn = DriverManager.getConnection(URL, "hr", "happy");
		} catch (Exception ex) {
		}
	}

	// 오라클 해제
	public void disConnection() {
		try {
			if (ps != null)
				ps.close();
			if (conn != null)
				conn.close();
		} catch (Exception ex) {
		}
	}
	// 오라클에 이미지 테이블 생성하기!
	public void CreateImageTable()
	{
		try {
			getConnection();
			String sql="CREATE TABLE image("
					+ "rno NUMBER, "
					+ "iname VARCHAR2(200) CONSTRAINT image_iname_nn NOT NULL, "
					+ "ilink VARCHAR2(2000) CONSTRAINT image_ilink_nn NOT NULL, "
					+ "CONSTRAINT image_rno_fk FOREIGN KEY(rno) "
					+ "REFERENCES maininfo(rno));";
			ps=conn.prepareStatement(sql);
			ps.executeQuery();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnection();
		}
	}
	
	// 이미지 오라클에 넣기!
	public void InsertImageData(ImageVO vo)
	{
		try {
			getConnection();
			String sql="INSERT INTO image VALUES("
					+ "?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, vo.getrNo());
			ps.setString(2, vo.getiName());
			ps.setString(3, vo.getiLink());
			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			disConnection();
		}
	}
}
