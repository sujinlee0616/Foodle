<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>
 <!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script> 
<!-- 새롭게 만든 주변 맛집 페이지 CSS -->
 <link rel="stylesheet" href="${pageContext.request.contextPath }/css/nearby.css">

 
 
 <!-- ShadowBox  -->
<link rel="stylesheet" href="../shadow/css/shadowbox.css">
<script type="text/javascript" src="../shadow/js/shadowbox.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">

Shadowbox.init({
	players:['iframe']
});

$(function(){

	$('#moretype').click(function(){
	
		Shadowbox.open({
			
			content:'../restaurant/moretype.do',
			title:'More Types',
			player:''
			
		})	
		
	})
	
	
	
})



</script>
   
<style type="text/css">

.dropdown {
	display: inline;

}

.dropdown ul li {

	display: inline;

}

</style>

</head>
<body>
    <!--============================= LIST =============================-->
    <section class="list-block">
    
     	<!-- 주변맛집 전체화면 -->
        <div class="container-fluid py-4 light-bg">
            <div class="row">
            
        		<!-- ======================================주변맛집 페이지 왼쪽 화면============================================= -->   
                <div class="col-md-7 responsive-wrap">
                     
                        <h5> # 주변 맛집</h5>
                    <!-- ===================================검색 결과 타이틀 "~ 주변 검색 결과" ===================================-->
						<div>   <p>총 <span>###개</span></p> </div>
 					 <!-- ============================================카테고리!!============================================= -->
                  
                    <div class="mt-4">
                        <div class="filter_row area">
							<div class="category">
							<!--첫번째  button -->
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

							<!--두번째  button -->
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
							
							<!--세번째  button -->

							<div class="dropdown">
								<button class="btn btn-default dropdown-toggle" type="button"
									data-toggle="dropdown">
									Open Now 
								</button>
							</div>

							<!-- 업종 에서 기본만 올려두고 나머지는 더보기 클릭하면 새창에서 나오도록!whitebox!!! -->
							<!--네번째  button -->
							<div class="dropdown">
								<button class="btn btn-default dropdown-toggle" type="button"
									data-toggle="dropdown">
									업종 
								</button>
								<ul class="dropdown-menu">
									<li><a href="#">한식</a></li>
									<li><a href="#">분식</a></li>
									<li><a href="#">일식</a></li>
									<li><a href="#">베이커리</a></li>
									<li><a href="#">카페</a></li>
									<li><a href="#">중식</a></li>
									<li class="divider"></li>
									<li><a href="#" id="moretype">더보기</a></li>
								</ul>
							</div>
							
							<!--다섯번째  button -->
							
							<div class="dropdown">
								<button class="btn btn-default dropdown-toggle" type="button"
									data-toggle="dropdown">
									Top Rated 
								</button>
							</div>
							
							<!--여섯번째  button -->
							
						</div>

			<!-- ========================================카테고리 끝============================================ -->
				 
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
                    <!--================================= 카테고리 결과 출력 =========================================-->
                    <div class="selected_filter mt-2">
                        <a href="#" class="selected" data-filter-name="food_cat" data-filter-value="108602" data-nclick-code="rcc.reset"
                            data-filter-action="nclick" title="양식">강남역<span class="del">X</span></a>
                        <a href="#" class="selected" data-filter-name="food_cat" data-filter-value="108602" data-nclick-code="rcc.reset"
                            data-filter-action="nclick" title="양식">양식<span class="del">X</span></a>
                        <a href="#" class="selected" data-filter-name="food_cat" data-filter-value="108602" data-nclick-code="rcc.reset"
                            data-filter-action="nclick" title="양식">카페/술집<span class="del">X</span></a>
                    </div>
                    
                    
                    <!-- ==============================선택된 데이터 출력! =============================================-->
                    <!-- ============================= RESTAURANTS ============================= -->
                    <div class="row light-bg detail-options-wrap mt-5 pt-3">
                        <div class="col-sm-6 col-lg-12 col-xl-6 featured-responsive">
                            <div class="featured-place-wrap">
                                <a href="main.jsp?mode=5">
                                    <img src="images/featured1.jpg" class="img-fluid" alt="#">
                                    <span class="featured-rating">6.5</span>
                                    <div class="featured-title-box">
                                        <h6>브루클린더버거조인트</h6>
                                        <p>양식(수제버거) </p> <span>• </span>
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
                                </a>
                            </div>
                        </div>
                        <div class="col-sm-6 col-lg-12 col-xl-6 featured-responsive">
                            <div class="featured-place-wrap">
                                <a href="main.jsp?mode=5">
                                    <img src="images/featured2.jpg" class="img-fluid" alt="#">
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

                        <div class="col-sm-6 col-lg-12 col-xl-6 featured-responsive">
                            <div class="featured-place-wrap">
                                <a href="main.jsp?mode=5">
                                    <img src="images/featured3.jpg" class="img-fluid" alt="#">
                                    <span class="featured-rating">3.2</span>
                                    <div class="featured-title-box">
                                        <h6>스트릿(strEAT) 여의도점</h6>
                                        <p>기타/세계-퓨전푸드 </p> <span>• </span>
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
                        <div class="col-sm-6 col-lg-12 col-xl-6 featured-responsive">
                            <div class="featured-place-wrap">
                                <a href="main.jsp?mode=5">
                                    <img src="images/featured4.jpg" class="img-fluid" alt="#">
                                    <span class="featured-rating">9.5</span>
                                    <div class="featured-title-box">
                                        <h6>피자디나폴리(Pizza di Napoli)</h6>
                                        <p>양식 </p> <span>• </span>
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
                    </div>
                </div>
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
    </section>
    <!--//END DETAIL -->
    
    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>

    <!-- 이전에 남아있던 map 관련 소스 : 파악 중 -->
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
