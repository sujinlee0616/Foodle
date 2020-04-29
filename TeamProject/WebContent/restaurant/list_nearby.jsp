<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>

<!--  주변 맛집 페이지 CSS -->
<link rel="stylesheet" href="../css/nearby.css">


<script type="text/javascript">



 var page = 1;
 var sortInfo =''; 		//정렬순 선택  desc
 var restOpen =''; 		//가게 오픈 여부
 var takeoutInfo =''; 	//테이브아웃 여부
 var lowPrice='';       //낮은 가격순 asc
 var areasortInfo='';   //지역선택
 
 
 // <이벤트 기능> 
 // 첫번째 setFilter() => 카테고리에서 선택시 중복 , 카테고리중 한개의 옵션만 아래  해당 카테고리<p>자리에 출력됨
 // 두번째 openButChgCL() => 옵션의 유무가 2개여서 버튼 형식으로 변경, 버튼을 누르면 색의 유무로 사용자가 선택유무 알수있음,따로 아래 출력 되지 않음!


 function setFilter(c ,op){ 
	 
	 console.log("===========");
	 console.log(op);  // op=> <select> onChange 매개변수 => foodType(업종) or sortby(정렬) 
	 	
	 	var selectVal = c.value; //onchange된 옵션의 value값을 읽는다 => 한식, 중식.. 
	 	var selectOp = '#'+op;   // #foodType, #sortby <p></p>에서 사용,  
	 	
	 	
		//$(selectOp).html("<a onClick=deleteFilter(this,'"+op+"') href='#' id='"+c.value+"' class='selected nearbyselected' data-filter-name='food_cat' data-filter-value='108602' data-nclick-code='rcc.reset'"
		//         +"data-filter-action='nclick' title='"+c.value+"'>"+c.value+"<span class='del'>X</span></a>");
	 	
	 	//if 1: 업종카테고리를 선택 시 '전체'이면 ''로 foodTypeOp에 출력되지 않음!,아니면 foodTypeOp에 선택된 값이 들어감
	 	//이게 원래사용하던거
		/* if( op == 'foodType')
		{ 
			//전체일때는 null값을 보내야 전체리스트가 나오니까
			if(selectVal == '업종전체'){      //전체를 누르면 null로 처리되어(아래서 커테고리당 한개만 on)  foodTypeOp에 어떤 것도 담기지 않음 => 결과적으로 매퍼에서 null이 되므로 
				$('#foodTypeOp').val('');  //null값을 foodTypeOp 자리에 넣어				
				$(selectOp).html('');
				
			}else{
				$('#foodTypeOp').val(c.value); //c는 onchange되어 바뀐 값 => c.value=> 바뀐 tag의 value속성 값을 가져옴 => "전체", "한식" , "일식", "양식" ..을 foodTypeOp에 넣어
			}
		
		}
	 	
	 	 */
	 	 
	 //업종을 선택했다면!
	if( op == 'foodType')
	{
		
		
		//
		if(selectVal == '업종전체')
		{ 
			
			$('#foodTypeOp').val('');  //null값을 foodTypeOp 자리에 넣어				
			$(selectOp).html(''); //p자리에 null
		
		}
		else
		{
			
				var foodTypeOpVal = $('#foodTypeOp').val();
			
				if(foodTypeOpVal.indexOf(c.value)!=-1)
				{

					//있는경우.
					//끝내
					return;
				
				}
				else
				{
				
				
				//'업종 전체' 아닌 경우=> 버튼 추가
				$(selectOp).append("<a onClick=deleteFilter(this,'"+op+"')  href='#' id='"+c.value+"' class='selected nearbyselected' data-filter-name='food_cat' data-filter-value='108602' data-nclick-code='rcc.reset'"
				         +"data-filter-action='nclick' title='"+c.value+"'>"+c.value+"<span class='del'>X</span></a>");
				
				
				
							if(foodTypeOpVal ==""){
					
							$('#foodTypeOp').val(c.value+',');
				
							}else{
					
				    		$('#foodTypeOp').val(foodTypeOpVal+c.value+',');
				    
							}
				
				}
			
			
		}
		
		
		
		

	}
	else
	{
		
		//foodtype선택이 아니라면
		$(selectOp).html("<a onClick=deleteFilter(this,'"+op+"') href='#' id='"+c.value+"' class='selected nearbyselected' data-filter-name='food_cat' data-filter-value='108602' data-nclick-code='rcc.reset'"
		         +"data-filter-action='nclick' title='"+c.value+"'>"+c.value+"<span class='del'>X</span></a>");
	
 	
	
		if(op == 'sortby')
		{ //if 2: parameter로 받은 값이 sortyby
			//랭킹 카테고리 선택할때 어떤값으로 order by 하기위해서
			//컬럼을 선택해야함
				   lowPrice='';
				   sortInfo='';
				if(selectVal == '평점순'){
					
					sortInfo ='rscore';
					
				}else if(selectVal == '조회순'){
					sortInfo ='rhit';
					
				}else if(selectVal == '좋아요순'){
					
					sortInfo ='rgood';
					
				}else if(selectVal == '가격순 ↓'){
					 lowPrice='rhighprice';
					
				}else if(selectVal == '가격순 ↑'){
					sortInfo='rhighprice';
					
				}
		
				if(selectVal == '정렬안함'){ 
					sortInfo =''; //null값을 foodTypeOp 자리에 넣어	
					lowPrice ='';
					$(selectOp).html('');
				}
		}
			//선택된 옵션들을 위에서 이미 selectOp에 
			
			
		if(op == 'areasortby')
		{ 
			 console.log("지역값"+c.value);
				areasortInfo='';

				if(selectVal == '지역선택')
				{
					
					areasortInfo=''; //null값을 foodTypeOp 자리에 넣어	
					
					$(selectOp).html('');
					
				}
				else
				{ 
				
					areasortInfo = selectVal;
					
				}
		
				
		}
			//선택된 옵션들을 위에서 이미 selectOp에 
 			
	}
	 	 
		searchNearby();
};
	


