package com.sist.service.dao;

import java.util.ArrayList;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import com.sist.vo.DetailThemaVO;
import com.sist.vo.MainThemaVO;
import com.sist.vo.NearbyVO;


public class NearbyListDAO {
	
	private static SqlSessionFactory ssf;
	
	static{
		
		ssf=CreateSQLSessionFactory.getSsf();
		
	}

	
		public static List<NearbyVO> nearbyDefault(){ // map으로 받는 이유는 사용자가 선택한 option들을 모두 받아야하기 때문=> 다양하게 맏아
		
		SqlSession session=null;
		
		List<NearbyVO> defaultList=new ArrayList<NearbyVO>();
		
		try{
			session=ssf.openSession();
			
			defaultList=session.selectList("nearbyDefault");
			
			
		}catch(Exception ex)
		{
			System.out.println("nearbyDefault(): "+ex.getMessage());
			
		}finally
		{
			if(session!=null)
				session.close();
		}
		return defaultList;
	}
	
	
	
		
		
		public static int nearbyTotalPage()
		{
			SqlSession session=null;
			int total=0;
			
			try{
				
				session=ssf.openSession();
				total=session.selectOne("nearbyTotalPage");
				
			}catch(Exception ex){
				
				System.out.println("nearbyTotalPage(): "+ ex.getMessage());
				
			}finally{
				
				if(session!=null)
					session.close();
			}
			return total;
			
		}

		
		
	
	
	//주변맛집의 카테고리 선택시 선택한 값들을 가져와 ajax로 데이터 뿌려주는 기능!
	public static List<NearbyVO> nearbyResult(Map fo){ // map으로 받는 이유는 사용자가 선택한 option들을 모두 받아야하기 때문=> 다양하게 맏아
		
		SqlSession session=null;
		
		List<NearbyVO> resultList=new ArrayList<NearbyVO>();
		
		try{
			session=ssf.openSession();
			
			//업종 여러개 동시에 써치 가능하게 함!
/*			
			String[] tnames = null;
			String tnamesOp = "";
			String orStr = "";
			//and
			if(!fo.get("type_name").toString().isEmpty() )
			{
				tnames = fo.get("type_name").toString().split(",");
				for (int i = 0; i < tnames.length; i++) {
					if(tnames[i].length() > 0){
						if(i != 0){
							orStr = "or ";
						}
						tnamesOp += orStr+ " b.type_name='"+tnames[i]+"'";
					}
				}
				tnamesOp = "and ("+tnamesOp+")";
				
				fo.put("tnamesOp", tnamesOp);
			
			}
	*/		
	//		System.out.println(">>>"+tnamesOp);
			
			System.out.println("fo.toString(): "+fo.toString());
			
			String[] tnames = null;
			
			List typeList=null;
			
			if(fo.get("type_name").toString().length() >0 )
			{
				typeList=new ArrayList();
				tnames=fo.get("type_name").toString().split(",");
				for(int i=0; i<tnames.length; i++)
				{
					if(tnames[i].length() > 0){
						
						typeList.add(tnames[i]);
					}
					
				}
				
				fo.put("type_name",typeList);
			}
			
			resultList=session.selectList("nearbyResult", fo);
			
			
		}catch(Exception ex)
		{
			System.out.println("nearbyResult(): "+ex.getMessage());
			
		}finally
		{
			if(session!=null)
				session.close();
		}
		return resultList;
	}
	

	
}
