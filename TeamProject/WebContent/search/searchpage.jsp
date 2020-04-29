<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="now" class="java.util.Date"></jsp:useBean>
<fmt:formatDate var="td" value="${now}" pattern="yyyyMMddkkmm" />
<c:set var="today" value="${fn:substring(td,8,10) }"></c:set>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
.mblock{
  min-height: calc(100vh - 72px - 209px);
}
</style>
</head>
<body>
<section class="main-block list-block light-bg mblock" id="popular">
  <div class="container">
    <c:if test="${totalCount==0 }">
    	<div class="row">
    	  <div class="col-md-12">
          	<h5>"${area }&nbsp;${cate }"과(와) 일치하는 검색결과가 없습니다.</h5>
          	<ul>
          	  <li>다른 검색어를 사용해 보세요.</li>
          	</ul>
          </div>
          <div class="col-md-12 text-center">
          	<img src="../search/noimage.png" style="margin-top: 50px;">
          </div>
    	</div>
    </c:if>
    <c:if test="${totalCount!=0 }">
    	<div class="row">
       		<div class="col-md-6">
          		<h5>"${area }&nbsp;${cate }"과(와) 일치하는 검색결과</h5>
          		<p>총 <span>${totalCount }</span>개의 맛집이 기다리고 있어요!!</p>
       		</div>
    	</div>
		<div class="row detail-options-wrap py-5">
			<c:forEach var="vo" items="${list }">
			  <div class="col-md-4 featured-responsive">
			    <div class="featured-place-wrap">
			      <a href="../restaurant/detail.do?no=${vo.rNo }">
			        <img src="${vo.ivo.iLink }" class="img-fluid" alt="#">
			        <span class="featured-rating">${vo.rScore }</span>
			      </a>
			      <div class="featured-title-box">
			          <a href="../restaurant/detail.do?no=${vo.rNo }">
			            <h6>${vo.rName }</h6>
			          </a>
			          <p>${vo.rType }</p> <span>• </span>
			          <p>리뷰 ${vo.rScoreCount }</p> <span> • </span>
			          <fmt:parseNumber var="sre" value="${vo.rScore }" integerOnly="true"/>
			          <c:choose>
			            <c:when test="${sre=='5' }">
			              <p><span>★★★★★</span></p>
			            </c:when>
			            <c:when test="${sre=='4' }">
			              <p><span>★★★★</span>★</p>
			            </c:when>
			            <c:when test="${sre=='3' }">
			              <p><span>★★★</span>★★</p>
			            </c:when>
			            <c:when test="${sre=='2' }">
			              <p><span>★★</span>★★★</p>
			            </c:when>
			            <c:when test="${sre=='1' }">
			              <p><span>★</span>★★★★</p>
			            </c:when>
			            <c:otherwise>
			              <p><span></span>★★★★★</p>
			            </c:otherwise>
			          </c:choose>
			          <ul>
			            <li><span class="icon-location-pin"></span>
			              <p>${vo.rAddr1 }</p>
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
			            <span class="ti-heart"></span>
			          </div>
			      </div>
			    </div>
			  </div>
			</c:forEach>
		</div>
	</c:if>
	<div class="mt-3">
	  <nav aria-label="...">
		<ul class="pagination justify-content-center">
			<c:if test="${startPage>1 }">
			    <li class="page-item">
			      <a class="page-link" aria-label="Previous" href="../search/searchpage.do?page=${startPage-1 }&cate=${cate}&area=${area}">
			        <span aria-hidden="true">&laquo;</span>
			        <span class="sr-only">Previous</span>
			      </a>
			    </li>
			</c:if>
			<c:set var="type" value=""/>
			<c:forEach var="i" begin="${startPage }" end="${endPage }">
			  <c:if test="${curPage==i }">
			    <c:set var="type" value="class=\"page-item active\""/>
			  </c:if>
			  <c:if test="${curPage!=i }">
			    <c:set var="type" value="class=page-item"/>
			  </c:if>
			  <li ${type }>
			    <a class="page-link" href="../search/searchpage.do?page=${i }&cate=${cate}&area=${area}">${i }</a>
			  </li>
			</c:forEach>
			<c:if test="${endPage<allPage }">
			  <li class="page-item">
				<a class="page-link" href="../search/searchpage.do?page=${endPage+1 }&cate=${cate}&area=${area}" aria-label="Next"> 
				  <span aria-hidden="true">&raquo;</span> 
				  <span class="sr-only">Next</span>
				</a>
			  </li>
			</c:if>
		</ul>
	  </nav>
    </div>
  </div>
</section>
	<!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
</body>
</html>