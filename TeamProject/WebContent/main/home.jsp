<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="now" class="java.util.Date"></jsp:useBean>
<fmt:formatDate var="td" value="${now}" pattern="yyyyMMddkkmm" />
<c:set var="today" value="${fn:substring(td,8,10) }"></c:set>

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
                                    <h5 style="color:white;">푸드계의 구글, 푸들에서 맛있는 일상을 찾으세요.</h5>
                                </div>
                            </div>
                        </div>
                        <div class="row d-flex justify-content-center">
                            <div class="col-md-10">
                                <form class="form-wrap mt-4" action="../search/searchpage.do" id="search_frm" method="post">
                                    <div class="btn-group ui-widget" role="group" aria-label="Basic example">
                                        <input type="text" placeholder="가게 이름" class="btn-group1" id="resName" name="cate" autocomplete="off">
                                        <input type="text" placeholder="지역" class="btn-group2" id="resArea" name="area" autocomplete="off">
                                        <button type="submit" class="btn-form" id="SearchBtn"><span class="icon-magnifier search-icon">
                                      		</span>검색<i class="pe-7s-angle-right"></i>
                                        </button>
                                    </div>
                                    <!-- 자동완성 -->
                                    <div class="col-md-5 pl-0">
                                    	<ul id="auto_compl" style="background-color:#fff; text-align:left; padding: 0 10px; border: 1px solid #aaa;"></ul>
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
	                                <img src="../images/find1.jpg" class="img-fluid" alt="img13" />
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
                       	 	<a href="../restaurant/list_thema.do?detailThema_col=테마카페">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="../images/find-place2.jpg" class="img-fluid" alt="img13" />
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
                        	<a href="../restaurant/list_thema.do?detailThema_col=치맥&피맥">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="../images/find3.jpg" class="img-fluid" alt="img13" />
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
                      		<a href="../restaurant/list_thema.do?detailThema_col=가족모임">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="../images/find4.jpg" class="img-fluid" alt="img13" />
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
                        	<a href="../restaurant/list_thema.do?detailThema_col=술">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="../images/find5.jpg" class="img-fluid" alt="img13" />
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
            	<c:forEach var="vo" items="${popularTop3list }">
	                <div class="col-md-4 featured-responsive">
	                    <div class="featured-place-wrap">
	                        <a href="../restaurant/detail.do?no=${vo.rNo }">
	                            <img src="${vo.ivo.iLink}" class="img-fluid" alt="#">
	                            <span class="featured-rating">${vo.rScore }</span>
	                        </a>
	                            <!-- <span class="featured-rating-orange">3.5</span> -->
	                            <div class="featured-title-box">
	                            	<a href="../restaurant/detail.do?no=${vo.rNo }">
	                                	<h6>${vo.rName }</h6>
	                                </a>
	                               <!--  <p>양식(수제버거)</p><span>•</span>
	                                <p>리뷰 12개</p><span>•</span>
	                                <p><span>\\\\</span>\</p> -->
	                                <ul>
	                                    <li><span class="icon-location-pin"></span>
	                                        <p>${vo.rAddr2 }</p>
	                                    </li>
	                                    <li><span class="icon-screen-smartphone"></span>
	                                        <p>${vo.rTel }</p>
	                                    </li>
	                                </ul>
	                                <div class="bottom-icons">
	                                	<c:choose>
							              <c:when test="${today>=vo.rvo.rOpentime && today<vo.rvo.rClosetime }">
							                <div class="open-now">OPEN NOW</div>
							              </c:when>
							              <c:otherwise>
							                <div class="closed-now">CLOSED NOW</div>
							              </c:otherwise>
							            </c:choose>
	                                    <!-- <a href="#" class="mywish" id="mywish" style="text-align:right;font-size:17pt;">♡</a> -->
	                                    <!-- <span class="ti-heart"></span> -->
	                                    <span class="mywish" value="${vo.rNo }" id="mywish_${vo.rNo }" style="text-align:right;font-size:17pt; color: red;">${vo.myWish }</span>
	                                </div>
	                            </div>
	                        
	                    </div>
	                </div>
                </c:forEach>
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
						<h3>주간 맛집 Top30</h3>
					</div>
				</div>
			</div>
			
			<div class="row justify-content-center d-flex">
				<div class="col-lg-12 post-list">
					<c:forEach var="vo" items="${weeklytop30list }">
						<!-- Start of a content -->
						<div class="single-post d-flex flex-row">
							<div class="thumb">
								<a href="../restaurant/detail.do?no=${vo.rNo }">
									<%-- <img src="${pageContext.request.contextPath }/images/featured1.jpg" alt=""> --%>
									<img src="${vo.ivo.iLink }" style="width: 300px; height: 200px;">
								</a>
							</div>
							<div class="details">
								<div class="title d-flex flex-row justify-content-between">
									<div class="res_title pt-2">
										<a href="../restaurant/detail.do?no=${vo.rNo }"><h4>${vo.rName }<span class="rating">${vo.rScore }</span></h4></a>
									</div>
									<ul class="btns px-0">
										<li class="px-0 py-1"><span class="mywish px-1 mx-2" value="${vo.rNo }" id="mywish_${vo.rNo }" style="color:red; font-size:20px;">${vo.myWish }</span></li>
										<li class="px-0 py-2"><a href="../restaurant/detail.do?no=${vo.rNo }" class="px-1 mx-2">예약하기</a></li>
									</ul>
								</div>
								<!-- <p>20석도 채 안되는 작은 규모이지만 실속있는 수제버거 전문점이다. 외국인들이 많이 찾을 정도로 오리지널 수제버거의 맛을 재현하고 있다. -->
								 <ul class="detailed-info">
	                                    <li><span class="icon-location-pin"></span>
	                                        <p>${vo.rAddr2 }</p>
	                                    </li>
	                                    <li><span class="icon-screen-smartphone"></span>
	                                        <p>${vo.rTel }</p>
	                                    </li>
	                             </ul>
							</div>
						</div>
						<!-- End of a content -->
					</c:forEach>
				</div>
			</div>
			<div class="row justify-content-center">
                <div class="col-md-4">
                    <div class="featured-btn-wrap">
                        <a href="../restaurant/list_weekly.do" class="btn btn-danger">+ 더 보기</a>
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
                <div class="row mb-5 recent-div">
                	
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
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

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
    <!-- home의 검색창 -->
    <script type="text/javascript">
    	$(function(){
    		$('#SearchBtn').click(function(){
    			let cate=$('#cate').val();
    			let area=$('#area').val();
    			if(cate.trim()=="" && area.trim()=="")
    			{
    				alert("검색어를 입력해주세요!")
    				$('#cate').focus();
    				return false;
    			}
    			else
    			{
    				$('#search_frm').submit;
    				return true;
    			}
    		})
    		
    	});
    </script>
   	
   	<script type="text/javascript">

    $.ajax({
   		type:'post',
       	url:'../main/home_recent.do',
       	success:function(res){
       		$('.recent-div').html(res);
       	}
   	})
   	</script> 
    
    <!-- 찜 -->
    <script type="text/javascript">
    	$('.mywish').click(function() {
    		let no=$(this).attr('value');
    		//alert(no);
    		$.ajax({
    			type:'POST',
    			url:'../restaurant/mywish.do',
    			data:{"rno":no},
    			success:function(res){
    				console.log(res);    				
    				if(res.trim()=='NOLOGIN') {
    					alert("로그인 후 이용해주세요.");
    				}
    				else if(res.trim()=='myWishInsert'){ 
    					$('#mywish_'+no).text('♥');
    				}
    				else { // myWishDelete
    					$('#mywish_'+no).text('♡');
    				}
    			},
    			error:function(e){
    				alert(e);
    			}
    		});
    	});
    </script>
    
    <!-- 찜 hover 시 마우스 변경 -->
	<script type="text/javascript">
	$('.mywish').hover(function(){
		$(this).css('cursor','pointer');
	})
	</script>
	
	<!-- 검색어 자동완성 -->
	<script type="text/javascript">
	$(function() {

	    var autocomplete = new Array();	   
	    
	    $('#resName').keyup(function(){
	    	var resName=$('#resName').val();
	    	console.log(resName);
	    	
	    	$.ajax({
    			type:'POST',
    			url:'../main/search_autocomplete.do',
    			data:{"resName":resName},
    			success:function(res){
    				//console.log(res);    				
    				//availableTags=res;
    				autocomplete=res;
    				console.log('autocomplete='+autocomplete);
    				$('#auto_compl').html(res);
    			},
    			error:function(e){
    				alert(e);
    			}
    		});
	    	
	    });
	    
	})
	
	</script>
</body>

</html>
    