<%@page import="sun.misc.CEFormatException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Colorlib">
    <meta name="description" content="#">
    <meta name="keywords" content="#">
    <!-- Page Title -->
    <title>Foodle</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900" rel="stylesheet">
    <!-- Simple line Icon -->
    <link rel="stylesheet" href="../css/simple-line-icons.css">
    <!-- Themify Icon -->
    <link rel="stylesheet" href="../css/themify-icons.css">
    <!-- Hover Effects -->
    <link rel="stylesheet" href="../css/set1.css">
    <!-- Main CSS -->
    <link rel="stylesheet" href="../css/style.css">
    <!-- List CSS -->
    <link rel="stylesheet" href="../css/list.css">
    <!-- Detail CSS -->
    <link rel="stylesheet" href="../css/detail.css">
    <!-- Board CSS -->
    <link rel="stylesheet" href="../css/board.css">
    <!-- Board Swiper CSS -->
    <link rel="stylesheet" href="../css/swiper.min.css">
    <!-- My Page CSS -->
    <link rel="stylesheet" href="../css/mypage.css">
    <!-- SIGN UP CSS -->
  	<link rel="stylesheet" href="../css/signup.css">
  	<!-- LOGIN CSS -->
  	<link rel="stylesheet" href="../css/login.css">
  	<!-- COUPON CSS -->
  	<link rel="stylesheet" href="../css/coupon.css">
    <!-- Kakao Map Script -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=671fb4748c5025ba667a7fc5d41d217a"></script>
    <!-- jQuery Datepicker UI-->
  	<link rel="stylesheet" href="../js/jquery-ui-1.12.1/jquery-ui.min.css">
    <!-- Font -->
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Nanum+Gothic&display=swap" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css"/>
</head>
<body>

	<jsp:include page="${main_header }"></jsp:include>  
	<jsp:include page="${main_jsp }"></jsp:include>
	<!-- 동적: include되는 페이지를 바꿀 수 있다. -->
    <jsp:include page="../common/footer.jsp"></jsp:include>
    
</body>
</html>