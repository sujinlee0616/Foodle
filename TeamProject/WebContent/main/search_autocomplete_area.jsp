<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach var="vo" items="${list}">
<a href="../search/searchpage.do?area=${vo}" style="text-decoration:none; color:#ff3a6d;"><li style="padding:3px;">${vo}</li></a>
</c:forEach>