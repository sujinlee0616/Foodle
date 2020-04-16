<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="ko">
<head>

<link rel="stylesheet" href="${pageContext.request.contextPath }/css/nearby2nd.css">

</head>

<body>

<%-- 
list_nearby_reulst started!
test value: ${result} --%>
  
				<div id ="contentRes">
				
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
 
                        
                    </div>   
                    
<!-- jQuery, Bootstrap JS. -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath }/js/popper.min.js"></script>
<script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>


                     
</body>
</html>
