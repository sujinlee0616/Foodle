<%@page import="sun.misc.CEFormatException"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 한글변환 -->
<%
	try
	{
		request.setCharacterEncoding("UTF-8");
	}
	catch(Exception ex){}
%>
<%
	String jsp="home.jsp"; // include 되는 페이지 변경을 위한 변수 
	String header="header_main.jsp";
	
	String mode=request.getParameter("mode"); // url 뒤의 파라미터로 붙어있는 mode를 가져와서 mode 값에 따라 jsp값 바꿔서 include되는 페이지 바꿈 
	if(mode==null)
	{
		mode="0"; 
	}
	int no=Integer.parseInt(mode);
	
	switch(no)
	{
	case 0:
		header="header_main.jsp";
		break;
	default :
		header="header_sub.jsp";
	}

	switch(no)
	{
	case 0:
		jsp="home.jsp";
		break;
	case 1:
		jsp="list_general.jsp"; /* 실시간 맛집 */
		break;
	case 2:
		jsp="list_general.jsp"; /* 주간 맛집 (파일 새로 만들어야) */ 
		break;
	case 3:
		jsp="list_general.jsp"; /* 테마 맛집  (파일 새로 만들어야) */
		break;
	case 4:
		jsp="list_nearby.jsp"; /* 주변 맛집  */
		break;
	case 5:
		jsp="detail.jsp"; /* 맛집 상세페이지  */
		break;
	case 6:
		jsp="board.jsp";  /* 자유게시판  */
		break;
	case 7:
		jsp="board_detail.jsp"; /* 글 상세 페이지  */
		break;
	case 8:
		jsp="signup.jsp"; /* 회원가입  */
		break;
	case 9:
		jsp="mypage.jsp"; /* 마이페이지  */
		break;
	case 10:
		jsp="mypage_coupon1.jsp"; /* 마이페이지-쿠폰  */    
		break;	
	} 
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Colorlib">
    <meta name="description" content="#">
    <meta name="keywords" content="#">
    <!-- Page Title -->
    <title>Foodle</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,400i,500,700,900" rel="stylesheet">
    <!-- Simple line Icon -->
    <link rel="stylesheet" href="css/simple-line-icons.css">
    <!-- Themify Icon -->
    <link rel="stylesheet" href="css/themify-icons.css">
    <!-- Hover Effects -->
    <link rel="stylesheet" href="css/set1.css">
    <!-- Main CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- List CSS -->
    <link rel="stylesheet" href="css/list.css">
    <!-- List CSS -->
    <link rel="stylesheet" href="css/detail.css">
    <!-- Board CSS -->
    <link rel="stylesheet" href="css/board.css">
    <!-- Board Swiper CSS -->
    <link rel="stylesheet" href="css/swiper.min.css">
    <!-- My Page CSS -->
    <link rel="stylesheet" href="css/mypage.css">
    <!-- SIGN UP CSS -->
  	<link rel="stylesheet" href="css/signup.css">
  	<!-- COUPON CSS -->
  	<link rel="stylesheet" href="css/coupon.css">
    <!-- Kakao Map Script -->
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=671fb4748c5025ba667a7fc5d41d217a"></script>
    <!-- jQuery Datepicker UI-->
  	<link rel="stylesheet" href="./js/jquery-ui-1.12.1/jquery-ui.min.css">
    <!-- Font -->
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Nanum+Gothic&display=swap" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css"/>
</head>
<body>
	<jsp:include page="<%=header %>"></jsp:include>  

	<jsp:include page="<%=jsp %>"></jsp:include>  
	<!-- 동적: include되는 페이지를 바꿀 수 있다. -->
	
    <jsp:include page="footer.jsp"></jsp:include>
    
    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- Magnific popup JS -->
    <script src="js/jquery.magnific-popup.js"></script>
    <!-- Swipper Slider JS -->
    <script src="js/swiper.min.js"></script>
    <script>
        var swiper = new Swiper('.swiper-container', {
            slidesPerView: 3,
            slidesPerGroup: 3,
            loop: true,
            loopFillGroupWithBlank: true,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });
    </script>
    <script>
        if ($('.image-link').length) {
            $('.image-link').magnificPopup({
                type: 'image',
                gallery: {
                    enabled: true
                }
            });
        }
        if ($('.image-link2').length) {
            $('.image-link2').magnificPopup({
                type: 'image',
                gallery: {
                    enabled: true
                }
            });
        }
    </script>
    
</body>

</html>
    