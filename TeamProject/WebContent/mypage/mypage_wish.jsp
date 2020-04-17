<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
			<th style="width: 20%;" class="text-center">찜한날짜</th>
		
		</tr>


		<c:forEach var="i" begin="0" end="5">
			<tr>
				<td class="text-center">"${rlist.get(+"${i}"+).rName }"</td>
				
			<tr/>
		</c:forEach>

	</table>
</body>
</html>