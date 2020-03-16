package com.sist.manager;

import java.util.ArrayList;

import com.sist.vo.DetailThemaVO;
import java.util.*;
import com.sist.vo.*;

public class AreacodeManager {

	
	
	public ArrayList<AreacodeVO> AreacodeAllData() {
	
		
		ArrayList<AreacodeVO> list = new ArrayList<AreacodeVO>();
		
		
		String[][] areaDetail = new String[15][];
		String[] area = {"서울 강남|ss","서울 강북|sn","경기 남부|cs","경기 북부|cn","인천|ic","부산|bs","대구|dg","광주|gj","대전|dj","울산|us","강원|gw","충청|cc","경상|gs","전라|jl","제주|jj"};
		
		//gs203 : 구미  이런식의 코드가 주소뒤에 붙어 있음 
		
		
		areaDetail[0]= new String[18];
		areaDetail[1]= new String[24];
		areaDetail[2]= new String[20];
		areaDetail[3]= new String[7];
		areaDetail[4]= new String[5];
		areaDetail[5]= new String[5];
		areaDetail[6]= new String[6];
		areaDetail[7]= new String[4];
		areaDetail[8]= new String[3];
		areaDetail[9]= new String[1];
		areaDetail[10]= new String[10];
		areaDetail[11]= new String[15];
		areaDetail[12]= new String[10];
		areaDetail[13]= new String[10];
		areaDetail[14]= new String[10];
			
		//서울강남
		areaDetail[0][0]= "강남역"; 
		areaDetail[0][1]= "관악/신림"; 
		areaDetail[0][2]= "구로"; 
		areaDetail[0][3]= "목동/강서"; 
		areaDetail[0][4]= "반포/서래마을"; 
		areaDetail[0][5]= "방배/사당"; 
		areaDetail[0][6]= "서초/교대"; 
		areaDetail[0][7]= "잠실/신천"; 
		areaDetail[0][8]= "신논현/영동시장"; 
		areaDetail[0][9]= "신사/잠원"; 
		areaDetail[0][10]= "압구정/청담"; 
		areaDetail[0][11]= "양재/도곡"; 
		areaDetail[0][12]= "선릉/삼성/대치"; 
		areaDetail[0][13]= "역삼"; 
		areaDetail[0][14]= "영등포/여의도"; 
		areaDetail[0][15]= "천호/강동"; 
		areaDetail[0][16]= "노량진"; 
		areaDetail[0][17]= "가로수길"; 
		
		//서울강북
		areaDetail[1][0]= "광진/건대입구"; 
		areaDetail[1][1]= "광화문/시청"; 
		areaDetail[1][2]= "노원/도봉/미아"; 
		areaDetail[1][3]= "대학로"; 
		areaDetail[1][4]= "동대문"; 
		areaDetail[1][5]= "마포"; 
		areaDetail[1][6]= "명동"; 
		areaDetail[1][7]= "삼청동"; 
		areaDetail[1][8]= "성동/성수"; 
		areaDetail[1][9]= "성북"; 
		areaDetail[1][10]= "신촌/이대"; 
		areaDetail[1][11]= "이태원/한남동"; 
		areaDetail[1][12]= "종로/인사동"; 
		areaDetail[1][13]= "충무로/신당동"; 
		areaDetail[1][14]= "홍대/상수/합정"; 
		areaDetail[1][15]= "안암/고대";
		areaDetail[1][16]= "숙대/서울역"; 
		areaDetail[1][17]= "부암동/평창동"; 
		areaDetail[1][18]= "서촌/경복궁"; 
		areaDetail[1][19]= "이촌동/용산"; 
		areaDetail[1][20]= "회기"; 
		areaDetail[1][21]= "연남동/연희동"; 
		areaDetail[1][22]= "상암"; 
		areaDetail[1][23]= "연신내/불광"; 
	
		//경기남부
		areaDetail[2][0]= "과천"; 
		areaDetail[2][1]= "광명"; 
		areaDetail[2][2]= "동탄/오산"; 
		areaDetail[2][3]= "부천"; 
		areaDetail[2][4]= "분당/성남/판교"; 
		areaDetail[2][5]= "수원"; 
		areaDetail[2][6]= "안산"; 
		areaDetail[2][7]= "안성"; 
		areaDetail[2][8]= "안양/군포/의왕"; 
		areaDetail[2][9]= "양평"; 
		areaDetail[2][10]= "여주"; 
		areaDetail[2][11]= "용인"; 
		areaDetail[2][12]= "죽전/수지"; 
		areaDetail[2][13]= "이천"; 
		areaDetail[2][14]= "하남"; 
		areaDetail[2][15]= "화성"; 
		areaDetail[2][16]= "김포"; 
		areaDetail[2][17]= "광주"; 
		areaDetail[2][18]= "오이도"; 
		areaDetail[2][19]= "시흥"; 				

		//경기북부
		areaDetail[3][0]= "의정부"; 				
		areaDetail[3][1]= "일산"; 				
		areaDetail[3][2]= "파주"; 				
		areaDetail[3][3]= "포천/동두천"; 				
		areaDetail[3][4]= "남양주"; 				
		areaDetail[3][5]= "구리"; 				
		areaDetail[3][6]= "가평"; 				

		//인천
		areaDetail[4][0]= "남구/남동구"; 				
		areaDetail[4][1]= "동구/중구"; 				
		areaDetail[4][2]= "부평구/계양구"; 				
		areaDetail[4][3]= "연수구/송도"; 				
		areaDetail[4][4]= "강화도"; 				
		
		//부산
		areaDetail[5][0]= "광안리/경성대"; 				
		areaDetail[5][1]= "남포/영도/중구"; 				
		areaDetail[5][2]= "동래/부산대"; 	
		areaDetail[5][3]= "서면/부산진"; 	
		areaDetail[5][4]= "해운대/센텀"; 	

		//대구
		areaDetail[6][0]= "가창"; 
		areaDetail[6][1]= "달서구/남구"; 
		areaDetail[6][2]= "동구"; 
		areaDetail[6][3]= "동성로/중구"; 
		areaDetail[6][4]= "수성구"; 
		areaDetail[6][5]= "칠곡/북구/서구"; 

		//광주
		areaDetail[7][0]= "광산구"; 
		areaDetail[7][1]= "동구/남구"; 
		areaDetail[7][2]= "북구"; 
		areaDetail[7][3]= "서구"; 

		//대전
		areaDetail[8][0]= "동구/대덕구"; 
		areaDetail[8][1]= "유성구"; 
		areaDetail[8][2]= "중구"; 

		
		//울산
		areaDetail[9][0]= "울산"; 
	
		//강원
		areaDetail[10][0]= "강릉"; 
		areaDetail[10][1]= "속초"; 
		areaDetail[10][2]= "양양"; 
		areaDetail[10][3]= "원주"; 
		areaDetail[10][4]= "춘천"; 
		areaDetail[10][5]= "평창"; 
		areaDetail[10][6]= "홍천"; 
		areaDetail[10][7]= "동해"; 
		areaDetail[10][8]= "태백/정선"; 
		areaDetail[10][9]= "삼척"; 

		// 충청
		areaDetail[11][0]= "공주"; 
		areaDetail[11][1]= "단양"; 
		areaDetail[11][2]= "보령"; 
		areaDetail[11][3]= "아산"; 
		areaDetail[11][4]= "천안전역"; 
		areaDetail[11][5]= "청주"; 
		areaDetail[11][6]= "충주"; 
		areaDetail[11][7]= "태안"; 
		areaDetail[11][8]= "부여"; 
		areaDetail[11][9]= "천안-독립기념관"; 
		areaDetail[11][10]= "천안-두정/성정"; 
		areaDetail[11][11]= "천안-불당/쌍용"; 
		areaDetail[11][12]= "천안-성환/직산"; 
		areaDetail[11][13]= "천안-신부/안서"; 
		areaDetail[11][14]= "서천"; 

		//경상
		areaDetail[12][0]= "거제"; 
		areaDetail[12][1]= "경주"; 
		areaDetail[12][2]= "구미"; 
		areaDetail[12][3]= "안동"; 
		areaDetail[12][4]= "울진"; 
		areaDetail[12][5]= "진주"; 
		areaDetail[12][6]= "창원"; 
		areaDetail[12][7]= "통영"; 
		areaDetail[12][8]= "포항"; 
		areaDetail[12][9]= "남해"; 

		//전라
		areaDetail[13][0]= "구례"; 
		areaDetail[13][1]= "군산/부안"; 
		areaDetail[13][2]= "담양"; 
		areaDetail[13][3]= "보성"; 
		areaDetail[13][4]= "순천"; 
		areaDetail[13][5]= "여수"; 
		areaDetail[13][6]= "전주"; 
		areaDetail[13][7]= "목포"; 
		areaDetail[13][8]= "무주"; 
		areaDetail[13][9]= "익산"; 

		//제주
		areaDetail[14][0]= "제주도전역"; 
		areaDetail[14][1]= "모슬포/화순"; 
		areaDetail[14][2]= "서귀포시내"; 
		areaDetail[14][3]= "성산/우도"; 
		areaDetail[14][4]= "애월"; 
		areaDetail[14][5]= "월정/함덕/김녕"; 
		areaDetail[14][6]= "제주시내"; 
		areaDetail[14][7]= "중문"; 
		areaDetail[14][8]= "표선/성읍"; 
		areaDetail[14][9]= "한림/한경"; 
				
	
		for(int i = 0 ; i < area.length ; i++)
		{
			for(int j = 0 ; j < areaDetail[i].length ; j++)
			{
				
				AreacodeVO vo = new AreacodeVO();
				
				vo.setA_AreaCode(area[i].substring(area[i].indexOf("|")+1) + ((j+1)+200));
				vo.setR_Area(area[i].substring(0,area[i].indexOf("|")));
				vo.setR_AreaDetail(areaDetail[i][j]);
				list.add(vo);
			}
		}	
		return list;
	}
	
	public static void main(String[] args) {

		AreacodeManager am = new AreacodeManager();
		ArrayList<AreacodeVO> list = new  ArrayList<AreacodeVO>();
		
		list = am.AreacodeAllData();
		
		for(int i = 0; i < list.size() ; i++)
		{
			System.out.printf(list.get(i).getA_AreaCode()+"   ");
			System.out.printf(list.get(i).getR_Area()+"   ");
			System.out.printf(list.get(i).getR_AreaDetail()+"   ");
			System.out.println();
		}
	}
	
}
