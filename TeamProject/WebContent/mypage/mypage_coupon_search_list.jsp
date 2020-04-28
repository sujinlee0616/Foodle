<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<c:forEach var="vo" items="${list}">
		<li class="couponSearchOne" value="${vo.mvo.rName }">${vo.mvo.rName }</li>
	</c:forEach>
</body>
</html>

	<!-- 
    <div class="sidenav" id="quick-menu" style="position: fixed; top: 40%;box-sizing: content-box;">
        <ul class="p-0">
       
            <input type='text' style="width:95px; float:left;">
            <button><img src="../images/header_searchicon.png" style="width:32px; height:32px; left:30px"></button>
             
            <li><a href="#popular">인기맛집</a></li>
            <li><a href="#current">실시간 맛집</a></li>
            <li><a href="#recent">최근 본 맛집</a></li>
            
            
            <li>
                <a href="#header">
                    <svg height="30" viewBox="10 0 30 30" width="80" xmlns="http://www.w3.org/2000/svg">
                        <path d="M14.83 30.83l9.17-9.17 9.17 9.17 2.83-2.83-12-12-12 12z"></path>
                        <path d="M0 0h48v48h-48z" fill="none"></path>
                    </svg>
                </a>
            </li>
            <li>
                <a href="#footer">
                    <svg height="30" viewBox="10 0 30 30" width="80" xmlns="http://www.w3.org/2000/svg">
                        <path d="M14.83 16.42l9.17 9.17 9.17-9.17 2.83 2.83-12 12-12-12z"></path>
                        <path d="M0-.75h48v48h-48z" fill="none"></path>
                    </svg>
                </a>
            </li>
        </ul>
    </div>
    -->

	<%-- 
		<div id = "couponSearchList">

		
		<c:forEach var="vo" items="${list}">
		
				<button class="couponSearchOne" value="${vo.mvo.rName }">${vo.mvo.rName }</button>
		
		</c:forEach>
	</div>
	 --%>