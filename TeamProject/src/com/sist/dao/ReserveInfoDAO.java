package com.sist.dao;

import java.sql.*;
import java.util.*;
import com.sist.vo.*;

public class ReserveInfoDAO {

	private Connection conn;
	private PreparedStatement ps;
	private final String URL="jdbc:oracle:thin:@localhost:1521:XE";
	
	// 1. 드라이버 등록
	public ReserveInfoDAO() {
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
	
	// reserveInfo 테이블 생성 
	public void ReserveInfoCreate() {
		
		try {
			getConnection();

			String sql = "CREATE TABLE reserveInfo( "
					+ "rNo NUMBER CONSTRAINT ri_rNo_nn NOT NULL,"
					+ "rLowprice NUMBER,"
					+ "rHighprice NUMBER,"
					+ "rOpentime NUMBER CONSTRAINT ri_ot_nn NOT NULL,"
					+ "rClosetime NUMBER,"
					+ "rReserve VARCHAR2(20) CONSTRAINT ri_res_nn NOT NULL,"
					+ "rHoliday	VARCHAR2(100) CONSTRAINT ri_hol_nn NOT NULL,"
					+ "rSeat	NUMBER CONSTRAINT ri_seat_nn NOT NULL,"
					+ "rRoom	NUMBER CONSTRAINT ri_room_nn NOT NULL,"
					+ "rRoomcount NUMBER CONSTRAINT rc_room_nn NOT NULL"
					/*+ ",CONSTRAINTS ri_fk FOREIGN KEY(rNo)"
					+ "REFERENCES mainInfo(rNo)" */
					+ ")";
			ps = conn.prepareStatement(sql);
			ps.executeQuery();

		} catch (Exception ex) {
			ex.printStackTrace();
		} finally {
			disConnection();
		}
	}

	// 데이터 삽입 
	public void ReserveInfoInsert(ReserveInfoVO vo) {
		
		try {
			getConnection();
			
			/*[reserveInfo table] - 모든 컬럼에 디폴트값 없음. 
			 * 	1	rNo			NUMBER			N-N	fk
				2	rLowprice	VARVHAR2	100	NULL	
				3	rHighprice	VARVHAR2	100	NULL	
				4	rOpentime	VARVHAR2	100	N-N	
				5	rClosetime	VARVHAR2	100	NULL	
				6	rReserve	VARCHAR2	20	N-N	
				7	rHoliday	VARCHAR2	100	N-N	
				8	rSeat		VARCHAR2	20	N-N	
				9	rRoom		NUMBER			N-N	
			*/			
			String sql = "INSERT INTO reserveInfo VALUES(?,?,?,?,?,?,?,?,?,?)";
			
			ps=conn.prepareStatement(sql);
			ps.setInt(1, vo.getRNo());
			ps.setInt(2, vo.getRLowprice());
			ps.setInt(3, vo.getRHighprice());
			ps.setInt(4, vo.getROpentime());
			ps.setInt(5, vo.getRClosetime());
			ps.setString(6, vo.getRReserve());
			ps.setString(7, vo.getRHoliday());
			ps.setInt(8, vo.getRSeat());
			ps.setInt(9, vo.getRRoom());		
			ps.setInt(10, vo.getRRoomcount());
			
			ps.executeUpdate();

		} catch (Exception ex) {
			
			ex.printStackTrace();
			
		} finally {
			
			disConnection();

		}
	}

	
	
	
}
