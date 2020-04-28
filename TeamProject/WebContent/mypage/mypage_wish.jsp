<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

 <section class="main-block light-bg" id="popular">
        <div class="container">
        	<input type="hidden" id="wishCurHidden" value=${page }>
			<input type="hidden" id="wishTotalHidden" value=${total }>
            <div class="row">
            	<c:forEach var="vo" items="${list }">
	                <div class="col-md-4 featured-responsive">
	                    <div class="featured-place-wrap">
	                        <a href="../restaurant/detail.do?no=${vo.RNo }">
	                            <img src="${vo.mvo.ivo.iLink }" class="img-fluid" alt="#">
	                            <span class="featured-rating">${vo.mvo.rScore }</span>
	                        </a>
	                            <!-- <span class="featured-rating-orange">3.5</span> -->
	                            <div class="featured-title-box">
	                                <h6>${vo.mvo.rName }</h6>
	                               <!--  <p>양식(수제버거)</p><span>•</span>
	                                <p>리뷰 12개</p><span>•</span>
	                                <p><span>\\\\</span>\</p> -->
	                                <ul>
	                                    <li><span class="icon-location-pin"></span>
	                                        <p>${vo.mvo.rAddr1 }</p>
	                                    </li>
	                                    <li><span class="icon-screen-smartphone"></span>
	                                        <p>${vo.mvo.rTel }</p>
	                                    </li>
	                                </ul>
	                                <div class="bottom-icons">
	                                    <!-- <div class="closed-now">CLOSED NOW</div> -->
	                                    <div class="open-now">OPEN NOW</div>
	                                    <!-- <a href="#" class="mywish" id="mywish" style="text-align:right;font-size:17pt;">♡</a> -->
	                                    <!-- <span class="ti-heart"></span> -->
	                                 
	                                </div>
	                            </div>
	             
	                    </div>
	                </div>
                </c:forEach>
            </div>
        </div>
    </section>
</body>
</html>
	



<%--

<div class="row justify-content-center d-flex">
	<div class="col-lg-12 post-list">				
		<c:forEach var="vo" items="${list}">
						<!-- Start of a content -->
			<div class="single-post d-flex flex-row">
				<div class="thumb">
					<a href="../restaurant/detail.do?no=${vo.rno }">
						
							<img src="${vo.ivo.iLink }" style="width: 300px; height: 200px;">
					</a>
				</div>
				<div class="details">
					<div class="title d-flex flex-row justify-content-between">
						<div class="res_title pt-2">
							<a href="../restaurant/detail.do?no=${vo.rno }"><h4>${vo.mvo.rName }<span class="rating">${vo.mvo.rScore }</span></h4></a>
						</div>
						<ul class="btns px-0">
							<li><a href="#"><span class="ti-heart"></span></a></li>
							<li><a href="#">예약하기</a></li>
						</ul>
					</div>
				
					<ul class="detailed-info">
					<li><span class="icon-location-pin"></span>
						<p>${vo.mvo.rAddr1 }</p>
					</li>
					<li><span class="icon-screen-smartphone"></span>
						<p>${vo.mvo.rTel }</p>
					</li>
					</ul>
				</div>
			</div>
						<!-- End of a content -->
		</c:forEach>
	</div>
</div> 
 --%>

