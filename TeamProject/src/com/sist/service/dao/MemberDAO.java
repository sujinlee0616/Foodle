package com.sist.service.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.service.vo.MemberVO;

public class MemberDAO {
	private static SqlSessionFactory ssf;
	static
	{
		ssf=CreateSQLSessionFactory.getSsf();
	}
	
	// [회원가입] 
	public static void memberInsert(MemberVO vo)
	{
		SqlSession session=null;
		
		try
		{
			session=ssf.openSession(true); //autocommit
			session.insert("memberInsert",vo);
		}
		catch (Exception ex) {
			System.out.println("memberInsert :"+ex.getMessage());
		}
		finally {
			if(session!=null)
				session.close();
		}

	}
	
	
	// [로그인] - ID/PWD 맞는지 확인
	// ID/PWD 받은 값에 따라 메시지 값을 설정한다. 
	public static MemberVO memberLogin(String id,String pwd)  // 매개변수: MemberModel에서 받아왔음
	{
		MemberVO vo=new MemberVO(); // 값을 4개(userid,upwd,utype,msg) 넘기니까 VO 만들어서 VO로 넘김 
		SqlSession session=null;
		
		
		try 
		{
			session=ssf.openSession(); // 커넥션 연결.		
			System.out.println(id);
			int count=session.selectOne("idCount",id); // member-mapper.xml의 idCount SQL문에 id 넣고 수행한 결과를 count에 넣는다 
			System.out.println(count);
			if(count==0)
			{
				vo.setMsg("NOID");
			}
			
			else
			{
				MemberVO mvo=session.selectOne("getPwd",id); // member-mapper.xml의 getPwd SQL문에 id 넣고 수행한 결과를 count에 넣는다
				if(pwd.equals(mvo.getUpwd())) // MemberModel에서 받아온 pwd(login_frm의 input에 입력한 pwd)가 id 기반으로 DB에서 찾은 pwd와 일치한다면 
				{
					vo.setMsg("OK");
					vo.setUtype(mvo.getUtype());
					vo.setUname(mvo.getUname());
				}
				else
				{
					vo.setMsg("NOPWD");
				}
			}
			
		} 
		catch (Exception ex) {
			System.out.println("memberLogin: "+ex.getMessage());
		}
		finally {
			if(session!=null)
				session.close(); // 세션 반환. 우리가 커넥션 풀 지금 8개 쓴다고 설정해놔서... 반환 안 하면 8번만 버튼 누르면 뻑남 
		}
		
		return vo;
	}

}
