package com.sist.dao;
import java.util.*;
import com.sist.vo.*;
import java.sql.*;

public class SubinfoDAO {
	private Connection conn; // Socket
	private PreparedStatement ps;// OutputStream , BufferedReader
//	private final String URL="jdbc:oracle:thin:@211.238.142.207:1521:XE";
	private final String URL="jdbc:oracle:thin:@localhost:1521:XE";
	
	public SubinfoDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
 
	public void getConnection() {
		try {
			conn = DriverManager.getConnection(URL, "hr", "happy");
		} catch (Exception ex) {
		}
	}

	public void disConnection() {
		try {
			if (ps != null)
				ps.close();
			if (conn != null)
				conn.close();
		} catch (Exception ex) {
		}
	}
	
	public void SubInfoCreate() {
		try {
			getConnection();

			String sql ="CREATE TABLE subinfo("
					+ "rno NUMBER, "
					+ "rdrink VARCHAR2(20) CONSTRAINT subinfo_rdrink_nn NOT NULL, "
					+ "rnosmoking VARCHAR2(20) CONSTRAINT subinfo_rnosmoking_nn NOT NULL, "
					+ "rpark VARCHAR2(100) CONSTRAINT subinfo_rpark_nn NOT NULL, "
					+ "rdelivery VARCHAR2(30) CONSTRAINT subinfo_rdelivery_nn NOT NULL, "
					+ "rother VARCHAR2(50) CONSTRAINT subinfo_rother_nn NOT NULL, "
					+ "rtakeout VARCHAR2(30) CONSTRAINT subinfo_rtakeout_nn NOT NULL, "
					+ "rcontent CLOB, "
					+ "rgood NUMBER, "
					+ "rhit NUMBER, "
					+ "rstart VARCHAR2(30), "
					+ "rdate VARCHAR2(30), "
					+ "CONSTRAINT subinfo_rno_fk FOREIGN KEY(rno) "
					+ "REFERENCES maininfo(rno)"
					+ ")";

			ps = conn.prepareStatement(sql);
			ps.executeUpdate();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			disConnection();
		}
	}
	
	public void SubInfoInsert(SubinfoVO vo) {
		try {
			getConnection();
			String sql = "INSERT INTO subinfo VALUES(?,?,?,?,?,?,?,?,?,?,?,sysdate-trunc(dbms_random.value(1,10)))";
			ps=conn.prepareStatement(sql);
			ps.setInt(1, vo.getrNo());
			ps.setString(2, vo.getrDrink());
			ps.setString(3, vo.getrNosmoking());
			ps.setString(4, vo.getrPark());
			ps.setString(5, vo.getrDelivery());
			ps.setString(6, vo.getrOther());
			ps.setString(7, vo.getrTakeout());
			ps.setString(8, vo.getrContent());
			ps.setInt(9, vo.getrGood());
			ps.setInt(10, vo.getrHit());
			ps.setString(11, vo.getrStart());

			ps.executeUpdate();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			disConnection();

		}
	}
}
