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
<link rel="stylesheet" href="../css/nearby_result.css">
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">

 /* 
  $(window).scroll(function() {
      //var test =$(window).scrollTop() -700;
      if ($(window).scrollTop() == $(document).height() - $(window).height()+300) {
         page++;
        console.log(page);
        searchNearby('scroll');
        //$("body").append('<div class="big-box"><h6>Page ' + page + '</h6></div>');
      }
  });
  
  */
  
  
  
//Get the button
  var mybutton = document.getElementById("myBtn");

  // When the user scrolls down 20px from the top of the document, show the button
  window.onscroll = function() {scrollFunction()};

  function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
      mybutton.style.display = "block";
    } else {
      mybutton.style.display = "none";
    }
  }

  // When the user clicks on the button, scroll to the top of the document
  function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}

</script>

<style type="text/css">

.nearbysearchlist p span
{

	color: #ff7474;
    
}

h6 .plshover:hover {

text-decoration: underline;

}

</style>


</head>
<body>

<%-- 
list_nearby_reulst started!
test value: ${result}
  ${result} --%>
  
  
  	  <!-- =========================Ajax 데이터 연동부분============================= -->	
	
		<div id ="contentRes">
		
	 	<!--  <div class="container-fluid container">   -->

				<!-- ======================================주변맛집 페이지 왼쪽 화면============================================= -->
		
			<div class="detail-options-wrap">	
	
			<!-- ==================================가게 1개 시작!  ======================================-->
            
              <c:if test="${result != ''}">
				 <c:forEach var="i" items="${result }" varStatus="s" >  
  
                        <div class=" featured-responsive" >
                       
                      
                            <div class="featured-place-wrap" >

                           <a href="../restaurant/detail.do?no=${i.rNo }">  
                   
              <!--  =======================그림   부분   시작 ============================= -->
                                	<div class="featured-title-box">

                                    <img src="${i.ivo.iLink }" class="img-fluid" alt="#">


                                    </div>
                <!--  =======================그림 부분  끝============================= -->
                    
                    
                 <!--  =======================요약설명  시작============================= -->
                    
      			
				   			 <div class="featured-title-boxSecond">
                                     <h6 class="plshover">${i.rName}</h6>
                                     <p>${i.rType}&nbsp; </p> 
                                     <span>• &nbsp;</span>
                                     <p>리뷰 ${i.rScoreCount }&nbsp; </p> <span> •&nbsp; </span>
                                    
 						<fmt:parseNumber var="sre" value="${i.rScore }" integerOnly="true"/>
				          <c:choose>
				            <c:when test="${sre=='5' }">
				              <p style="font-size: xx-large"><span>★★★★★</span></p>
				            </c:when>
				            <c:when test="${sre=='4' }">
				              <p style="font-size: xx-large"><span>★★★★</span>★</p>
				            </c:when>
				            <c:when test="${sre=='3' }">
				              <p style="font-size: xx-large"><span>★★★</span>★★</p>
				            </c:when>
				            <c:when test="${sre=='2' }">
				              <p style="font-size: xx-large"><span>★★</span>★★★</p>
				            </c:when>
				            <c:when test="${sre=='1' }">
				              <p style="font-size: xx-large"><span>★</span>★★★★</p>
				            </c:when>
				            <c:otherwise>
				              <p style="font-size: xx-large"><span></span>★★★★★</p>
				            </c:otherwise>
				          </c:choose>
				         <P  style="font-size: 25px; color: #ff7474;"> ${i.rScore }</P>

                                     <ul>
                                         <li><span class="icon-location-pin"></span>
                                             <p>${i.rAddr2 }</p>
                                         </li>
                                         <li><span class="icon-screen-smartphone"></span>
                                             <p>${i.rTel }</p>
                                         </li>
                                     </ul>
                                     
                                <div class="nearbyCon" white-space="pre-wrap">"${i.rContent }" </div> 
                   
                                    
                    </div>        
            	
                    
                   <!--  =======================요약설명  끝 ============================= -->                  
                    
                     <div>
            <!--   <span style="display: block;" class="featured-rate">${i.rScore }</span>    --> 
                     
                      
                  <!--     <span class="ti-heart"></span>  -->  
                      
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
                    
                  </a>               
                 
              </div>
          </div>
                        
       </c:forEach>
	</c:if>                

                    
                    
        <!--             
            <div class="mt-3">
			  <nav aria-label="...">
				<ul class="pagination justify-content-center">
					<c:if test="${startPage>1 }">
					    <li class="page-item">
					      <a class="page-link" aria-label="Previous" href="../restaurant/list_nearby_result.do?page=${startPage-1 }">
					        <span aria-hidden="true">&laquo;</span>
					        <span class="sr-only">Previous</span>
					      </a>
					    </li>
					</c:if>
					<c:set var="type" value=""/>
					<c:forEach var="ii" begin="${startPage }" end="${endPage }">
					  <c:if test="${curPage==ii }">
					    <c:set var="type" value="class=\"page-item active\""/>
					  </c:if>
					  <c:if test="${curPage!=ii }">
					    <c:set var="type" value="class=page-item"/>
					  </c:if>
					  <li ${type }>
					    <a class="page-link" href="../restaurant/list_nearby_result.do?page=${ii }">${ii }</a>
					  </li>
					</c:forEach>
					<c:if test="${endPage<allPage }">
					  <li class="page-item">
						<a class="page-link" href="../restaurant/list_nearby_result.do?page=${endPage+1 }" aria-label="Next"> 
						  <span aria-hidden="true">&raquo;</span> 
						  <span class="sr-only">Next</span>
						</a>
					  </li>
					</c:if>
				</ul>
			  </nav>
    		</div>   
                    
                    
              -->       
                    
                    
                    
 				</div>                     
         </div>           
<!-- jQuery, Bootstrap JS. -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
    

	<script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script> 
                     
</body>
</html>
