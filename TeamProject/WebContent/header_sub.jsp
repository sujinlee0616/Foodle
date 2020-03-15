<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<!-- Favicons -->
    <link rel="shortcut icon" href="#">
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
    <!-- Swipper Slider -->
    <link rel="stylesheet" href="css/swiper.min.css">
    <!-- Magnific Popup CSS -->
    <link rel="stylesheet" href="css/magnific-popup.css">
    <!-- Main CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Font -->
    <link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Nanum+Gothic&display=swap" rel="stylesheet">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.8/css/all.css"/>
</head>
<body>
	<!--============================= HEADER =============================-->
	<div class="dark-bg sticky-top">
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					<nav class="navbar navbar-expand-lg navbar-light">
						<a class="navbar-brand" href="index.jsp">Foodle</a>
						<div class="search_wrap">
							<form name="header_search" action="">
								<div class="header_searchbox">
									<img class="header_searchicon" src="images/header_searchicon.png">
									<label class="header_searchinputwrap">
										<input type="text" class="header_searchinput" name="header_searchword" placeholder="검색어를 입력하세요." value=""
										 autocomplete="off" maxlength="50">
									</label>
								</div>
							</form>
						</div>
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
						 aria-expanded="false" aria-label="Toggle navigation">
							<span class="icon-menu"></span>
						</button>
						<div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
							<ul class="navbar-nav">
								<li class="nav-item active">
									<a class="nav-link" href="list_general.jsp">실시간 맛집</a>
								</li>
								<li class="nav-item active">
									<a class="nav-link" href="list_general.jsp">주간 맛집</a>
								</li>
								<li class="nav-item active">
									<a class="nav-link" href="list_general.jsp">테마 맛집</a>
								</li>
								<li class="nav-item active">
									<a class="nav-link" href="list_nearby.jsp">주변 맛집</a>
								</li>
								<li class="nav-item active">
									<a class="nav-link" href="board.jsp">자유게시판</a>
								</li>
								<li>
									<a href="#" class="btn btn-outline-light top-btn" data-toggle="modal" data-target="#loginModal">
										<span class="ti-plus"></span> 로그인
									</a>
								</li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
		</div>
	</div>
    <!-- Start of Login Modal -->	
	<div class="modal fade come-from-modal right" id="loginModal" role="dialog"
		aria-labelledby="loginModalLabel">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h6 class="modal-title" id="myModalLabel">로그인</h6>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="login-page">
						<div class="form">
							<form class="login-form">
								<input type="text" placeholder="아이디" /> <input
									type="password" placeholder="비밀번호" />
								<button>로그인</button>
								<p class="message">
									혹시 아직 계정이 없으신가요? <a href="signup.jsp">새로운 계정을 만드세요.</a>
								</p>
							</form>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				</div>
			</div>
		</div>
	</div>
	<!-- End of Login Modal -->
    <!--//END HEADER -->
</body>
</html>