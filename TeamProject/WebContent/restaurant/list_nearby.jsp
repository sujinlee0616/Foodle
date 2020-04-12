<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>

<link rel="stylesheet" href="${pageContext.request.contextPath }/css/nearby.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/css/dd.css">
<link rel="stylesheet" href="jquery-select7.css">
 
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.dd.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.dd.js"></script>
<!-- 새롭게 만든 주변 맛집 페이지 CSS -->

 
 <!-- ShadowBox 
<link rel="stylesheet" href="../shadow/css/shadowbox.css">
<script type="text/javascript" src="../shadow/js/shadowbox.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script> -->
<script type="text/javascript">

/* 
 $('.del').onClick(
			function(){
				alert(1);
			}		 
		 );
 */
 
 function setFilter(c){ //선택한 카테고리 출력 기능
		$('#test2').append("<a onClick=deleteFilter(this) href='#' id='"+c.value+"' class='selected nearbyselected' data-filter-name='food_cat' data-filter-value='108602' data-nclick-code='rcc.reset'"
		         +"data-filter-action='nclick' title='"+c.value+"'>"+c.value+"<span class='del'>X</span></a>");
		searchNearby();
		
	}	;
	
function deleteFilter(v){
	var tihsId = "#"+v.id;
	$(tihsId).remove();
};

function searchNearby(){ //선택한 카테고리를 아래에 ajax로 값을 뿌려주는 기능
	$.ajax({
		
		type:'post', //post방식(hide parameter)
		//url:'/TeamProject/restaurant/list_nearby_result.do', //이 주소를 찾아서 실행해
		url:'../restaurant/list_nearby_result.do', //이 주소를 찾아서 실행해
		data:{"pwd":"123","no":"555"}, //위 url 주소로 보낼 건데, 데이터는 key와 value로 보내고, 위 url(~.do)에서 value를  
		success:function(res){//0또는 1의 값을 가지는 res/
			//@RequestMapping("reply/password_check.do") 여기서 res받음 
			console.log(res);
			$('#nearbyList').html(res);
		}
		
	})

}


</script>
   
<style type="text/css">
.dropdown {
	display: inline;
}
.dropdown ul li {
	display: inline;
}

</style>

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

<script src="jquery-select7.js"></script>

