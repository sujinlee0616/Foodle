package com.sist.manager;

import java.util.*;
import com.sist.vo.*;

public class ThemaManager {

	
	public ArrayList<MainThemaVO> MainThemaAllData() {
		ArrayList<MainThemaVO> list = new ArrayList<MainThemaVO>();
		ArrayList<String> tempList = new ArrayList<String>();
		

		tempList.add("상황별|가족모임|어떤 가족모임 장소를 찾고 계신가요?");
		tempList.add("상황별|연인과 함께|연인에게 감동을 선사해드려요");
		tempList.add("상황별|친구와 함께|어떤 친구와 함께 가실 건가요?");
		tempList.add("상황별|외국인과 함께|외국인 친구가 어떤 음식을 찾나요");
		tempList.add("상황별|직장인이라면|매일 똑 같은 고민고민을 덜어주는 맞춤테마!");
		tempList.add("상황별|야심한 밤에|맛있게 먹으면 0칼로리! 오늘의 야식 메뉴는??");
		tempList.add("상황별|포장&배달|맛집을 통째로 옮겨놓고 싶을 때");
		tempList.add("상황별|날씨에 따라|오늘 날씨에 딱 맞는 음식을 찾아보자!");
		tempList.add("상황별|공간에 따라|분위기 있고 여유로운 한 때를 보내고 싶을 때");
		
		tempList.add("메뉴별|고급음식점|미식가가 엄선하여 추천하는 최고급 맛집");
		tempList.add("메뉴별|가성비 좋은 맛집|저예산, 고효율! 널 사랑하지 않을 수 없다");
		tempList.add("메뉴별|유러피안 다이닝	|'진짜 제대로' 하는 곳 의외로 찾기 힘든 유러피안 다이닝");
		tempList.add("메뉴별|아메리칸 다이닝	|단순하지만 강렬한 한방이 있다! 아메리칸푸드");
		tempList.add("메뉴별|동남아&인디안 밥|비행기티켓 없이 당장 떠날 수 있는 동남아&인도 여행");
		tempList.add("메뉴별|코스요리|어떤 코스요리를 찾으세요?");
		tempList.add("메뉴별|뷔페|메뉴 고민될 때 모두의 취향을 충족시켜주는 최고의 장소!");
		tempList.add("메뉴별|분식/패스트푸드|간편하고 빠르게 먹을 수 있는 별미를 찾을 때!");
		tempList.add("메뉴별|웰빙/건강식|자연 그대로의 식단을 추구한다면");
		tempList.add("메뉴별|달콤한 간식 끝판왕|당 떨어졌을 때! 온 몸에 달콤한 기운을 퍼뜨려드려요~");
		tempList.add("메뉴별|무한리필|맛있는 음식은 질릴 때까지 실컷 먹어야지!");
		tempList.add("메뉴별|테마카페|테마카페 근처 맛집 어디있을까?");
		tempList.add("메뉴별|뜨거운음식|마음까지 뜨끈뜨끈하게 채워주는 음식");
		tempList.add("메뉴별|시원한음식|머릿속까지 짜릿하게! 정신이 번쩍 드는 시원한 음식");
		tempList.add("메뉴별|소고기|소고기, 어떻게 먹을래?");
		tempList.add("메뉴별|돼지고기|돼지고기, 어떻게 먹을래?");
		tempList.add("메뉴별|닭|닭고기, 어떻게 먹을래?");
		tempList.add("메뉴별|오리|오리고기, 어떻게 먹을래?");
		tempList.add("메뉴별|양고기|양고기, 어떻게 먹을래?");
		tempList.add("메뉴별|보양식|[약식동원] 좋은 음식은 약과 같은 효능을 낸다.");
		tempList.add("메뉴별|해산물|해산물, 어떻게 먹을래?");
		tempList.add("메뉴별|면요리|호로록호로록~ 소리마저 경쾌한 면요리");
		tempList.add("메뉴별|술|오늘은 어떤 술로 달려볼까?");
		tempList.add("메뉴별|치맥&피맥|치맥이냐, 피맥이냐, 그것이 문제로다!");
		
		tempList.add("스페셜|TV맛집|어젯밤 TV에서 봤던 그곳! TV방영맛집 총정리!");
		tempList.add("스페셜|전국맛집 TOP100|한해동안 회원이 선택한 맛집/빵집 TOP100");
		tempList.add("스페셜|특별한 날, 특별한 데이트|일년 중 하루뿐인 특별한 날! 오늘을 더욱 특별하게 만들어주는 음식");
		tempList.add("스페셜|고메위크|국내 대표적인 파인다이닝 프로모션 '고메위크'");
		tempList.add("스페셜|전국 야구장|경기 끝난 후 시원하게 한잔하기 좋은 곳!");
		tempList.add("스페셜|전국 스키장|겨울의 낭만과 스릴이 넘치는 스키장!");
		tempList.add("스페셜|봄축제-벚꽃축제|봄바람 휘날리며~ 흩날리는 벚꽃잎이 울려퍼질 이 거리를 둘이 걸어요");
		tempList.add("스페셜|봄축제 - 봄꽃축제|살랑 불어오는 봄바람에 내 마음도 살랑살랑~");
		tempList.add("스페셜|봄축제 - 전통/문화체험|온 가족 모두 함께 즐길 수 있는 신명나는 축제!");
		tempList.add("스페셜|봄축제 - 먹거리|봄의 제철음식과 함께 건강도 튼튼해지는 먹거리 축제");
		tempList.add("스페셜|가을 단풍놀이|깊어가는 가을의 정취가 물씬 느껴지는 단풍 명소");
		tempList.add("스페셜|가을축제|야외축제를 즐기기 가장 좋은 계절, 가을!");
		tempList.add("스페셜|겨울축제-눈꽃,빛축제|오직 추운 겨울에만 볼 수 있는 아름다운 눈꽃축제&빛축제");
		tempList.add("스페셜|겨울축제-얼음낚시|빙판 위의 오감만족! 겨울여행의 백미, 얼음낚시축제");
		tempList.add("스페셜|해돋이 명소|새로운 마음가짐으로 떠오르는 새해를 맞이하기 좋은 해돋이 명소");
		tempList.add("스페셜|LG U+ 추천맛집|LG U+ 임직원이 전국을 누비며 검증한 현지인 맛집!");
		tempList.add("스페셜|서초구 추천맛집|서초구청과 함께 까다롭게 검증한 맛집!");
		
		
		for(int i = 0 ; i < tempList.size() ; i++)
		{
			MainThemaVO vo = new MainThemaVO();
			vo.setT_DetailThema(tempList.get(i).substring(0,tempList.get(i).indexOf("|")));
			vo.setT_MainThema(tempList.get(i).substring((tempList.get(i).indexOf("|")+1),(tempList.get(i).lastIndexOf("|"))));
			vo.setT_Info(tempList.get(i).substring(tempList.get(i).lastIndexOf("|")+1));
			list.add(vo);			
		}
		return list;
	}
	
	
	
