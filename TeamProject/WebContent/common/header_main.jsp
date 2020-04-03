<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
</head>
<body>
<!--============================= HEADER =============================-->
    <div class="nav-menu" id="header">
        <div class="bg transition">
            <div class="container-fluid fixed">
                <div class="row">
                    <div class="col-md-12">
                        <nav class="navbar navbar-expand-lg navbar-light">
                            <a class="navbar-brand" href="${pageContext.request.contextPath }/main/home.do">Foodle</a>
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarNavDropdown"
								aria-controls="navbarNavDropdown" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="icon-menu"></span>
							</button>
							<div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                                <ul class="navbar-nav">
                                    <li class="nav-item active">
                                        <a class="nav-link" href="main.jsp?mode=1">실시간 맛집</a>
                                    </li>
                                    <li class="nav-item active">
                                        <a class="nav-link" href="main.jsp?mode=2">주간 맛집</a>
                                    </li>
                                    <li class="nav-item active">
                                        <a class="nav-link" href="main.jsp?mode=3">테마 맛집</a>
                                    </li>
                                    <li class="nav-item active">
                                        <a class="nav-link" href="main.jsp?mode=4">주변 맛집</a>
                                    </li>
                                    <li class="nav-item active">
                                        <a class="nav-link" href="main.jsp?mode=6">자유게시판</a>
                                    </li>
									<!-- 로그인 안 한 경우 -->
									<li class="not_loggedin">
										<a href="login.html" class="btn btn-outline-light top-btn">
										<span class="ti-plus"></span> 로그인
										</a>
									</li>
									<!-- 로그인 한 경우 -->
									<!-- <li class="loggendin nav-item dropdown">
										<a class="nav-link" href="#" id="navbarDropdownMenuLink"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										<span class="profile_pic"></span>
										<img class="propic" src="images/no_profile_pic.png" style="display: inline-block;">
										이수진님 <img src="images/arrow_down.png">
										<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
											<a class="dropdown-item" href="#">예약내역</a> 
											<a class="dropdown-item" href="#">찜한 맛집</a>
											<a class="dropdown-item" href="#">최근 본 맛집</a> 
											<a class="dropdown-item" href="#">My Page</a>
											<div class="dropdown-divider"></div>
											<a class="dropdown-item" href="#">로그아웃</a>
										</div>
										</a>
									</li> -->
								</ul>
                            </div>
                        </nav>
                    </div>
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
							<!-- Modal에서의 회원가입 주석처리
                                <form class="register-form">
								<input type="text" placeholder="아이디"> 
								<input type="password" placeholder="비밀번호"> 
								<input type="text" placeholder="이메일 주소">
								<button>회원가입</button>
								<p class="message">
									이미 계정을 가지고 있으신가요? <a href="#">여기서 로그인하세요.</a>
								</p>
							</form> -->
							<form class="login-form">
								<input type="text" placeholder="아이디" /> <input
									type="password" placeholder="비밀번호" />
								<button>로그인</button>
								<p class="message">
									혹시 아직 계정이 없으신가요? <a href="main.jsp?mode=8">새로운 계정을 만드세요.</a>
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

</body>
</html>