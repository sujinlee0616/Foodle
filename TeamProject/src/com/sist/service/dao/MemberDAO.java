package com.sist.service.dao;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import com.sist.service.vo.CompMemberVO;
import com.sist.service.vo.MemberVO;

public class MemberDAO {
	private static SqlSessionFactory ssf;
	static
	{
		ssf=CreateSQLSessionFactory.getSsf();
	}

	// [로그인] - 개인회원 - ID/PWD 맞는지 확인
	// ID/PWD 받은 값에 따라 메시지 값을 설정한다. 
	public static MemberVO memberLoginGeneral(String id,String pwd)  // 매개변수: MemberModel에서 받아왔음
	{
		MemberVO vo=new MemberVO(); 
		SqlSession session=null;
		System.out.println("============= 개인회원 로그인 체크 ============= ");
		try 
		{
			session=ssf.openSession(); 
			int idCount_general=session.selectOne("idCount_general",id); 
			System.out.println("idCount_general="+idCount_general);
			
			// ID 있는지 체크 후, PWD 맞는지 체크
			if(idCount_general!=0)
			{
				MemberVO mvo=session.selectOne("getPwd_general",id); 
				if(pwd.equals(mvo.getUpwd())) {
					vo.setMsg("OK_general");
					vo.setUtype(mvo.getUtype());
					vo.setUname(mvo.getUname());
				}
				else{
					vo.setMsg("WrongPWD");
				}
			}
			else
			{
				vo.setMsg("NOID");
			}
			System.out.println("개인회원 로그인 검사 결과: "+vo.getMsg());
		} 
		catch (Exception ex) {
			System.out.println("memberLoginGeneral: "+ex.getMessage());
		}
		finally {
			if(session!=null)
				session.close(); // 세션 반환. 우리가 커넥션 풀 지금 8개 쓴다고 설정해놔서... 반환 안 하면 8번만 버튼 누르면 뻑남 
		}
		
		return vo;
	}
	
	// [로그인] - 기업회원 - ID/PWD 맞는지 확인
	public static CompMemberVO memberLoginComp(String id,String pwd)  // 매개변수: MemberModel에서 받아왔음
	{
		CompMemberVO vo=new CompMemberVO();  
		SqlSession session=null;
		System.out.println("============= 기업 회원 로그인 체크 ============= ");
		try 
		{
			session=ssf.openSession(); 
			int idCount_comp=session.selectOne("idCount_comp",id);
			System.out.println("idCount_comp="+idCount_comp);
			
			if(idCount_comp!=0) // 기업회원 ID 인지 <===== 정상작동 
			{
				CompMemberVO cmvo=session.selectOne("getPwd_comp",id);  // mapper.xml에 문제가 있나본데...뭐가 문제지 
				
				if(pwd.equals(cmvo.getRpwd())) 
				{
					vo.setMsg("OK_comp");
					vo.setUtype(cmvo.getUtype());
					vo.setRname(cmvo.getRname());
				}
				else
				{
					vo.setMsg("WrongPWD");
				}
			}
			else
			{
				vo.setMsg("NOID");
				System.out.println(vo.getMsg());
			}
			System.out.println("기업회원 로그인 검사 결과: "+vo.getMsg());
		}
		catch (Exception ex) {
			ex.printStackTrace();
			System.out.println("memberLoginComp: "+ex.getMessage());
		}
		finally {
			if(session!=null)
				session.close(); // 세션 반환. 우리가 커넥션 풀 지금 8개 쓴다고 설정해놔서... 반환 안 하면 8번만 버튼 누르면 뻑남 
		}

		return vo;
	}
	
	// [개인회원가입] 
	public static void memberInsert(MemberVO vo)
	{
		SqlSession session=null;
		
		try
		{
			session=ssf.openSession(true); //auto commit
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
	
	// [기업회원가입] 
	public static void compMemberInsert(CompMemberVO vo)
	{
		SqlSession session=null;
		
		try
		{
			session=ssf.openSession(true); //auto commit
			session.insert("compMemberInsert",vo);
		}
		catch (Exception ex) {
			System.out.println("compMemberInsert :"+ex.getMessage());
		}
		finally {
			if(session!=null)
				session.close();
		}
	}
	

}
