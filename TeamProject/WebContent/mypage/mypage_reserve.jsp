<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<body>
	<table style="background-color: #FFFFFF;">		 	
	<div class="row justify-content-center d-flex" style="background: #E6E6E6;">
	<div class="col-lg-12 post-list"  style="margin-top:25px">
		<input type="hidden" id="reserveCurHidden" value=${page }>
		<input type="hidden" id="reserveTotalHidden" value=${total }>				
		<c:forEach var="vo" items="${list}">
						<!-- Start of a content -->
			<div class="single-post d-flex flex-row">
				<div class="thumb">
					<a href="../restaurant/detail.do?no=${vo.rNo }">
						
							<img src="${vo.mvo.ivo.iLink }" style="width: 300px; height: 200px;">
					</a>
				</div>
				<div class="details">
					<div class="title d-flex flex-row justify-content-between">
						<div class="res_title pt-2">
							<a href="../restaurant/detail.do?no=${vo.rNo }"><h4>${vo.mvo.rName }<span class="rating">${vo.mvo.rScore }</span></h4></a>
						</div>
						
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
	</table>
</body>
</html>



				<%-- <td>${vo.resdate }</td> 
			 <td>${vo.restime }</td>
			<td>${vo.respeople }</td> --%>
