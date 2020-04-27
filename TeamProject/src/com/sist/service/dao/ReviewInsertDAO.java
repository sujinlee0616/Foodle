package com.sist.service.dao;

import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.sist.service.vo.ReviewVO;

public class ReviewInsertDAO {

	private static SqlSessionFactory ssf; // 파싱하는 애 
	static
	{
		ssf=CreateSQLSessionFactory.getSsf();
	}
	
	public static ReviewVO reviewInsertData(ReviewVO vo)
	{
		SqlSession session = null;
		
		try
		{
			session=ssf.openSession(true);
			session.insert("reviewInsertData",vo);
			System.out.println("=== DAO: mapper의 쿼리수행 완료 === ");
		}catch (Exception ex) 
		{
			System.out.println("reviewInsertData: "+ex.getMessage());
		}
		finally
		{
			if(session!=null)
				session.close();
		}
		return vo;
	}
}
