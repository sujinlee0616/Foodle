<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    
<jsp:useBean id="now" class="java.util.Date"></jsp:useBean>
<fmt:formatDate var="td" value="${now}" pattern="yyyyMMddkkmm" />
<c:set var="today" value="${fn:substring(td,8,10) }"></c:set>
    
    
<!DOCTYPE html>
<html lang="ko">
<head>

    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  

<!--  테마   맛집 페이지 CSS -->
<link rel="stylesheet" href="../css/themalist.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script> 

</head>
<body>



	<c:forEach var="svo" items="${slist }" varStatus="status">
	<!-- ===============================가게 1개 =============================================-->
               <div class="featured-responsive" data-rNo="${svo.rNo }">
                   <div class="featured-place-wrap listthemawap" >
    		        <a href="../restaurant/detail.do?no=${svo.rNo }">  
                   
                   <!--  =======================그림 부분 시작 ============================= -->
                           	<div class="featured-title-box">
                               	 <img src="${svo.ivo.iLink }" class="img-fluid" alt="#">
                                    </div>
                                    <span class="featured-rating">${svo.rScore }</span>

                    <!--  =======================그림 부분  끝============================= -->
                   
                    
                   <!--  =======================요약    설명  시작============================= -->
                         
                                    <div class="featured-title-box">
                                        <h6>${svo.rName }</h6>
                                        <p>${svo.rType } </p> 
                                        <span>• </span>
                                        <p>리뷰${svo.rScoreCount }  </p> 
                                        <span> • </span>
                                      
                                        <fmt:parseNumber var="sre" value="${svo.rScore }" integerOnly="true"/>
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
                                                <p>${svo.rAddr2}</p>
                                            </li>
                                            <li><span class="icon-screen-smartphone"></span>
                                                <p>${svo.rTel}</p>
                                            </li>
                                        </ul>
                                         <div class="bottom-icons">
				            <c:choose>
				              <c:when test="${today>=i.rvo.rOpentime && today<i.rvo.rClosetime }">
				                <div class="open-now">OPEN&nbsp;NOW</div>
				              </c:when>
				              <c:otherwise>
				                <div class="closed-now">CLOSED&nbsp;NOW</div>
				              </c:otherwise>
				            </c:choose>
				           
				          </div>
                                    </div>
                   <!--  =======================요약설명  끝 ============================= -->                  
                                    
                                </a>
                            </div>
                        </div>
                        
           </c:forEach>             

				<!-- ===============================가게 한개 끝!=================================== -->
                        

			<!--  ============================= 가게 요약 끝! =======================================-->
			
			
			<!--  =============================  페이징!! 시작!===================================-->
			<div class="clear"></div>

			<div class="text-center">
				<ul class="pagination">
				<c:if test="${startPage>1 }">
					<li><a href="../recipe/recipe.do?page=${startPage-1 }">&lt;</a></li>
				</c:if>
					<c:set var="type" value=""/>

					<c:forEach var="i" begin="${startPage }" end="${endPage }">
					
					<c:if test="${curpage==i }">
						<c:set var="type" value="class=active"/><!-- 클릭한 부분=active! 현재페이지! css조작만 할뿐! model에서는 불가능!-->
					</c:if>
					
					<c:if test="${curpage!=i }">
						<c:set var="type" value=""/>
					</c:if>
					
					<li ${type }><a href="../recipe/recipe.do?page=${i }">${i }</a></li>
					</c:forEach>
				<c:if test="${endPage<allPage }">
					<li><a href="../recipe/recipe.do?page=${endPage+1 }">&gt;</a></li>
				</c:if>
					
				</ul>
			</div>
			
			<!--  =============================  페이징!! 끝!===================================-->
			
			

			</div>
		</div>
					
			<!--=============================RESTAURANT LIST END=============================-->	
 	 <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>

</body>
</html>