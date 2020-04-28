// 모든 DAO에 공통적으로 들어가는 소스 따로 뺐음.  
package com.sist.service.dao;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.*;

public class CreateSQLSessionFactory {
	private static SqlSessionFactory ssf;
	static
	{
		try
		{
			// Config.xml 로딩 
			Reader reader = Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
		}catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	public static SqlSessionFactory getSsf() {
		return ssf;
	}
	
}
