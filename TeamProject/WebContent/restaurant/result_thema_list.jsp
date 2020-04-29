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
<style type="text/css">

.thematile {



}

.themaDesctiption {


}



</style>

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function() {
	var detailThema_col=$('.themaTitle').text();
	var infoThema_col=$('.themaDesctiption').text();
	
	$('.revpageBtn').click(function(){
		var page=$(this).text();

		$.ajax({
			type:'post',
			url:'../restaurant/result_thema_list.do',
			data:{"detailThema_col":detailThema_col,"infoThema_col":infoThema_col,"page":page},
			success:function(res) {
				$('#result_thema_list').html(res);
			}
		})
	})
	
	
	$('.pageBtn').click(function() {
		var page=$(this).attr('data-page');
		
		$.ajax({
			type:'post',
			url:'../restaurant/result_thema_list.do',
			data:{"detailThema_col":detailThema_col,"infoThema_col":infoThema_col,"page":page},
			success:function(res) {
				$('#result_thema_list').html(res);
			}
		})
	})
}) 
</script>

</head>
<body>

  <div class="featured-title-box" style="display: block; width: -webkit-fill-available;">
	<div  class="themaTileBorder1"></div>
	<h3 class="themaTitle" style="text-align: center; margin-bottom: 30px;">${ detailThema_col}</h3>
	<h3 class="themaDesctiption" style="text-align: center;">${infoThema_col }</h3>
	<div  class="themaTileBorder2"></div>
	</div>

	<c:forEach var="svo" items="${slist }" varStatus="status">
	<!-- ===============================가게 1개 =============================================-->
               <div class="featured-responsive" data-rNo="${svo.rNo }">
                   <div class="featured-place-wrap listthemawap" >
    		        <a href="../restaurant/detail.do?no=${svo.rNo }">  
                   
                   <!--  =======================그림 부분 시작 ============================= -->
                           	<div class="featured-title-box">
                               	 <img src="${svo.ivo.iLink }" class="img-fluid" alt="#">
                                    </div>
                                    <span class="featured-rating" >${svo.rScore }</span>

                    <!--  =======================그림 부분  끝============================= -->
                   
                    
                   <!--  =======================요약    설명  시작============================= -->
                         
                                    <div class="featured-title-box">
                                        <h6>${svo.rName }</h6>
                                        <p style="font-size: 17px; margin-top: 8px;">${svo.rType } </p> 
                                        <span>• </span>
                                        <p style="font-size: 17px; margin-top: 8px;">리뷰${svo.rScoreCount }  </p> 
                                        <span> • </span>
                                      
                                        <fmt:parseNumber var="sre" value="${svo.rScore }" integerOnly="true"/>
				         				 <c:choose>
				           					 <c:when test="${sre=='5' }">
				             				 <p style="font-size: x-large;"><span>★★★★★</span></p>
				            				</c:when>
				         			     	 <c:when test="${sre=='4' }">
				            				  <p style="font-size: x-large"><span>★★★★</span>★</p>
				           					 </c:when>
				          			 		 <c:when test="${sre=='3' }">
				            				  <p style="font-size: x-large"><span>★★★</span>★★</p>
				            		 		</c:when>
				           					 <c:when test="${sre=='2' }">
				            				  <p style="font-size: x-large"><span>★★</span>★★★</p>
				      				    	  </c:when>
				       				    	 <c:when test="${sre=='1' }">
				            				  <p style="font-size: x-large"><span>★</span>★★★★</p>
				           					 </c:when>
				          					  <c:otherwise>
				          				     <p style="font-size: x-large"><span></span>★★★★★</p>
				        				    </c:otherwise>
				         					 </c:choose>
                                        <ul>
                                            <li><span class="icon-location-pin"></span>
                                                <p style="font-size: 18px;">${svo.rAddr2}</p>
                                            </li>
                                            <li><span class="icon-screen-smartphone"></span>
                                                <p style="font-size: 18px;">${svo.rTel}</p>
                                            </li>
                                        </ul>
                                         <div class="bottom-icons">
				            <c:choose>
				              <c:when test="${today>=svo.rvo.rOpentime && today<svo.rvo.rClosetime }">
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
                        
		


			<!--  =============================  페이징!! 시작!===================================-->
		
		
		<!-- 	
			<div class="text-center">
				<ul class="pagination">
				<c:if test="${startPage>1 }">
					<li><a href="../recipe/recipe.do?page=${startPage-1 }">&lt;</a></li>
				</c:if>
					<c:set var="type" value=""/>

					<c:forEach var="i" begin="${startPage }" end="${endPage }">
					
					<c:if test="${curpage==i }">
						<c:set var="type" value="class=active"/>
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
			
			 -->
			 
		<table class="table">
		<tr>
		<td>
		<div class="page text-center">
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
						
			        </ul>
			    </nav>
			</div>
			</td>
			</tr>
			</table>
			
			<!--  =============================  페이징!! 끝!===================================-->

			</div>
		</div>
					
			<!--=============================RESTAURANT LIST END=============================-->	
 	 <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>

</body>
</html>