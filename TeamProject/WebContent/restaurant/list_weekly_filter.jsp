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
</head>
<body>
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
					        <span class="mywish2 px-1" value="${vo.rNo }" id="mywish2_${vo.rNo }" style="text-align:right; color:red; font-size:20px;">${vo.myWish }</span>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
		
<script>
$(function(){
	// 찜 hover
    $('.mywish2').hover(function(){
		$(this).css('cursor','pointer');
	})
	// 찜 
	$('.mywish2').click(function() {
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
					$('#mywish2_'+no).text('♥');
					
				}
				else { // myWishDelete
					$('#mywish2_'+no).text('♡');
					
				}
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