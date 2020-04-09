<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                                        <a class="nav-link" href="${pageContext.request.contextPath }/restaurant/list_general.do">실시간 맛집</a>
                                    </li>
                                    <li class="nav-item active">
                                        <a class="nav-link" href="${pageContext.request.contextPath }/restaurant/list_general.do">주간 맛집</a>
                                    </li>
                                    <li class="nav-item active">
                                        <a class="nav-link" href="${pageContext.request.contextPath }/restaurant/list_general.do">테마 맛집</a>
                                    </li>
                                    <li class="nav-item active">
                                        <a class="nav-link" href="${pageContext.request.contextPath }/restaurant/list_nearby.do">주변 맛집</a>
                                    </li>
                                    <li class="nav-item active">
                                        <a class="nav-link" href="${pageContext.request.contextPath }/board/list.do">자유게시판</a>
                                    </li>
                                    <li class="nav-item active">
                                        <a class="nav-link" href="${pageContext.request.contextPath }/mypage/mypage.do">임시(마이페이지)</a>
                                    </li>
                                    
									<!-- =============== 로그인 안 한 경우 =============== -->
									<c:if test="${sessionScope.id==null }">
										<li class="not_loggedin">
											<a href="${pageContext.request.contextPath }/member/login.do" class="btn btn-outline-light top-btn">
											<span class="ti-plus"></span> 로그인
											</a>
										</li>
									</c:if>
									<!-- =============== 로그인 한 경우 =============== -->
									<c:if test="${sessionScope.id!=null }">
										<li class="loggendin nav-item dropdown">
											<a class="nav-link" href="#" id="navbarDropdownMenuLink"
											data-toggle="dropdown" aria-haspopup="true"
											aria-expanded="false">
											<!-- <span class="profile_pic"></span> -->
											<img class="propic" src="../images/no_profile_pic.png" style="display: inline-block;">
											${sessionScope.name }님
											<img src="../images/arrow_down.png">
											<div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownMenuLink">
												<a class="dropdown-item" href="#">예약내역</a> 
												<a class="dropdown-item" href="#">찜한 맛집</a>
												<a class="dropdown-item" href="#">최근 본 맛집</a> 
												<a class="dropdown-item" href="#">My Page</a>
												<div class="dropdown-divider"></div>
												<a class="dropdown-item" href="../member/logout.do">로그아웃</a>
											</div>
											</a>
										</li>
									</c:if>
								</ul>
                            </div>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>