package com.sist.dao;

import com.sist.manager.*;
import java.util.*;
import java.sql.*;
import java.sql.Date;

import com.sist.vo.*;

public class InfoDAO {

	private Connection conn; // Socket
	private PreparedStatement ps;// OutputStream , BufferedReader
	private final String URL="jdbc:oracle:thin:@211.238.142.207:1521:XE";
	//private final String URL = "jdbc:oracle:thin:@localhost:1521:XE";

	// 드라이버 등록 => 한번만 수행
	public InfoDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception ex) {
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

	public void SubInfoCreate() {
		try {
			getConnection();

			String sql = "CREATE TABLE Subinfo(rNo VARCHAR2(1000),"
					+ "rDrink VARCHAR2(1000),rNosmoking VARCHAR2(1000),rRestroom VARCHAR2(1000),rPark VARCHAR2(1000),"
					+ "rDelivery VARCHAR2(1000),rFacil VARCHAR2(1000),rTakeout VARCHAR2(1000),rContent VARCHAR2(1000),rGood VARCHAR2(1000),"
					+ "rHit VARCHAR2(1000),rStart VARCHAR2(1000),rDate VARCHAR2(1000))";

			ps = conn.prepareStatement(sql);
			ps.executeQuery();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			disConnection();
		}
	}

	public void ReserveCreate() {
		try {
			getConnection();

			String sql = "CREATE TABLE Reserveinfo(rNo VARCHAR2(1000),"
					+ "rLowprice VARCHAR2(1000),rHighprice VARCHAR2(1000),"
					+ "rOpentime VARCHAR2(1000),rClosetime VARCHAR2(1000),rHoliday VARCHAR2(1000),"
					+ "rReserve VARCHAR2(1000),rSeat VARCHAR2(1000),rRoom VARCHAR2(1000))";

			ps = conn.prepareStatement(sql);
			ps.executeQuery();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			disConnection();
		}
	}

	/*
	 ***** Maininfo rNo rName rType rTel rScore rScoreCount r sasdasd rAddr2 rAddr1
	 * rArea rAreaDetail
	 */

	public void MainInfoInsert(InfoVO vo) {
		try {
			getConnection();
			String sql = "INSERT INTO maininfo VALUES(?,?,?,?,?,?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);




			ps.setString(1, String.valueOf(vo.getR_No()));

			ps.setString(2, vo.getR_Name());
			ps.setString(3, vo.getR_Foodtype());
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

	/*
	 *** 
	 * subinfo rNo rDrink rNosmoking rRestroom rPark rDelivery rFacil rTakeout
	 * rContent rGood rHit rStart rDate
	 */

	public void SubInfoInsert(InfoVO vo) {
		try {
			getConnection();
			String sql = "INSERT INTO subinfo VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, String.valueOf(vo.getR_No()));
			ps.setString(2, vo.getR_Drink());
			ps.setString(3, vo.getR_Nosmoking());
			ps.setString(4, vo.getR_Restroom());
			ps.setString(5, vo.getR_Park());
			ps.setString(6, vo.getR_Delivery());
			ps.setString(7, vo.getR_Other());
			ps.setString(8, vo.getR_Takeout());
			ps.setString(9, vo.getR_Content());
			ps.setString(10, vo.getR_Good());
			ps.setString(11, vo.getR_hit());
			ps.setString(12, vo.getR_Start());
			ps.setString(13, String.valueOf(vo.getR_Date()));

			ps.executeUpdate();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			disConnection();

		}
	}

	/*
	 *** reservinfo rNo rLowprice rHighprice rOpentime rClosetime rReserve
	 * rHoliday rSeat rRoom
	 */

	public void ReserveInfoInsert(InfoVO vo) {
		try {
			getConnection();
			String sql = "INSERT INTO reserveinfo VALUES(?,?,?,?,?,?,?,?,?)";
			ps=conn.prepareStatement(sql);
			ps.setString(1, String.valueOf(vo.getR_No()));
			ps.setString(2, vo.getR_Lowprice());
			ps.setString(3, vo.getR_Highprice());
			ps.setString(4, vo.getR_Opentime());
			ps.setString(5, vo.getR_Closetime());
			ps.setString(6, vo.getR_Holiday());
			ps.setString(7, vo.getR_Reserve());
			ps.setString(8, vo.getR_Seat());
			ps.setString(9, vo.getR_Room());

			ps.executeUpdate();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			disConnection();

		}
	}
}