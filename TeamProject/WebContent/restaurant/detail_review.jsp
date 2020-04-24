<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function() {
	var no=$('.customer-review_wrap').attr('data-rno');
	
	$('.revpageBtn').click(function(){
		var page=$(this).text();

		$.ajax({
			type:'post',
			url:'../restaurant/detail_review.do',
			data:{"no":no,"page":page},
			success:function(res) {
				$('.review_wrap').html(res);
			}
		})
	})
	
	
	$('.pageBtn').click(function() {
		var page=$(this).attr('data-page');
		
		$.ajax({
			type:'post',
			url:'../restaurant/detail_review.do',
			data:{"no":no,"page":page},
			success:function(res) {
				$('.review_wrap').html(res);
			}
		})
	})
}) 
</script>
</head>
<body>
<div class="customer-review-avg">
    <div class="area_grade col-md-4">
        <p>사용자 총 평점</p>
        <div class="star_avg">
            <div class="stars-outer"> <!-- grey star -->
                <div class="stars-inner" style="width: ${reviewScoreAvg*20}%;"></div>  <!-- yellow star -->
            </div>
        </div>
        <p><span>${reviewScoreAvg } / 5</span></p>
    </div>
    <div class="area_reviewNo col-md-4">
        <p>전체 리뷰 수</p>
        <img src="../images/dialog.png">
        <p><span>${reviewTotalCount }</span></p>
    </div>
</div>
<hr>
<c:if test="${reviewTotalCount==0 }">
	<div class="text-center">등록된 리뷰가 없습니다.</div>
</c:if>
<c:if test="${reviewTotalCount!=0 }">
	<c:forEach var="vo" items="${reviewList }">
	<div class="customer-review_wrap" data-rno="${vo.RNo }">
	    <div class="customer-img">
	        <img src="../images/customer-img0.png" class="img-fluid" alt="#">
	        <p>${vo.userId }</p>
	        <span>35 Reviews</span>
	    </div>
		<div class="customer-content-wrap">
	        <div class="customer-content">
	            <div class="customer-review">
	                
	                <!-- (old) 별점 이미지-->
	                <!-- <span></span>
	                <span></span>
	                <span></span>
	                <span></span>
	                <span class="round-icon-blank"></span> -->
	                <!-- (new) 별점 이미지 -->
	                <div class="stars-outer"> <!-- grey star -->
	                    <div class="stars-inner" style="width: ${vo.revScore*20}%;"></div>  <!-- yellow star -->
	                </div>
	                <p>
	                	<fmt:formatDate value="${vo.revDate }" pattern="yyyy/MM/dd HH:MM"/>
	                </p>
	            </div>
	            <div class="customer-rating">${vo.revScore }</div> <!-- 점수 -->
	            <h6>${vo.revContent }</h6>
	        </div>
	        <p class="customer-text"><%-- ${vo.revContent } --%></p>
	        <!-- <ul>
	            <li><img src="../images/review-img1.jpg" class="img-fluid" alt="#"></li>
	            <li><img src="../images/review-img2.jpg" class="img-fluid" alt="#"></li>
	            <li><img src="../images/review-img3.jpg" class="img-fluid" alt="#"></li>
	        </ul> -->
	        <span>${vo.revGood }명이 이 리뷰가 도움이 되었다고 응답했습니다.</span>
	         <a href="#"><span class="icon-like"></span>도움이 됐어요</a>
	     </div>
	</div>
	<hr>
	</c:forEach>
</c:if>                            
<!-- /////////////////////////////////////// -->
<!-- <div class="customer-review_wrap">
    <div class="customer-img">
        <img src="../images/customer-img0.png" class="img-fluid" alt="#">
        <p>어흥흥흥</p>
        <span>17 Reviews</span>
    </div>
    <div class="customer-content-wrap">
        <div class="customer-content">
            <div class="customer-review">
                <h6>화덕피자 좋아하시는 분들에게 추천!!</h6>
                 (old) 별점 이미지
                <span></span>
                <span></span>
                <span></span>
                <span></span>
                <span class="round-icon-blank"></span>
                (new) 별점 이미지
                <div class="stars-outer"> grey star
                    <div class="stars-inner" style="width: 80%;"></div>  yellow star
                </div>
                <p>2015/09/10</p>
            </div>
            <div class="customer-rating customer-rating-red">4.0</div>
        </div>
        <p class="customer-text">화덕피자 진짜 좋아하는뎅~>< 여기 너무 맛있어요! 화덕향도 나고 치즈도 듬뿍올라가서 좋아요~!</p>
        <span>10명이 이 리뷰가 도움이 되었다고 응답했습니다.</span>
        <a href="#"><span class="icon-like"></span>도움이 됐어요</a>
    </div>
</div>
<hr> -->
                            
<!-- /////////////////////////////////////////////////////// -->
<hr>

<%-- <div>
        <a href="../restaurant/detail.do?no=${mvo.rNo }&page=${curpage>1?curpage-1:curpage }" class="btn btn-sm btn-primary">이전</a>
		${curpage } page / ${totalpage } pages
		<a href="../restaurant/detail.do?no=${mvo.rNo }&page=${curpage<totalpage?curpage+1:curpage }" class="btn btn-sm btn-primary">다음</a>
     </div> --%>

<div class="page">
<nav aria-label="...">
    <ul class="pagination justify-content-center">
	   	<c:if test="${startPage>1 }">
	        <li class="page-item">
	            <span class="page-link pageBtn" data-page="${curpage>1?curpage-1:curpage }" aria-label="Previous"> 
	                <span aria-hidden="true">&laquo;</span>
	                <span class="sr-only">Previous</span>
	            </span>
	        </li>
	    </c:if>
        <c:set var="type" value=""/>
		<c:forEach var="i" begin="${startPage }" end="${endPage }">
			<c:if test="${curpage==i }">
				<c:set var="type" value="class=\"page-item active\""/> <%-- 현재페이지 파란색 --%>
			</c:if>
			<c:if test="${curpage!=i }">
				<c:set var="type" value="class=page-item"/>
			</c:if>
			<li ${type }>
				<span class="page-link revpageBtn">${i }</span>
			</li>
		</c:forEach>
		<c:if test="${endPage<allPage }">
    	    <li class="page-item">
	        <span class="page-link pageBtn" data-page="${endPage+1 }" aria-label="Next"> 
	        	<span aria-hidden="true">&raquo;</span> 
	        	<span class="sr-only">Next</span>
	        </span>
            </li>
    	</c:if>
						    	  	
            <%-- <li class="page-item">
                <a class="page-link" href="#">1</a>
            </li>
            <li class="page-item active">
                <span class="page-link">2
                    <span class="sr-only">(current)</span>
                </span>
            </li>
            <li class="page-item">
                <a class="page-link" href="#">3</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="../restaurant/detail.do?no=${mvo.rNo }&page=${curpage<totalpage?curpage+1:curpage }" aria-label="Next"> 
                    <span aria-hidden="true">&raquo;</span> 
                    <span class="sr-only">Next</span>
                </a>
            </li> --%>
        </ul>
    </nav>
</div>
</body>
</html>