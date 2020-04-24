package temp;

import java.util.Arrays;

import com.sist.service.vo.ReserveDateVO;
import com.sist.vo.ReserveInfoVO;


public class MainClass {
	public static void main(String[] args) {
		// 72550  73536
		for(int i=72550;i<=73536;i++) { // 개수만큼
			String res=reserveinfoReserveDateUpdate(24);
			System.out.println(i+":"+res);
			/*MovieVO vo=new MovieVO();
			vo.setMno(i);
			vo.setTheaterNo(res);*/
			/*ReserveTheaterVO vo=new ReserveTheaterVO();
			vo.setTno(i);
			vo.setTdate(res);*/
			ReserveInfoVO vo=new ReserveInfoVO();
			vo.setrNo(i);
			vo.setrReservedate(res);
			
			ReserveDAO.reserveinfoReserveDateUpdate(vo);
		}
	}
	
//  reservedate-time
	public static String reservedateTimeRandomData(int count) {
		String result="";
		int no=(int)(Math.random()*4)+7; // 7~10 
		int[] com=new int[no];
		int rand=0;
		boolean bCheck=false;
		for(int i=0;i<no;i++) { 
			bCheck=true;
			while(bCheck) {
				rand=(int)(Math.random()*count)+1; // 1~29
				bCheck=false;
				for(int j=0;j<i;j++) {
					if(com[j]==rand) { // 중복제거
						bCheck=true;
						break;
					}
				}
			}
			com[i]=rand;
		}
		
		Arrays.sort(com); // 정렬
		
		for(int i=0;i<com.length;i++) {
			result+=com[i]+",";
		}
		result=result.substring(0,result.lastIndexOf(","));
		return result;
	}
	
	
	/// reserveinfo - rreservedate
	public static String reserveinfoReserveDateUpdate(int count) {
		String result="";
		int no=(int)(Math.random()*6)+10; // 
		int[] com=new int[no];
		int rand=0;
		boolean bCheck=false;
		for(int i=0;i<no;i++) { 
			bCheck=true;
			while(bCheck) {
				rand=(int)(Math.random()*31)+1; // 1~31
				bCheck=false;
				for(int j=0;j<i;j++) {
					if(com[j]==rand) { // 중복제거
						bCheck=true;
						break;
					}
				}
			}
			com[i]=rand;
		}
		
		Arrays.sort(com); // 정렬
		
		for(int i=0;i<com.length;i++) {
			result+=com[i]+",";
		}
		result=result.substring(0,result.lastIndexOf(","));
		return result;
	}
}
