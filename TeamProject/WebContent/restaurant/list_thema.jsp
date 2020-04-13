<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>


<!--  테마 맛집 페이지 CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/themalist.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>



</head>
<body>
<!--=============================THEMA LIST START =============================-->
 <section class="list-block">
    
     	<!-- 주변맛집 전체화면 -->
        <div class="container-fluid py-4 container py-5">
			<div class="row nearbyrow">

				<!-- ======================================주변맛집 페이지 왼쪽 화면============================================= -->
				<div class="col-md-7 responsive-wrap nearbymd7">
					<!-- ===================================검색 결과 타이틀 "~ 주변 검색 결과" ===================================-->
					<h5>Various Thema List </h5>

					<p>
						총 <span>###개</span>
					</p>
					<!-- ============================================카테고리!!============================================= -->

					
					<div class="mt-4">
						<div class="filter_row area">
							<div class="category">
								<!-- <button onclick="searchNearby()">test</button> -->

		
								<select id="test" title="음식선택" class="menuarrow select7" onchange="setFilter(this);" placeholder="음식종류" style="color: black;">
									<option value="전체" class="lemonmenu">전체 </option>
									<option value="한식" class="lemonmenu">한식</option>
									<option value="일식" class="lemonmenu">일식</option>
									<option value="중식" class="lemonmenu">중식</option>
									<option value="카페" class="lemonmenu">카페</option>
									<option value="베이커리" class="lemonmenu">베이커리</option>
									<option value="패스트푸드" class="lemonmenu">패스트부드</option>
									<option value="양식" class="lemonmenu">양식</option>
									<option value="뷔페" class="lemonmenu">뷔페</option>
									<option value="기타" class="lemonmenu">기타/세계</option>
									<option value="plusicon" data-icon="..//images/plusicon.png">더보기</option>

								</select> 
								
								

							</div>


						<!--=============================THEMA LIST END=============================-->
							
							
                            
                          



							<!-- ==============================선택된 RESTAURANTS START! =============================================-->
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


						
		<!-- ================================모든 리스트 감싸는 곳! =============================================-->
					<div class="row light-bg detail-options-wrap pt-3 nearbysearchlist" id="nearbyList">


								
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

			<!--  ============================= 가게 요약 끝! =======================================-->

						</div>
					</div>
					
			<!--=============================RESTAURANT LIST END=============================-->	
			<!--  ============================= 리스트 출력 모두 감싸는 부분 끝 =======================================-->
			
					
					
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