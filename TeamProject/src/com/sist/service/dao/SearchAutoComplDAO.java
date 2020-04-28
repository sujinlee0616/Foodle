package com.sist.service.dao;

import java.util.*;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.sist.vo.MainInfoVO;

public class SearchAutoComplDAO {
	private static SqlSessionFactory ssf;
	static
	{
		ssf=CreateSQLSessionFactory.getSsf();
	}
	
	public static List<String> resNameAutocomplete(String resName)
	{
		SqlSession session=null;
		List<String> list=new ArrayList<String>();
		
		try
		{
			session=ssf.openSession(); 			
			list=session.selectList("getResNameList",resName);
			System.out.println("DAO list="+list);	
		}
		catch (Exception ex) {
			System.out.println("getResNameList :"+ex.getMessage());
		}
		finally {
			if(session!=null)
				session.close();
		}
		
		return list;
	}
}
