<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
</head>
<body>
	<!-- SLIDER -->
    <section class="slider d-flex align-items-center">
        <!-- <img src="images/slider_bg.jpg" class="img-fluid" alt="#"> -->
        <div class="container">
            <div class="row d-flex justify-content-center">
                <div class="col-md-12">
                    <div class="slider-title_box">
                        <div class="row">
                            <div class="col-md-12">
                                <div class="slider-content_wrap">
                                    <h1 class="dohyeon">주변 맛집을 찾아보세요</h1>
                                    <h5 style="color:white;">푸드계의 구글, 푸들러에서 맛있는 일상을 찾으세요.</h5>
                                </div>
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-md-10">
                                <form class="form-wrap mt-4">
                                    <div class="btn-group" role="group" aria-label="Basic example">
                                        <input type="text" placeholder="카테고리" class="btn-group1">
                                        <input type="text" placeholder="지역" class="btn-group2">
                                        <button type="submit" class="btn-form"><span class="icon-magnifier search-icon">
                                      		</span>검색<i class="pe-7s-angle-right"></i>
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--// SLIDER -->
    <!--//END HEADER -->
    <!-- Start of Fixed Sidebar -->
    <div class="sidenav" id="quick-menu">
        <ul class="p-0">
            <li>
                <a href="#header">
                    <svg height="30" viewBox="10 0 30 30" width="130" xmlns="http://www.w3.org/2000/svg">
                        <path d="M14.83 30.83l9.17-9.17 9.17 9.17 2.83-2.83-12-12-12 12z"></path>
                        <path d="M0 0h48v48h-48z" fill="none"></path>
                    </svg>
                </a>
            </li>
            <li><a href="#theme">테마별 맛집</a></li>
            <li><a href="#popular">인기맛집</a></li>
            <li><a href="#current">실시간 맛집</a></li>
            <li><a href="#recent">최근 본 맛집</a></li>
            <li>
                <a href="#footer">
                    <svg height="30" viewBox="10 0 30 30" width="130" xmlns="http://www.w3.org/2000/svg">
                        <path d="M14.83 16.42l9.17 9.17 9.17-9.17 2.83 2.83-12 12-12-12z"></path>
                        <path d="M0-.75h48v48h-48z" fill="none"></path>
                    </svg>
                </a>
            </li>
        </ul>
    </div>
    <!-- End of Fixed Sidebar -->
    
    <!--============================= THEME =============================-->
    <section class="main-block" id="theme">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <div class="styled-heading">
                        <h3>테마별 맛집</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                	<a href="main.jsp?mode=4">
	                    <div class="find-place-img_wrap">
	                        <div class="grid">
	                            <figure class="effect-ruby">
	                                <img src="${pageContext.request.contextPath }/images/find1.jpg" class="img-fluid" alt="img13" />
	                                <figcaption>
	                                    <h5>특별한 날엔 </h5>
	                                    <p>1,848개</p>
	                                </figcaption>
	                            </figure>
	                        </div>
	                    </div>
	            	</a>
                </div>
                <div class="col-md-4">
                    <div class="row find-img-align">
                        <div class="col-md-12">
                       	 	<a href="main.jsp?mode=1">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="${pageContext.request.contextPath }/images/find-place2.jpg" class="img-fluid" alt="img13" />
	                                        <figcaption>
	                                            <h5>브런치</h5>
	                                            <p>1,204개</p>
	                                        </figcaption>
	                                    </figure>
	                                </div>
	                            </div>
	                    	</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                        	<a href="main.jsp?mode=1">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="${pageContext.request.contextPath }/images/find3.jpg" class="img-fluid" alt="img13" />
	                                        <figcaption>
	                                            <h5>치맥(치킨&맥주)</h5>
	                                            <p>199개</p>
	                                        </figcaption>
	                                    </figure>
	                                </div>
	                            </div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="row find-img-align">
                        <div class="col-md-12">
                      		<a href="main.jsp?mode=1">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="${pageContext.request.contextPath }/images/find4.jpg" class="img-fluid" alt="img13" />
	                                        <figcaption>
	                                            <h5>아이와 함께라면</h5>
	                                            <p>3,824개</p>
	                                        </figcaption>
	                                    </figure>
	                                </div>
	                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                        	<a href="main.jsp?mode=1">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="${pageContext.request.contextPath }/images/find5.jpg" class="img-fluid" alt="img13" />
	                                        <figcaption>
	                                            <h5>술 마시는 친구와 함께</h5>
	                                            <p>4,427개</p>
	                                        </figcaption>
	                                    </figure>
	                                </div>
	                            </div>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--//END FIND PLACES -->
    <!--============================= POPULAR TOP 3 =============================-->
    <section class="main-block light-bg" id="popular">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-5">
                    <div class="styled-heading">
                        <h3>인기 맛집 Top3</h3>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 featured-responsive">
                    <div class="featured-place-wrap">
                        <a href="main.jsp?mode=5">
                            <img src="${pageContext.request.contextPath }/images/featured1.jpg" class="img-fluid" alt="#">
                            <span class="featured-rating">3.5</span>
                            <!-- <span class="featured-rating-orange">3.5</span> -->
                            <div class="featured-title-box">
                                <h6>브루클린더버거조인트</h6>
                                <p>양식(수제버거)</p><span>•</span>
                                <p>리뷰 12개</p><span>•</span>
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
                <div class="col-md-4 featured-responsive">
                    <div class="featured-place-wrap">
                        <a href="../restaurant/detail.do">
                            <img src="${pageContext.request.contextPath }/images/featured2.jpg" class="img-fluid" alt="#">
                            <span class="featured-rating">3.5</span>
                            <!-- <span class="featured-rating-green">3.5</span> -->
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
                                    <!-- <li><span class="icon-link"></span>
                                        <p>https://burgerandlobster.com</p>
                                    </li> -->
                                </ul>
                                <div class="bottom-icons">
                                    <div class="closed-now">CLOSED NOW</div>
                                    <span class="ti-heart"></span>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4 featured-responsive">
                    <div class="featured-place-wrap">
                        <a href="main.jsp?mode=5">
                            <img src="${pageContext.request.contextPath }/images/featured3.jpg" class="img-fluid" alt="#">
                            <span class="featured-rating">4.2</span>
                            <div class="featured-title-box">
                                <h6>스트릿(strEAT) 여의도점</h6>
                                <p>기타/세계-퓨전푸드</p> <span>• </span>
                                <p>리뷰 3개</p> <span> • </span>
                                <p><span>\\\</span>\\</p>
                                <ul>
                                    <li><span class="icon-location-pin"></span>
                                        <p>서울 영등포구 여의대로 66 KTB 투자...</p>
                                    </li>
                                    <li><span class="icon-screen-smartphone"></span>
                                        <p>(02) 761-7672</p>
                                    </li>
                                    <!-- <li><span class="icon-link"></span>
                                        <p>https://burgerandlobster.com</p>
                                    </li> -->
                                </ul>
                                <div class="bottom-icons">
                                    <div class="open-now">OPEN NOW</div>
                                    <span class="ti-heart"></span>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--//END FEATURED PLACES -->
    <!--============================= CURRENT POPULAR TOP 30 =============================-->
    <!-- Start of new  -->  
	<section class="main-block" id="current">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-5">
					<div class="styled-heading">
						<h3>실시간 맛집 Top30</h3>
					</div>
				</div>
			</div>
			<div class="row justify-content-center d-flex">
				<div class="col-lg-12 post-list">
					<!-- Start of a content -->
					<div class="single-post d-flex flex-row">
						<div class="thumb">
							<a href="main.jsp?mode=5">
								<img src="${pageContext.request.contextPath }/images/featured1.jpg" alt="">
							</a>
						</div>
						<div class="details">
							<div class="title d-flex flex-row justify-content-between">
								<div class="res_title pt-2">
									<a href="main.jsp?mode=5"><h4>브루클린더버거조인트<span class="rating">3.5</span></h4></a>
								</div>
								<ul class="btns px-0">
									<li><a href="#"><span class="ti-heart"></span></a></li>
									<li><a href="#">예약하기</a></li>
								</ul>
							</div>
							<p>20석도 채 안되는 작은 규모이지만 실속있는 수제버거 전문점이다. 외국인들이 많이 찾을 정도로 오리지널 수제버거의 맛을 재현하고 있다.
							 <ul class="detailed-info">
                                    <li><span class="icon-location-pin"></span>
                                        <p>서울 서초구 서래로2길 27</p>
                                    </li>
                                    <li><span class="icon-screen-smartphone"></span>
                                        <p>(02) 533-7180</p>
                                    </li>
                                    <!-- <li><span class="icon-link"></span>
                                        <p>http://www.naver.com</p>
                                    </li> -->
                             </ul>
						</div>
					</div>
					<!-- End of a content -->
					<div class="single-post d-flex flex-row">
						<div class="thumb">
							<a href="main.jsp?mode=5">
								<img src="${pageContext.request.contextPath }/images/featured2.jpg" alt="">
							</a>
						</div>
						<div class="details">
							<div class="title d-flex flex-row justify-content-between">
								<div class="res_title pt-2">
									<a href="main.jsp?mode=5"><h4>사모님 돈까스<span class="rating">3.5</span></h4></a>
								</div>
								<ul class="btns px-0">
									<li><a href="#"><span class="ti-heart"></span></a></li>
									<li><a href="#">예약하기</a></li>
								</ul>
							</div>
							<p>상수역에서 맛있는 돈까스를 맛볼 수 있는 “사모님돈까스”를 소개한다.                    
                            깔끔한 나무풍 인테리어 디자인으로 되어있는 이집은 줄서서 먹을정도로 인기가 높다.</p>
							 <ul class="detailed-info">
                                    <li><span class="icon-location-pin"></span>
                                        <p>서울 영등포구 여의대로 66 KTB 투자증권 1층</p>
                                    </li>
                                    <li><span class="icon-screen-smartphone"></span>
                                        <p>02-1234-5678</p>
                                    </li>
                             </ul>
						</div>
					</div>
					<div class="single-post d-flex flex-row">
						<div class="thumb">
							<a href="main.jsp?mode=5">
								<img src="${pageContext.request.contextPath }/images/featured3.jpg" alt="">
							</a>
						</div>
                        <div class="details">
                            <div class="title d-flex flex-row justify-content-between">
                                <div class="res_title pt-2">
                                    <a href="main.jsp?mode=5">
                                        <h4>스트릿(strEAT) 여의도점<span class="rating">4.2</span></h4>
                                    </a>
                                </div>
                                <ul class="btns px-0">
                                    <li><a href="#"><span class="ti-heart"></span></a></li>
                                    <li><a href="#">예약하기</a></li>
                                </ul>
                            </div>
                            <p>따뜻함, 건강함, 편리함을 추구하는 누들 & 라이스 레스토랑 '스트릿(strEAT)'.<br>
                                길거리와 먹거리라는 뜻을 가지고 있는 '스트릿(strEAT)'은 아시아 각 지역의 특색있는 요리를 선보이는 퓨전 레스토랑이다.</p>
                            <ul class="detailed-info">
                                <li><span class="icon-location-pin"></span>
                                    <p>서울 영등포구 여의대로 66 KTB 투자증권 1층</p>
                                </li>
                                <li><span class="icon-screen-smartphone"></span>
                                    <p>02-1234-5678</p>
                                </li>
                            </ul>
                        </div>
					</div>
                    <div class="single-post d-flex flex-row">
                        <div class="thumb">
                            <a href="main.jsp?mode=5">
                                <img src="${pageContext.request.contextPath }/images/featured1.jpg" alt="">
                            </a>
                        </div>
                        <div class="details">
                            <div class="title d-flex flex-row justify-content-between">
                                <div class="res_title pt-2">
                                    <a href="main.jsp?mode=5">
                                        <h4>브루클린더버거조인트<span class="rating">3.5</span></h4>
                                    </a>
                                </div>
                                <ul class="btns px-0">
                                    <li><a href="#"><span class="ti-heart"></span></a></li>
                                    <li><a href="#">예약하기</a></li>
                                </ul>
                            </div>
                            <p>20석도 채 안되는 작은 규모이지만 실속있는 수제버거 전문점이다. 외국인들이 많이 찾을 정도로 오리지널 수제버거의 맛을 재현하고 있다.
                                <ul class="detailed-info">
                                    <li><span class="icon-location-pin"></span>
                                        <p>서울 서초구 서래로2길 27</p>
                                    </li>
                                    <li><span class="icon-screen-smartphone"></span>
                                        <p>(02) 533-7180</p>
                                    </li>
                                </ul>
                        </div>
                    </div>
                    <div class="single-post d-flex flex-row">
                        <div class="thumb">
                            <a href="main.jsp?mode=5">
                                <img src="${pageContext.request.contextPath }/images/featured2.jpg" alt="">
                            </a>
                        </div>
                        <div class="details">
                            <div class="title d-flex flex-row justify-content-between">
                                <div class="res_title pt-2">
                                    <a href="main.jsp?mode=5">
                                        <h4>사모님 돈까스<span class="rating">3.5</span></h4>
                                    </a>
                                </div>
                                <ul class="btns px-0">
                                    <li><a href="#"><span class="ti-heart"></span></a></li>
                                    <li><a href="#">예약하기</a></li>
                                </ul>
                            </div>
                            <p>상수역에서 맛있는 돈까스를 맛볼 수 있는 “사모님돈까스”를 소개한다.
                                깔끔한 나무풍 인테리어 디자인으로 되어있는 이집은 줄서서 먹을정도로 인기가 높다.</p>
                            <ul class="detailed-info">
                                <li><span class="icon-location-pin"></span>
                                    <p>서울 영등포구 여의대로 66 KTB 투자증권 1층</p>
                                </li>
                                <li><span class="icon-screen-smartphone"></span>
                                    <p>02-1234-5678</p>
                                </li>
                            </ul>
                        </div>
                    </div>
				</div>
			</div>
			<div class="row justify-content-center">
                <div class="col-md-4">
                    <div class="featured-btn-wrap">
                        <a href="main.jsp?mode=1" class="btn btn-danger">+ 더 보기</a>
                    </div>
                </div>
            </div>
		</div>
	</section>
    <!--//END CATEGORIES -->
    <!--============================= RECENT LIST =============================-->
        <section class="main-block light-bg" id="recent">
            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-md-5">
                        <div class="styled-heading">
                            <h3>최근 본 맛집</h3>
                        </div>
                    </div>
                </div>
                <div class="row mb-5">
                    <div class="card" style="width: 30%; margin: 0 15px;">
                        <a href="main.jsp?mode=5">
                            <img src="${pageContext.request.contextPath }/images/featured1.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                    <h5 class="card-title">Card title</h5>
                                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                                        content.</p>
                            </div>
                        </a>
                    </div>
                    <div class="card" style="width: 30%; margin: 0 15px;">
                        <a href="main.jsp?mode=5">
                            <img src="${pageContext.request.contextPath }/images/featured2.jpg" class="card-img-top" alt="...">
                            <div class="card-body">
                                <h5 class="card-title">Card title</h5>
                                <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's
                                    content.</p>
                            </div>
                        </a>
                    </div>
                </div>
                <!-- <div class="row justify-content-center">
                    <div class="col-md-4">
                        <div class="featured-btn-wrap">
                            <a href="#" class="btn btn-danger">+ 더 보기</a>
                        </div>
                    </div>
                </div> -->
            </div>
        </section>
        <!--//END FEATURED PLACES -->

    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>

    <!-- GNB Fixed 되는 스크롤 시점 -->
    <script>
        $(window).scroll(function() {
            // 100 = The point you would like to fade the nav in.
            if ($(window).scrollTop() > 100) {
                $('.fixed').addClass('is-sticky');
            } else {
                $('.fixed').removeClass('is-sticky');
            };
        });
    </script>

    <!-- Fixed Sidebar 특정 픽셀 이상부터 fixed시키기 -->
    <script>
        $(window).scroll(function () {
            if ($(window).scrollTop() > 300) {
                $(".sidenav").css("position", "fixed");
                $(".sidenav").css("top", "40%");
            } else {
                $(".sidenav").css("position", "absolute");
                $(".sidenav").css("top", "785px");
            };
        });
    </script>    
    
</body>

</html>
    