</head>
<body>
    <!--============================= LIST =============================-->
    <section class="list-block">
    
     	<!-- 주변맛집 전체화면 -->
        <div class="container-fluid py-4 container py-5">
			<div class="row nearbyrow">

				<!-- ======================================주변맛집 페이지 왼쪽 화면============================================= -->
				<div class="col-md-7 responsive-wrap nearbymd7">
					<!-- ===================================검색 결과 타이틀 "~ 주변 검색 결과" ===================================-->
					<h5>Best Places near 주변 맛집 ###</h5>

					<p>
						총 <span>###개</span>
					</p>
					<!-- ============================================카테고리!!============================================= -->



					<div class="mt-4">
						<div class="filter_row area">
							<div class="category">
								<!-- <button onclick="searchNearby()">test</button> -->

								<select id="test" title="음식선택" class="menuarrow select7"
									onchange="setFilter(this);" placeholder="음식종류"
									style="color: black;">
									<option value="전체" class="lemonmenu">전체 <span><svg
												xmlns="http://www.w3.org/2000/svg" width="16" height="16"
												viewBox="0 0 16 16" class="icon_svg">
												<path
													d="M8 10.5a1 1 0 0 1-.7-.29l-3.06-3a1 1 0 1 1 1.41-1.42L8 8.1l2.35-2.31a1 1 0 0 1 1.41 1.42l-3.06 3a1 1 0 0 1-.7.29z"></path></svg></span></option>
									<option value="한식" class="lemonmenu">한식</option>
									<option value="일식" class="lemonmenu">일식</option>
									<option value="중식" class="lemonmenu">중식</option>
									<option value="카페" class="lemonmenu">카페</option>
									<option value="베이커리" class="lemonmenu">베이커리</option>
									<option value="패스트푸드" class="lemonmenu">패스트부드</option>
									<option value="양식" class="lemonmenu">양식</option>
									<option value="뷔페" class="lemonmenu">뷔페</option>
									<option value="기타" class="lemonmenu">기타/세계</option>
									<option value="plusicon"
										data-icon="${pageContext.request.contextPath }/images/plusicon.png">더보기</option>

								</select> <select id="test" title="정렬" class="menuarrow select7"
									onchange="setFilter(this);">
									<option value="랭킹순" class="lemonmenu">랭킹순</option>
									<option value="조회순" class="lemonmenu">평점순</option>
									<option value="조회순" class="lemonmenu">조회순</option>
								</select> <select id="test" title="가격순" class="menuarrow select7"
									onchange="setFilter(this);">
									<option value="낮은가격순" class="lemonmenu">낮은 가격순</option>
									<option value="높은가격순" class="lemonmenu">높은 가격순</option>
								</select> <select id="test" title="현재오픈" class="menuarrow select7"
									onchange="setFilter(this);">
									<option value="현재오픈" class="lemonmenu">현재오픈</option>
								</select> <select id="test" title="TakeOut" class="menuarrow select7"
									onchange="setFilter(this);">
									<option value="테이크아웃" style="display: none;">테이크아웃</option>
								</select>



							</div>


							<!-- 
							
							<div class="dropdown">
								<button class="btn btn-default dropdown-toggle" type="button" 
								data-toggle="dropdown">
									Price 
								</button>
								<ul class="dropdown-menu">
									<li><a href="#">$</a></li>
									<li><a href="#">$$</a></li>
									<li><a href="#">$$$</a></li>
									<li class="divider"></li>
									<li><a href="#">Save</a></li>
								</ul>
							</div>

							<div class="dropdown">
								<button class="btn btn-default dropdown-toggle" type="button"
									data-toggle="dropdown">
								  Distance 
								</button>
								<ul class="dropdown-menu">
									<li><a href="#">1min</a></li>
									<li><a href="#">5min</a></li>
									<li><a href="#">15min</a></li>
									<li><a href="#">30min</a></li>
									<li class="divider"></li>
									<li><a href="#">Save</a></li>
								</ul>
							</div>
							
							 -->



							<!-- ========================================카테고리 끝 ============================================ -->
							<!-- 
                        <div class="filter_row food_cat">
                            <div class="filter_head">
                                <h6>업종</h6>
                            </div>
                            <div class="scrollbar_content">
                                <div class="filter_data">
                                    <ul class="finder_list">
                                        <li class="">
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000003" title="한식">
                                                <span class="text_over">
                                                    한식<span class="num _category_count" style="display: none">2,209,887</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000008" title="양식">
                                                <span class="text_over">
                                                    양식<span class="num _category_count" style="display: none">12,364</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000008" title="일식">
                                                <span class="text_over">
                                                    일식<span class="num _category_count" style="display: none">12,364</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000008" title="중식">
                                                <span class="text_over">
                                                    중식<span class="num _category_count" style="display: none">12,364</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000008" title="패스트푸드">
                                                <span class="text_over">
                                                    패스트푸드<span class="num _category_count" style="display: none">12,364</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000008" title="베이커리">
                                                <span class="text_over">
                                                    베이커리<span class="num _category_count" style="display: none">12,364</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000008" title="퓨전음식">
                                                <span class="text_over">
                                                    퓨전음식<span class="num _category_count" style="display: none">12,364</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000008" title="뷔페">
                                                <span class="text_over">
                                                    뷔페<span class="num _category_count" style="display: none">12,364</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000008" title="카페/술집">
                                                <span class="text_over">
                                                    카페/술집<span class="num _category_count" style="display: none">12,364</span>
                                                </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div> 
                            
                            -->




							<!--================================= 선택한 옵션 출력 Ajax 부분!!=========================================-->
							<div class="selected_filter mt-2 displaymenu" id="test2">

								<!-- 
                        <a href="#" class="selected" data-filter-name="food_cat" data-filter-value="108602" data-nclick-code="rcc.reset"
                            data-filter-action="nclick" title="양식">강남역<span class="del">X</span></a>
                        <a href="#" class="selected" data-filter-name="food_cat" data-filter-value="108602" data-nclick-code="rcc.reset"
                            data-filter-action="nclick" title="양식">양식<span class="del">X</span></a>
                        <a href="javascript:deleteFilter(this);" class="selected" data-filter-name="food_cat" data-filter-value="108602" data-nclick-code="rcc.reset"
                            data-filter-action="nclick" title="양식">카페/술집<span class="del">X</span></a>
                             -->
							</div>


							<!-- ==============================선택된 RESTAURANTS 리스트 출력! =============================================-->

							<div class="row light-bg detail-options-wrap pt-3 nearbysearchlist" id="nearbyList">


								<!-- ================================가게 1개 =============================================-->
								  <!-- ================================가게 1개 =============================================-->
                        <div class=" featured-responsive" >
                            <div class="featured-place-wrap" >
                                <a href="main.jsp?mode=5">
                   
                   
                   <!--  =======================그림 부분 시작 ============================= -->
                                	<div class="featured-title-box">
                                   	 <img src="${pageContext.request.contextPath }/images/featured1.jpg" class="img-fluid" alt="#">
                                    </div>
                                    <span class="featured-rating">6.5</span>
                    <!--  =======================그림 부분  끝============================= -->
                    
                    
                   <!--  =======================요약설명  시작============================= -->
                         
                                    <div class="featured-title-box">
                                        <h6>브루클린더버거조인트 AJAX</h6>
                                        <p>양식 </p> <span>• </span>
                                        <p>리뷰 12개</p> <span> • </span>
                                        <p><span>\\\\</span>\</p>
                                        <ul>
                                            <li><span class="icon-location-pin"></span>
                                                <p>서울 서초구 서래로2길 27</p>
                                            </li>
                                            <li><span class="icon-screen-smartphone"></span>
                                                <p>(02) 533-7180</p>
                                            </li>
                                        </ul>
                                        <div class="bottom-icons">
                                            <div class="closed-now">CLOSED NOW</div>
                                            <span class="ti-heart"></span>
                                        </div>
                                    </div>
                   <!--  =======================요약설명  끝 ============================= -->                  
                                    
                                </a>
                            </div>
                        </div>
                        
                        

