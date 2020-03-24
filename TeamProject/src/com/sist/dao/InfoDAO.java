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

	// ����̹� ��� => �ѹ��� ����
	public InfoDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}
 
	// ����Ŭ ����
	public void getConnection() {
		try {
			conn = DriverManager.getConnection(URL, "hr", "happy");
		} catch (Exception ex) {
		}
	}

	// ����Ŭ ����
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




			ps.setString(1, String.valueOf(vo.getrNo()));

			ps.setString(2, vo.getrName());
			ps.setString(3, vo.getrType());
			ps.setString(4, vo.getrTel());
			ps.setString(5, String.valueOf(vo.getrScore()));
			ps.setString(6, String.valueOf(vo.getrScoreCount()));
			ps.setString(7, vo.getrAddr1());
			ps.setString(8, vo.getrAddr2());
			ps.setString(9, "1234");

			ps.setString(10, vo.getrArea());
			ps.setString(11, vo.getrAreaDetail());

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
			ps.setString(1, String.valueOf(vo.getrNo()));
			ps.setString(2, vo.getrDrink());
			ps.setString(3, vo.getrNosmoking());
			ps.setString(4, vo.getrRestroom());
			ps.setString(5, vo.getrPark());
			ps.setString(6, vo.getrDelivery());
			ps.setString(7, vo.getrOther());
			ps.setString(8, vo.getrTakeout());
			ps.setString(9, vo.getrContent());
			ps.setString(10, vo.getrGood());
			ps.setString(11, vo.getRhit());
			ps.setString(12, vo.getrStart());
			ps.setString(13, String.valueOf(vo.getrDate()));

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
			ps.setString(1, String.valueOf(vo.getrNo()));
			ps.setString(2, vo.getrLowprice());
			ps.setString(3, vo.getrHighprice());
			ps.setString(4, vo.getrOpentime());
			ps.setString(5, vo.getrClosetime());
			ps.setString(6, vo.getrHoliday());
			ps.setString(7, vo.getrReserve());
			ps.setString(8, vo.getrSeat());
			ps.setString(9, vo.getrRoom());

			ps.executeUpdate();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			disConnection();

		}
	}
}