// 선택된 버튼 없애기
function deleteFilter(v , op){
	

	event.preventDefault();
	console.log(op);
	var tihsId = "#"+v.id;
	
	//console.log(op+"//"+v.id);

	//  업종 데이터 삭제
	if(op =="foodType")
	{
		var tempStr=String($('#foodTypeOp').val());
		var lastStr = "";
		//console.log("tempStr//"+tempStr);
		if(tempStr != '')
		{
			
			var chgStr = v.id+',';
			tempStr= $('#foodTypeOp').val();
			lastStr = tempStr.replace( String(chgStr),"");
			//console.log("사라짐1?>"+lastStr);
			$('#foodTypeOp').val(lastStr);
			
		}
		//없앨애들을 다 지우고 나서 남은 네모칸(input) 남아있는값이 널이면 전체로 바꾼다
		if(lastStr == '')
		{
			$("#foodSelect").val("업종전체").attr("selected", "selected");
		}
		
	}
	
	//랭킹 데이터 삭제
	if(op == 'sortby')
	{ 
		sortInfo = '';
		lowPrice='';
		$("#sortSelect").val("정렬안함").attr("selected", "selected");
	}
	
	//지역 데이터 삭제
	if(op == 'areasortby')
	{ 
		areasortInfo = '';
		$("#areaSelect").val("지역선택").attr("selected", "selected");
	}
	
	$(tihsId).remove();
	
	searchNearby();
};


