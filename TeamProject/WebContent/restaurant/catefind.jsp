<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

    
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/themalist.css">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/catefind.css">

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
 <section class="list-block">
  <div class="container-fluid py-4 container py-5">
	<div class="row nearbyrow">
		<div class="responsive-wrap nearbymd7">
		<h3 class="styled-heading"> 유러피안 다이닝 </h3>
		<h5 class="styled-heading"> 한해동안 회원이 선택한 맛집/빵집 TOP100</h5>
		<!-- 리스트 시작 부분 -->
			<div class="row light-bg detail-options-wrap pt-3 nearbysearchlist" id="nearbyList">		
				  <div class="featured-responsive" >
                      <div class="featured-place-wrap listthemawap" >
                           <a href="main.jsp?mode=5">
                          
                           <button type="button" class="btn btn-info">Info</button>
                           <button type="button" class="">Info</button>
                           <button type="button" class="btn btn-info">Info</button>
                           <button type="button" class="">Info</button>
                          
                           
                           </a>
                      </div>
				  </div>	
			</div>	
		<!-- 리스트 끝 부분-->
		</div>
	</div>
  </div>
 </section> 		

</body>
</html>