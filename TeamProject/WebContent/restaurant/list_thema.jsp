<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>


<!--  테마 맛집 페이지 CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/themalist.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<style type="text/css">

.themarow{

 	display: inline-block;

}

</style>


</head>
<body>
<!--=============================THEMA LIST START =============================-->
 <section class="list-block">
    
     	<!-- 주변맛집 전체화면 -->
        <div class="container-fluid py-4 container py-5">
			<div class="row nearbyrow">

				<!-- ======================================주변맛집 페이지 왼쪽 화면============================================= -->
				<div class="responsive-wrap nearbymd7">
					<!-- ===================================검색 결과 타이틀 "~ 주변 검색 결과" ===================================-->
					<h5 class="styled-heading"> Various Thema List </h5>

					<p>
						총 <span>###개</span>
					</p>
					<!-- ============================================카테고리!!============================================= -->

					
					<div class="mt-4">
						<div class="filter_row area">
						
						    <!--============================= THEME =============================-->
    <section class="main-block" id="theme">
        <div class="container">
        
            <div class="row justify-content-center">
            <!-- 
                <div class="col-md-5">
                    <div class="styled-heading">
                        <h3>테마별 맛집</h3>
                    </div>
                </div>
                 -->
 
            </div>
            

               
                    <div class="themarow find-img-align">
                        <div class="col-md-12">
                       	 	<a href="main.jsp?mode=1">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="${pageContext.request.contextPath }/images/themacate1.png" class="img-fluid" alt="img13" />
	                                        <figcaption>
	                                            <h5>상황별</h5>
	                                            <p>1,204개</p>
	                                        </figcaption>
	                                    </figure>
	                                </div>
	                            </div>
	                    	</a>
                        </div>
                    </div>
                
                
                
            
                    <div class="themarow find-img-align">
                        <div class="col-md-12">
                       	 	<a href="main.jsp?mode=1">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="${pageContext.request.contextPath }/images/themacate2.png" class="img-fluid" alt="img13" />
	                                        <figcaption>
	                                            <h5>메뉴별</h5>
	                                            <p>1,204개</p>
	                                        </figcaption>
	                                    </figure>
	                                </div>
	                            </div>
	                    	</a>
                        </div>
                    </div>
                    
                    
 
                    
                    <!-- 세번째 사진 추가해봄 -->
                    
                      <div class="themarow find-img-align">
                        <div class="col-md-12">
                       	 	<a href="main.jsp?mode=1">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="${pageContext.request.contextPath }/images/themacate3.png" class="img-fluid" alt="img13" />
	                                        <figcaption>
	                                            <h5>스페셜</h5>
	                                            <p>1,204개</p>
	                                        </figcaption>
	                                    </figure>
	                                </div>
	                            </div>
	                    	</a>
                        </div>
                    </div>
                    
                
                <!--카테고리 3개 끝! -->
                
                <!-- ---------------------------작은 카테고리들 출력!하기 -------------------------------->
                
                <div class="smallcatelist">
                
                	<div class="situation1" id="situation2" id="situation3">
                	
                		
                	<div class="themarow find-img-align">
                        <div class="col-md-12">
                       	 	<a href="main.jsp?mode=1">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="${pageContext.request.contextPath }/images/situ3.png" class="img-fluid" alt="img13" />
	                                        <figcaption>
	                                            <p></p>
	                                        </figcaption>
	                                    </figure>
	                                </div>
	                            </div>
                        	</div>
                        <div style="text-align: center" class="themafont"><span>가족과 함께</span></div>
                        </a>
                    </div>
                    
                    
                    
                    <div class="themarow find-img-align">
                        <div class="col-md-12">
                       	 	<a href="main.jsp?mode=1">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="${pageContext.request.contextPath }/images/situ3.png" class="img-fluid" alt="img13" />
	                                        <figcaption>
	                                            <p></p>
	                                        </figcaption>
	                                    </figure>
	                                </div>
	                            </div>
                        	</div>
                        <div style="text-align: center" class="themafont"><span>가족과 함께</span></div>
                        </a>
                    </div>
                    
                    
                    <div class="themarow find-img-align">
                        <div class="col-md-12">
                       	 	<a href="main.jsp?mode=1">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="${pageContext.request.contextPath }/images/situ3.png" class="img-fluid" alt="img13" />
	                                        <figcaption>
	                                            <p></p>
	                                        </figcaption>
	                                    </figure>
	                                </div>
	                            </div>
                        	</div>
                        <div style="text-align: center" class="themafont"><span>가족과 함께</span></div>
                        </a>
                    </div>
                    
                    
                    <div class="themarow find-img-align">
                        <div class="col-md-12">
                       	 	<a href="main.jsp?mode=1">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="${pageContext.request.contextPath }/images/situ3.png" class="img-fluid" alt="img13" />
	                                        <figcaption>
	                                            <p></p>
	                                        </figcaption>
	                                    </figure>
	                                </div>
	                            </div>
                        	</div>
                        <div style="text-align: center" class="themafont"><span>가족과 함께</span></div>
                        </a>
                    </div>
                    
                    
                    <div class="themarow find-img-align">
                        <div class="col-md-12">
                       	 	<a href="main.jsp?mode=1">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="${pageContext.request.contextPath }/images/situ3.png" class="img-fluid" alt="img13" />
	                                        <figcaption>
	                                            <p></p>
	                                        </figcaption>
	                                    </figure>
	                                </div>
	                            </div>
                        	</div>
                        <div style="text-align: center" class="themafont"><span>가족과 함께</span></div>
                        </a>
                    </div>
                    
                    
                    <div class="themarow find-img-align">
                        <div class="col-md-12">
                       	 	<a href="main.jsp?mode=1">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="${pageContext.request.contextPath }/images/situ3.png" class="img-fluid" alt="img13" />
	                                        <figcaption>
	                                            <p></p>
	                                        </figcaption>
	                                    </figure>
	                                </div>
	                            </div>
                        	</div>
                        <div style="text-align: center" class="themafont"><span>가족과 함께</span></div>
                        </a>
                    </div>
                    
                    
                    
                    <div class="themarow find-img-align">
                        <div class="col-md-12">
                       	 	<a href="main.jsp?mode=1">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="${pageContext.request.contextPath }/images/situ3.png" class="img-fluid" alt="img13" />
	                                        <figcaption>
	                                            <p></p>
	                                        </figcaption>
	                                    </figure>
	                                </div>
	                            </div>
                        	</div>
                        <div style="text-align: center" class="themafont"><span>가족과 함께</span></div>
                        </a>
                    </div>
                    
                    
                   <div class="themarow find-img-align">
                        <div class="col-md-12">
                       	 	<a href="main.jsp?mode=1">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="${pageContext.request.contextPath }/images/situ3.png" class="img-fluid" alt="img13" />
	                                        <figcaption>
	                                            <p></p>
	                                        </figcaption>
	                                    </figure>
	                                </div>
	                            </div>
                        	</div>
                        <div style="text-align: center" class="themafont"><span>가족과 함께</span></div>
                        </a>
                    </div>
                    
                    
                    
                    <div class="themarow find-img-align">
                        <div class="col-md-12">
                       	 	<a href="main.jsp?mode=1">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="${pageContext.request.contextPath }/images/situ3.png" class="img-fluid" alt="img13" />
	                                        <figcaption>
	                                            <p></p>
	                                        </figcaption>
	                                    </figure>
	                                </div>
	                            </div>
                        	</div>
                        <div style="text-align: center" class="themafont"><span>가족과 함께</span></div>
                        </a>
                    </div>
                		
                		
                		
                		
                			
                	
                	</div>
                </div>
                
                
            
            
        </div><!-- 카테고리 3개container 끝! -->
    </section><!--  카테고리 3개 section 끝! -->
    
    
						
						
						
						

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

   
</body>
</html>