<!-- ===============================가게 한개 끝!=================================== -->
                        
                        
                        <div class=" featured-responsive">
                            <div class="featured-place-wrap">
                                <a href="main.jsp?mode=5">
                                <div class="featured-title-box">
                                    <img src="${pageContext.request.contextPath }/images/featured2.jpg" class="img-fluid" alt="#">
                                    </div>
                                    <span class="featured-rating">9.5</span>
                                    <div class="featured-title-box">
                                        <h6>사모님돈까스</h6>
                                        <p>한식 </p> <span>• </span>
                                        <p>리뷰 3개</p> <span> • </span>
                                        <p><span>\\</span>\\\</p>
                                        <ul>
                                            <li><span class="icon-location-pin"></span>
                                                <p>서울 마포구 와우산로 39-13</p>
                                            </li>
                                            <li><span class="icon-screen-smartphone"></span>
                                                <p>(02) 337-2207</p>
                                            </li>
                                        </ul>
                                        <div class="bottom-icons">
                                            <div class="open-now">OPEN NOW</div>
                                            <span class="ti-heart"></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>



                        <div class=" featured-responsive">
                            <div class="featured-place-wrap">
                                <a href="main.jsp?mode=5">
                                <div class="featured-title-box">
                                    <img src="${pageContext.request.contextPath }/images/featured3.jpg" class="img-fluid" alt="#">
                                    </div>
                                    <span class="featured-rating">3.2</span>
                                    <div class="featured-title-box">
                                        <h6>스트릿(strEAT) 여의도점</h6>
                                        <p>기타/세계 </p> <span>• </span>
                                        <p>리뷰 3개</p> <span> • </span>
                                        <p><span>\\\</span>\\</p>
                                        <ul>
                                            <li><span class="icon-location-pin"></span>
                                                <p>서울 영등포구 여의대로 66 KTB 투...</p>
                                            </li>
                                            <li><span class="icon-screen-smartphone"></span>
                                                <p>(02) 761-7672</p>
                                            </li>
                                        </ul>
                                        <div class="bottom-icons">
                                            <div class="closed-now">CLOSED NOW</div>
                                            <span class="ti-heart"></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        
                        
                        
                        
                        
                        
                        <div class=" featured-responsive">
                            <div class="featured-place-wrap">
                                <a href="main.jsp?mode=5">
                                <div class="featured-title-box">
                                    <img src="${pageContext.request.contextPath }/images/featured4.jpg" class="img-fluid" alt="#">
                                    </div>
                                    <span class="featured-rating">9.5</span>
                                    <div class="featured-title-box">
                                        <h6>피자디나 폴리(Pizza di Napoli)</h6>
                                        <p>양 식 </p> <span>• </span>
                                        <p>리뷰 3개</p> <span> • </span>
                                        <p><span>\\\</span>\\</p>
                                        <ul>
                                            <li><span class="icon-location-pin"></span>
                                                <p>서울 강남구 압구정로4길 13-17 2층</p>
                                            </li>
                                            <li><span class="icon-screen-smartphone"></span>
                                                <p>(02) 512-3109</p>
                                            </li>
                                        </ul>
                                        <div class="bottom-icons">
                                            <div class="closed-now">CLOSED NOW</div>
                                            <span class="ti-heart"></span>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        
							<div class=" featured-responsive">
								<div class="featured-place-wrap">
									<a href="main.jsp?mode=5">
										<div class="featured-title-box">
											<img
												src="${pageContext.request.contextPath }/images/featured4.jpg"
												class="img-fluid" alt="#">
										</div> <span class="featured-rating">9.5</span>
										<div class="featured-title-box">
											<h6>피자디나폴리(Pizza di Napoli)</h6>
											<p>양식</p>
											<span>• </span>
											<p>리뷰 3개</p>
											<span> • </span>
											<p>
												<span>\\\</span>\\
											</p>
											<ul>
												<li><span class="icon-location-pin"></span>
													<p>서울 강남구 압구정로4길 13-17 2층</p></li>
												<li><span class="icon-screen-smartphone"></span>
													<p>(02) 512-3109</p></li>
											</ul>
											<div class="bottom-icons">
												<div class="closed-now">CLOSED NOW</div>
												<span class="ti-heart"></span>
											</div>
										</div>
									</a>
								</div>
							</div>

<!--  요약 끝! -->

						</div>
					</div>
					<!--============================= KAKAO MAP ============================= -->
					<div class="col-md-5 responsive-wrap map-wrap">
						<div class="map-fix">
							<div id="map" data-lat="40.674" data-lon="-73.945" data-zoom="14"></div>
						</div>
					</div>
				</div>

			</div>


		</div>
        </div>
    </section>
    <!--//END DETAIL -->
    
    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>

    <!-- 이전에 남아있던 map 관련 소스 :  파악 중 -->
    <script>
        $(".map-icon").click(function() {
            $(".map-fix").toggle();
        });
    </script>
   
   <!-- Kakao Map Script -->
   <script>
        var container = document.getElementById('map');
        var options = {
            center: new kakao.maps.LatLng(33.450701, 126.570667),
            level: 3
        };

        var map = new kakao.maps.Map(container, options);
    </script>

   
</body>
</html>