//선택한 카테고리의 정보가 담긴 foodTypeOp을 통해 아래에 ajax로 값을 뿌려주는 FUNCTION!
function searchNearby(){ 
	
	event.preventDefault();
	//type_name = 양식 or 중식 or 일식 중 한개 값 넘어감
	var foodList = $('#foodTypeOp').val();
	
//	alert(page);
	
	$.ajax({
	
		type:'post', //post방식(hide parameter)
		url:'/TeamProject/restaurant/list_nearby_result.do', //이 주소를 찾아서 실행해 , 서버주소 파일의 경로가 아닌 프로젝트의 풀 주소
		data:{"page":page,"type_name":foodList,"rest_open":restOpen,"sortby_col":sortInfo,"lowPrice_col":lowPrice,"takeout_col":takeoutInfo,"areasortInfo":areasortInfo}, //위 url 주소로 보낼 건데, 데이터는 key와 value로 보내고, 위 url(~.do)에서 value를  
		success:function(res){
			
		//	if(searchVal == 'scroll'){
			
		//		$('#nearbyList').append(res);
			
		//	}else{
				
			$('#nearbyList').html(res);
			
			//}

		}
	})
};


function openButChgCL(){
	
	var nowClass = $('#openBut').attr("class");//현재버튼의   클래스상태(css)
	
	if(nowClass=="openButtBefore"){//선택전클래스
		//그럼 선택전css를 없애고 선택후 css를 class에 준다
		$('#openBut').removeClass("openButtBefore");
		$('#openBut').addClass("openButtAfter");
		//선택을하면 open됐다는 것을 밸류값줌 => 매서에서 사용예정!
		restOpen = 'Y';
	}else{
		//선택후 상태
		//선택후css를 없애고 선택전 css를 class에 준다
		$('#openBut').removeClass("openButtAfter");
		$('#openBut').addClass("openButtBefore");
		//선택해제하면 값을 null처리
		restOpen = '';
	}
	
	searchNearby();
	//css변경 및 오픈체크 변수 설정을 하고 리스트 검색하는 ajax를 콜!
}


function takeoutButChgCL(){
	
	var nowClass = $('#takeoutBut').attr("class");
	
	if(nowClass=="openButtBefore"){
		
		$('#takeoutBut').removeClass("openButtBefore");
		$('#takeoutBut').addClass("openButtAfter");
		//선택을하면 open됐다는 걸 밸류값줌
		takeoutInfo = 'Y';
		
	}else{
		
		$('#takeoutBut').removeClass("openButtAfter");
		$('#takeoutBut').addClass("openButtBefore");
		//선택해제하면 값을 null 처리
		takeoutInfo = '';
	}
	
	searchNearby(); 
	
}

</script>


