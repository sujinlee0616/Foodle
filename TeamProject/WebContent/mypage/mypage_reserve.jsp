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
		<tr style="background-color: #E0E0E0;">
			<th style="width: 40%;" class="text-center">가게이름</th>
			<th style="width: 20%;" class="text-center">총 금액</th>
			<th style="width: 10%;" class="text-center">총 인원</th>
			<th style="width: 15%;" class="text-center">예약 날짜</th>
			<th style="width: 15%;" class="text-center">예약 시간</th>
		</tr>
		
		<c:forEach var="vo" items="${list }">
			<tr>
				<td class="text-center">${vo.rno }</td>
				<td class="text-center">${vo.restotalprice }원</td>
				<td class="text-center">${vo.respeople }명</td>
				<td class="text-center">${vo.resdate }</td>
				<td class="text-center">${vo.restime }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>





