package temp;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.service.vo.*;
import com.sist.vo.ReserveInfoVO;
import com.sist.service.dao.CreateSQLSessionFactory;

public class ReserveDAO {
	private static SqlSessionFactory ssf;
	static
	{
		ssf=CreateSQLSessionFactory.getSsf();
	}
	
	public static void reservedateTimeUpdate(ReserveDateVO vo) {
		SqlSession session=null;
		try {
			session=ssf.openSession(true);
			session.update("reservedateTimeUpdate",vo);
		} catch(Exception ex) {
			System.out.println("reservedateTimeUpdate(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
	}
	
	public static void reserveinfoReserveDateUpdate(ReserveInfoVO vo) {
		SqlSession session=null;
		try {
			session=ssf.openSession(true);
			session.update("reserveinfoReserveDateUpdate",vo);
		} catch(Exception ex) {
			System.out.println("reserveinfoReserveDateUpdate(): "+ex.getMessage());
		} finally {
			if(session!=null)
				session.close();
		}
	}
}