</head>
<body onload=" searchNearby();">

    <!--============================= LIST =============================-->

    <section class="list-block">
    
     	<!-- ============================================주변맛집 전체화면============================================ -->
        <div class="container-fluid container py-5">
			<div class="nearbyrow">

				<!-- ======================================주변맛집 페이지 왼쪽 화면============================================= -->
				<div class="col-md-7 responsive-wrap nearbymd7">
					<!-- ===================================검색 결과 타이틀 "~ 주변 검색 결과" ===================================-->
					<h5 class="styled-heading">주변 맛집</h5>
					
					<p style="font-size: 20px;">
						 ／ 총  <span>10,579</span>개
					</p>
	<!-- ============================================카테고리 시작!!============================================= -->

					<div class="mt-4">				
						<div class="filter_row area">
							<div class="category">
							
	<!-- ============================================지역 카테고리!!============================================= -->
		
							
								<!-- <button onclick="searchNearby()">test</button> -->

								<!-- 업종선택 버튼 - setFilter() 사용! -->

								<select id="areaSelect" class="menuarrow " style="color: black;" onchange="setFilter(this , 'areasortby' );">
									<option value="지역선택" class="menuarrow "  > 지역선택 </option>
									<option value="강남구" class="menuarrow "  > 강남구 </option>
									<option value="서초구" class="menuarrow " > 서초구  </option>
									<option value="송파구" class="menuarrow " > 송파구 </option>
									<option value="용산구" class="menuarrow " > 용산구  </option>
									<option value="영등포구" class="menuarrow "> 영등포구 </option>
									<option value="마포구" class="menuarrow " > 마포구  </option>
									<option value="종로구" class="menuarrow " > 종로구  </option>
									<option value="중구" 	class="menuarrow "  > 중구 </option>
									<option value="동대문" class="menuarrow " > 동대문  </option>
									<option value="광진구" class="menuarrow " > 광진구  </option>
									<option value="서대문구" class="menuarrow ">  서대문구</option>
									<option value="강북구" class="menuarrow " >  강북구 </option>
									<option value="노원구" class="menuarrow " >  노원구 </option>
									<option value="성동구" class="menuarrow ">  성동구 </option>
									<option value="성북구" class="menuarrow ">  성북구 </option>
								</select>


								<select  id="foodSelect" class="menuarrow " onchange="setFilter(this ,'foodType' ) ;" style="color: black;">
									<option value="업종전체" class="lemonmenu">업종전체<ul><span class="icon-arrow-down"></span></ul></option>
									<option value="한식" class="lemonmenu">한식<ul><span class="icon-arrow-down"></span></ul></option>
									<option value="일식" class="lemonmenu">일식</option>
									<option value="중식" class="lemonmenu">중식</option>
									<option value="양식" class="lemonmenu">양식</option>
									<option value="카페" class="lemonmenu">카페</option>
								</select> 
								
								
								<!-- 정렬선택 버튼 - setFilter() 사용! -->
								<select id="sortSelect" class="menuarrow" onchange="setFilter(this,'sortby' )">
									<option value="정렬안함" class="lemonmenu">정렬순서</option>
									<option value="평점순" class="lemonmenu">평점순</option>
									<option value="조회순" class="lemonmenu">조회순</option>
									<option value="좋아요순" class="lemonmenu">좋아요순</option>
									<option value="가격순 ↓" class="lemonmenu">가격순 ↓</option>
									<option value="가격순 ↑" class="lemonmenu">가격순 ↑</option>
								</select> 

			
								<%--    
								<!-- 가격순선택 버튼 - setFilter() 사용!-->
								<select class="menuarrow" onchange="setFilter(this, 'price');">
									<option value="가격전체" class="lemonmenu">가격순</option>
																</select> 
								--%>
					
								<!--  아래 button type으로 변경!
								<select  title="현재오픈" class="menuarrow select7" onchange="setFilter(this);">
									<option value="현재오픈" class="lemonmenu">현재오픈</option>
								</select>  -->
								
								<!-- 가게오픈 유무 버튼 - openButChgCL()사용  -->
								<button id="openBut" class="openButtBefore" onclick="openButChgCL();">현재오픈</button>
								
								<!--아래 button type으로 변경! 
								<select title="TakeOut" class="menuarrow" onchange="setFilter(this);">
									<option value="테이크아웃" style="display: none;">테이크아웃</option>
								</select> -->
								<button id="takeoutBut" class="openButtBefore" onclick="takeoutButChgCL();">테이크아웃</button>

							</div><!-- div category 끝!! -->

							<!-- ========================================카테고리 끝 =============================================== -->
					
							<!--================================= 선택한 옵션 출력 부분!!=========================================-->
							<!--  각 카테고리마다 각각의 정의된 자리에 출력되기! -->
							<div class="selected_filter mt-2 displaymenu" id="test2">
							<p id="foodType"></p>
							<p id="sortby"></p>
							<p id="areasortby"></p>

							
							<!-- #foodTypeOp를 읽어들여 선택된값들을 model로 보내기 위함! -->
							<!-- <input type='hidden' id='areaTypeOp' value='' />    -->
							<input type='hidden' id='foodTypeOp' value='' /> <!--  hidden="" 추가하기 -->
							
								<!-- 
                        <a href="#" class="selected" data-filter-name="food_cat" data-filter-value="108602" data-nclick-code="rcc.reset"
                            data-filter-action="nclick" title="양식">강남역<span class="del">X</span></a>
                        <a href="#" class="selected" data-filter-name="food_cat" data-filter-value="108602" data-nclick-code="rcc.reset"
                            data-filter-action="nclick" title="양식">양식<span class="del">X</span></a>
                        <a href="javascript:deleteFilter(this);" class="selected" data-filter-name="food_cat" data-filter-value="108602" data-nclick-code="rcc.reset"
                            data-filter-action="nclick" title="양식">카페/술집<span class="del">X</span></a>
                             -->
                             
							</div>


						<!-- ================================가게 1개 =============================================-->  

        
                   <div class="detail-options-wrap nearbysearchlist" id="nearbyList"></div>
               
    	
					<!-- ===============================가게 한개 끝!=================================== -->
				
						</div>
					</div>
					
					<!--============================= KAKAO MAP ============================= 	 -->	

					<div class="col-md-5 responsive-wrap map-wrap nearbymapwrap">
						<div class="map-fix nearbymapfix">
							<button onclick="topFunction()" id="myBtn" title="Go to top">Top</button>
						</div>
					</div>
					
			


