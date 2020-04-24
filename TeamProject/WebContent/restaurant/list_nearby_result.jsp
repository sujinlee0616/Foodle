<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>


<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/nearby_result.css">
</head>
<body>
<%-- 
list_nearby_reulst started!
test value: ${result} --%>
  ${result}
  
		  <!-- =========================Ajax 데이터 연동부분============================= -->	
	
		<div id ="contentRes">
		
	 	 <div class="container-fluid py-4 container py-5">

				<!-- ======================================주변맛집 페이지 왼쪽 화면============================================= -->
		
			<div class="row light-bg detail-options-wrap pt-3">	
	
			<!-- ==================================가게 1개 시작!  ======================================-->
            
              <c:if test="${result != ''}">
				 <c:forEach var="i" items="${result }" varStatus="s" >  
                    
                        <div class=" featured-responsive" >
                            <div class="featured-place-wrap" >
                           <a href="../restaurant/detail.do?no=${i.rNo }">  
                   
              <!--  =======================그림 부분 시작 ============================= -->
                                	<div class="featured-title-box">
                                   	 <img src="${i.ivo.iLink }" class="img-fluid" alt="#">
                                    </div>
                                    <span class="featured-rating">${i.rScore }</span>
                <!--  =======================그림 부분  끝============================= -->
                    
                    
                 <!--  =======================요약설명  시작============================= -->
                    
      			
				   			 <div class="featured-title-box">
                                     <h6>${i.rName} </h6>
                                     <p>${i.rType} </p> <span>• </span>
                                     <p>리뷰 ${i.rScoreCount }</p> <span> • </span>
                                    
                                    
                                    
                                    
                                    
                                     
                                     <ul>
                                         <li><span class="icon-location-pin"></span>
                                             <p>${i.rAddr1 }</p>
                                         </li>
                                         <li><span class="icon-screen-smartphone"></span>
                                             <p>${i.rTel }</p>
                                         </li>
                                     </ul>
                                     <div class="bottom-icons">
                                     
              
              
             
              
              
              
                                         <span class="ti-heart"></span>
                                     </div>
                                 </div>
            	    
                   <!--  =======================요약설명  끝 ============================= -->                                 
                  </a>
              </div>
          </div>
                        
       </c:forEach>
	</c:if>                

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

 			<!-- ==========================================가게 첨부 끝! ================================================ -->
 
                    </div>
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
