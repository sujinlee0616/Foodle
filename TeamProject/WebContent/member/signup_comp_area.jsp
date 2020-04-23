<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- {list} -->

<!-- 여기에 <option>을 list size만큼 출력, 값도 입력. -->
<c:forEach var="vo" items="${list }">
	 <option value=""></option>
</c:forEach>