<!-- ============================================지역 카테고리 끝!============================================= -->						
					<div class="col-md-5 responsive-wrap map-wrap nearbymapwrap">		

				
				
				
					
					
					</div>
							
	<!-- ============================================옵션 카테고리 시작!!============================================= -->													
	




				</div>
			</div>
		</div>
        </div>
    </section>

    
    <!--//END DETAIL -->
    
    
    
    
    
    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    

	<script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>   


    <!-- 이전에 남아있던 map 관련 소스 :  파악 중 -->
    <script>
        $(".map-icon").click(function() {
            $(".map-fix").toggle();
        });
    </script>
   
   
   
   <!-- Kakao Map Script 
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=671fb4748c5025ba667a7fc5d41d217a"></script>
  <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=APIKEY&libraries=services,clusterer,drawing"></script>
 -->
   <script>
   /*
		// 마커를 클릭했을 때 해당 장소의 상세정보를 보여줄 커스텀오버레이입니다
   		var placeOverlay = new kakao.maps.CustomOverlay({zIndex:1}), 
       contentNode = document.createElement('div'), // 커스텀 오버레이의 컨텐츠 엘리먼트 입니다 
       markers = [], // 마커를 담을 배열입니다
       currCategory = ''; // 현재 선택된 카테고리를 가지고 있을 변수입니다
   
   
   
        var mapContainer = document.getElementById('map');
        var  mapOption = {
            center: new kakao.maps.LatLng(33.450701, 126.570667),
            level: 3
        };
		
        //지도를 생성합니다.
        var map = new kakao.maps.Map(mapContainer, mapOption);
        

    
        
        ////////////////////////////////////////////////////////////////////
        
if (navigator.geolocation) {
    
    // GeoLocation을 이용해서 접속 위치를 얻어옵니다
    navigator.geolocation.getCurrentPosition(function(position) {
        
        var lat = position.coords.latitude, // 위도
            lon = position.coords.longitude; // 경도
        
        var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
            message = '<div style="padding:5px;">내 위치</div>'; // 인포윈도우에 표시될 내용입니다
        
        // 마커와 인포윈도우를 표시합니다
        displayMarker(locPosition, message);
            
      });
    
	} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
    
   		 var locPosition = new kakao.maps.LatLng(33.450701, 126.570667),    
      	  message = 'geolocation을 사용할수 없어요..'
        
    displayMarker(locPosition, message);
	}

// 지도에 마커와 인포윈도우를 표시하는 함수입니다
function displayMarker(locPosition, message) {

    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({  
        map: map, 
        position: locPosition
    }); 
    
    var iwContent = message, // 인포윈도우에 표시할 내용
        iwRemoveable = true;

    // 인포윈도우를 생성합니다
    var infowindow = new kakao.maps.InfoWindow({
        content : iwContent,
        removable : iwRemoveable
    });
    
    // 인포윈도우를 마커위에 표시합니다 
    infowindow.open(map, marker);
    
    // 지도 중심좌표를 접속위치로 변경합니다
    map.setCenter(locPosition);      
}    
*/
    </script>
    
    
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>


<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<!-- header 동작 -->
<script src="../js/bootstrap.min.js"></script>
</body>
</html>
