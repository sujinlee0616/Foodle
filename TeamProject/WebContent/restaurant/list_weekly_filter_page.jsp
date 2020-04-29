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
<div class="mt-3">
	<nav aria-label="...">
		<ul class="pagination justify-content-center">
			<c:if test="${startPage>1 }">
				<li class="page-item">
					<a class="page-link" aria-label="Previous" href="#" onclick="previousPage(this)">
						<input type="hidden" value="${startPage-1 }" id="startPage">
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
					<a class="page-link" href="#" onclick="pageClick(this)">${i }</a>
				</li>
			</c:forEach>
			<c:if test="${endPage<allPage }">
				<li class="page-item">
					<a class="page-link" aria-label="Next" href="#" onclick="nextPage(this)">
						<input type="hidden" value="${endPage+1 }" id="endPage">
						<span aria-hidden="true">&raquo;</span> 
						<span class="sr-only">Next</span>
					</a>
				</li>
			</c:if>
		</ul>
	</nav>
</div>
</body>
</html>