	public ArrayList<DetailThemaVO> DetailThemaAllData() {
		ArrayList<DetailThemaVO> list = new ArrayList<DetailThemaVO>();
		ArrayList<String> tempList = new ArrayList<String>();
	

		tempList.add("가족모임|가족외식,상견례,돌잔치/회갑/생일,어른과 함께라면,아이와 함께라면");
		tempList.add("연인과 함께|소개팅,일상데이트,특별한 날엔");
		tempList.add("친구와 함께	|마시는 친구와 함께,술 못마시는 친구와 함께");
		tempList.add("외국인과 함께|외국 현지 음식(for 외국인),전통 한국 음식(for 외국인)");
		tempList.add("직장인이라면|점심식사,접대,송년/신년회");
		tempList.add("야심한 밤에	|24시간 맛집");
		tempList.add("포장&배달|배달 가능,포장 가능");
		tempList.add("날씨에 따라|더운날,비오는날");
		tempList.add("공간에 따라|브런치,야외테라스,전망 좋은 곳,드라이브,주차공간");
				
		tempList.add("고급음식점|고급 한정식,고급 양식,고급 일식,고급 중식,고급 디저트");
		tempList.add("가성비 좋은 맛집|가성비 좋은 맛집");
		tempList.add("유러피안 다이닝|French,Italian,Spanish");
		tempList.add("아메리칸 다이닝|수제버거,타코&부리또,베이글&도넛,아메리칸BBQ");
		tempList.add("동남아&인디안 밥|인디안푸드,타이푸드,비엣남푸드");
		tempList.add("코스요리|한정식,일식 코스,중식 코스,양식 코스,기타 코스요리");
		tempList.add("뷔페|뷔페");
		tempList.add("분식/패스트푸드|떡볶이,김밥,샌드위치,햄버거/핫도그,기타 분식");
		tempList.add("웰빙/건강식|웰빙/건강식,밥,죽,몸보신,두부요리");
		tempList.add("달콤한 간식 끝판왕|베이커리,케이크,타르트,티라미수,마카롱,에끌레어,와플,츄러스,롤케이크,크루아상,슈,기타 달콤한 음식");
		tempList.add("무한리필|무한리필");
		tempList.add("테마카페|갤러리카페,로스팅&핸드드립 카페,마카롱&컵케익 카페,베이커리 카페,북카페,전통차카페,체험카페,초콜릿카페,홍차 카페");
		tempList.add("뜨거운음식|샤브샤브,국물요리,매운음식");
		tempList.add("시원한음식|냉면,빙수,아이스크림");
		tempList.add("소고기|구이,스테이크,한우전문점,곱창/대창,불고기,육회");
		tempList.add("돼지고기|삼겹살,돼지갈비,곱창/막창,돼지생구이,돼지양념구이,흑돼지,보쌈,족발,돈까스");
		tempList.add("닭|통닭,닭볶음탕,닭갈비,닭백숙/삼계탕");
		tempList.add("오리|구이/주물럭,오리백숙/오리탕,북경오리");
		tempList.add("양고기|양갈비,양꼬치");
		tempList.add("보양식|고기 보양식,해산물 보양식");
		tempList.add("해산물|회,초밥,구이/탕,대게/랍스터/킹크랩,새우,꽃게,조개,전복&소라,장어,낙지,쭈꾸미,오징어,참치,연어,복어,굴,기타 해산물");
		tempList.add("면요리|한식 면요리,중식 면요리,일식 면요리,양식 면요리,아시안 면요리");
		tempList.add("술|맥주,크래프트비어,소주,동동주/막걸리,와인,양주,칵테일,사케/고량주/기타");
		tempList.add("치맥&피맥|치맥(치킨&맥주),피맥(피자&맥주)");
		
		tempList.add("TV맛집|테이스티로드,식신로드,수요미식회,TV 스타셰프,생생정보통,VJ특공대,생활의달인,맛있는TV,올리브쇼,백종원의 3대천왕");
		tempList.add("전국맛집 TOP100|맛집TOP100 Rated 2014,빵집TOP100 Rated 2014,맛집TOP100 Rated 2015,맛집TOP100 Rated 2016");
		tempList.add("특별한 날, 특별한 데이트|발렌타인&화이트데이,블랙데이");
		tempList.add("고메위크|고메위크 2015");
		tempList.add("전국 야구장|광주기아챔피언스필드,대구야구장,대전한밭야구장,목동야구장,부산사직야구장,수원KT위즈파크,인천문학야구장,잠실야구장,창원마산야구장,청주야구장");
		tempList.add("전국 스키장	|곤지암 리조트,대명 비발디파크,덕유산 리조트,베어스타운 리조트,수안보 이글벨리리조트,스타힐 리조트,알펜시아/용평/휘닉스,양지파인 리조트,엘리시안 강촌,지산 포레스트 리조트,하이원/오투 리조트,한솔 오크밸리");
		tempList.add("봄축제-벚꽃축제|강릉 경포대 벚꽃축제,구례 섬진강 벚꽃축제,대구 별빛벚꽃축제,대구 팔공산 벚꽃축제,서울 석촌호수벚꽃축제,서울 여의도 봄꽃축제,제주 왕벚꽃축제,창원 진해군항제");
		tempList.add("봄축제 - 봄꽃축제|강화 진달래축제,고양 국제꽃박람회,구례 산수유꽃축제,서귀포 유채꽃축제,양평 산수유한우축제,에버랜드 튤립축제,여수 진달래축제,이천 산수유꽃축제,제주 튤립축제,태안 세계튤립축제");
		tempList.add("봄축제 - 전통/문화체험|강릉 단오제,담양 대나무축제,대구 약령한방문화축제,서울 연등축제,여주 도자기축제,울산 옹기축제,이천 도자기축제,전주 한지문화축제,제주 가파도 청보리축제,제주 들불축제,춘천 마임축제");
		tempList.add("봄축제 - 먹거리|보령 무창포 주꾸미축제,보성 다향대축제,부산 기장 멸치축제,양평 딸기체험축제,양평 산나물축제,통영 한려수도 굴축제");
		tempList.add("가을 단풍놀이|속초 설악산,구례 지리산,원주 치악산,가평 아침고요수목원,광주 무등산,서울 덕수궁돌담길,서울 하늘공원,양평 용문산,순천 순천만,정선 민둥산,제주 산굼부리,제주 새별오름,제주 섭지코지,통영 한려해상,포천 명성산,홍천 은행나무숲");
		tempList.add("가을축제|군산 세계철새축제,그랜드민트페스티벌,부산 국제영화제,부산 불꽃축제,서울 빛초롱축제,서울 세계불꽃축제,제주올레 걷기축제,진주 남강유등축제,충주 사과축제,파주 장단콩축제,포항구룡포 과메기축제,보성 벌교꼬막축제,서울 억새축제,순천만 갈대축제,안면도 대하축제,양양 송이축제,포천산정호수억새축제");
		tempList.add("겨울축제-눈꽃,빛축제|대관령 눈꽃축제,대구 이월드 별빛축제,무주 남대천 얼음축제,벽초지수목원 빛축제,보성 차밭 빛축제,부산 크리스마스 축제,서울랜드 X-mas 파티,아침고요 별빛정원전,에버랜드 일루미네이션,태백산 눈축제,허브아일랜드 불빛동화");
		tempList.add("겨울축제-얼음낚시|가평 자라섬 씽씽 겨울축제,가평 청평 얼음꽃 송어축제,강화 송어빙어축제,안성 빙어축제,파주 송어축제,평창 송어축제,홍천강 꽁꽁축제");
		tempList.add("해돋이 명소|강릉 정동진 해돋이축제,여수 향일암 일출제,울산 간절곶 해맞이축제,제주 성산 일출축제,포항 호미곶 해맞이축전,부산 해맞이축제");
		tempList.add("LG U+ 추천맛집|LG U+ 추천맛집");
		tempList.add("서초구 추천맛집|YUMMY서초 2015년판");
			
		for(int i = 0 ; i < tempList.size() ; i++)
		{
			DetailThemaVO vo = new DetailThemaVO();
			vo.setT_DetailThema(tempList.get(i).substring(0,tempList.get(i).indexOf("|")));
			vo.setT_Info(tempList.get(i).substring((tempList.get(i).indexOf("|"))+1));
			list.add(vo);	
		}
		return list;
	}
	/*
	public static void main(String[] args) {

		ThemaManager tm = new ThemaManager();
		ArrayList<MainThemaVO> list1 = new  ArrayList<MainThemaVO>();
		ArrayList<DetailThemaVO> list2 = new  ArrayList<DetailThemaVO>();

		list1 = tm.MainThemaAllData();
		list2 = tm.DetailThemaAllData();
		
		for(int i = 0; i < list1.size() ; i++)
		{
			System.out.println(list1.get(i).getT_DetailThema());
			System.out.println(list1.get(i).getT_MainThema());
			System.out.println(list1.get(i).getT_Info());
			System.out.println();
		}
		System.out.println("====================================================================");
		for(int i = 0; i < list1.size() ; i++)
		{
			System.out.println(list2.get(i).getT_DetailThema());
			System.out.println(list2.get(i).getT_Info());
			System.out.println();
		}
	}
	*/
}
