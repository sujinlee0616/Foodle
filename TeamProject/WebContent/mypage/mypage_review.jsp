<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="py-3">
		<div class="table-responsive">
		
			<input type="hidden" id="reviewCurHidden" value=${page }>
			<input type="hidden" id="reviewTotalHidden" value=${total }>
			<table class="table replyBoard reply_list" style="background-color: #FFFFFF;">						
				<thead class="thead-dark">
					<tr style="background-color: #E0E0E0;">
						<th scope="col" style="width:30%;" class="text-center">가게명</th>
						<th scope="col" style="width:20%;" class="text-center">작성일</th>
						<th scope="col" style="width:20%;" class="text-center">내용</th>
						<th scope="col" style="width:10%;" class="text-center">좋아요</th>
						<th scope="col" style="width:10%;" class="text-center">싫어요</th>
						<th scope="col" style="width:10%;" class="text-center">평점</th>
					</tr>
				</thead>	
				<tbody>		
					<c:forEach var="vo" items="${list }">
						<tr>
							<td class="text-center">
					  			<a href="../restaurant/detail.do?no=${vo.mvo.rNo }">${vo.mvo.rName}</a>
					  		</td>	
					  		<td class="text-center">
								<fmt:formatDate value="${vo.revDate }" pattern="yyyy-MM-dd"/>
							</td>
							<td class="text-center">${vo.revContent }</td>
							<td class="text-center">${vo.revGood }개</td>
					  		<td class="text-center">${vo.revBad }개</td>
							<td class="text-center">${vo.revScore }점</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>
		
				
				
				
				
	<!--
				
	
			<tr>
				
				
				
				
				
					
			</tr>
				
	 -->
	



			
					