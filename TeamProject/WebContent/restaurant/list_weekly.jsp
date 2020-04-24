<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="now" class="java.util.Date"></jsp:useBean>
<fmt:formatDate var="td" value="${now}" pattern="yyyyMMddkkmm" />
<c:set var="today" value="${fn:substring(td,8,10) }"></c:set>

<!DOCTYPE html>
<html lang="ko">
<head>
</head>
<body>
    <!--============================= LIST =============================-->
    <section class="list-block light-bg">
        <div class="container py-5">
            <!-- Menu Title -->
            <div class="row ">
                <div class="col-md-5">
                    <div class="title">
                        <h5>주간 맛집</h5>
                        <p>총 <span>###개</span></p>
                    </div>
                </div>
            </div>
            <!-- CUSTOM FILTER (like hashtag) -->
            <div class="row">
                <div class="col-md-12">
                    <div class="filter mt-4">
                        <div class="filter_row area">
                            <div class="filter_head">
                                <h6>지역</h6>
                            </div>
                            <div class="scrollbar_content">
                                <div class="filter_data">
                                    <ul class="finder_list">
                                        <li>
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000003" title="강남">
                                                <span class="text_over">
                                                    강남<span class="num _category_count" style="display: none">2,209,887</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000008" title="강북">
                                                <span class="text_over">
                                                    강북<span class="num _category_count" style="display: none">12,364</span>
                                                </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- finder_data에서 강남 or 강북 선택 시 나타남 -->
                                <!-- <div class="finder_cell hidden">
                                                    <h4 class="finder_cell_tit">
                                                        <a href="#" id="_catSummaryBack" data-parent-cat="" data-parent-cat-nm=""><span class="tit_pre">이전카테고리로 이동</span>강남
                                                    </h4>
                                                    <ul class="finder_list">
                                                        <li class="">
                                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000097" title="가로수길">
                                                                <span class="text_over">
                                                                    가로수길<span class="num _category_count" style="">72</span>
                                                                </span>
                                                            </a>
                                                        </li>
                                                        <li class="">
                                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000097" title="강남역">
                                                                <span class="text_over">
                                                                    강남역<span class="num _category_count" style="">95</span>
                                                                </span>
                                                            </a>
                                                        </li>
                                                        <li class="">
                                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000097" title="관악/신림">
                                                                <span class="text_over">
                                                                    관악/신림<span class="num _category_count" style="">105</span>
                                                                </span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div> -->
                            </div>
                        </div>
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
                        </div>
                    </div>
                    <div class="selected_filter mt-2">
                        <a href="#" class="selected" data-filter-name="food_cat" data-filter-value="108602"
                            data-nclick-code="rcc.reset" data-filter-action="nclick" title="양식">강남역<span class="del">X</span></a>
                        <a href="#" class="selected" data-filter-name="food_cat" data-filter-value="108602"
                            data-nclick-code="rcc.reset" data-filter-action="nclick" title="양식">양식<span class="del">X</span></a>
                        <a href="#" class="selected" data-filter-name="food_cat" data-filter-value="108602"
                            data-nclick-code="rcc.reset" data-filter-action="nclick" title="양식">카페/술집<span class="del">X</span></a>
                    </div>
                </div>
            </div>
            <div class="row detail-options-wrap py-5">
                <!-- ============================= RESTAURANTS ============================= -->
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
            <div class="mt-3">
			  <nav aria-label="...">
				<ul class="pagination justify-content-center">
					<c:if test="${startPage>1 }">
					    <li class="page-item">
					      <a class="page-link" aria-label="Previous" href="../restaurant/list_weekly.do?page=${startPage-1 }">
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
					    <a class="page-link" href="../restaurant/list_weekly.do?page=${i }">${i }</a>
					  </li>
					</c:forEach>
					<c:if test="${endPage<allPage }">
					  <li class="page-item">
						<a class="page-link" href="../restaurant/list_weekly.do?page=${endPage+1 }" aria-label="Next"> 
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
    <!--//END DETAIL -->

    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>   
</body>

</html>
