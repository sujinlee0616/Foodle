<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<!--============================= LOGIN =============================-->
	<section class="login-block light-bg">
	  <div class="container py-5">
	    <div class="row justify-content-center">
	      <div class="logo_parent col-md-5 mb-4">
	        <h2>Foodle</h2>
	        <!-- 로고 생기면 h2 제거 후 로고 넣기 -->
	        <!-- <img class="logo" src=""> -->
	      </div>
	    </div>
	    <div class="row justify-content-center">
	      <div class="col-md-5 login">
	        <div class="input_division">
	          <ul class="login input">
	            <!-- ID -->
	            <li>
	              <input type="text" name="tmp_user_id" id="id" autocapitalize="off" placeholder="아이디">
	            </li>
	            <!-- PWD -->
	            <li>
	              <input type="password" name="tmp_user_pwd" id="pwd" autocapitalize="off" placeholder="비밀번호">
	            </li>
	          </ul>
	        </div>
	      </div>
	    </div>
	    <div class="row justify-content-center">
	      <div class="col-md-5 pt-4">
	        <div class="login-btn-wrap">
	          <a href="#" class="btn btn-danger">로그인</a>
	        </div>
	      </div>
	    </div>
	    
	    <div class="row justify-content-center mt-2">
	      <div class="login-bottom col-md-5">
	        <hr>
	        <!-- <p class="message">
	          혹시 아직 계정이 없으신가요? <a href="#"> 새로운 계정을 만드세요.</a>
	        </p> -->
	        <p class="bt_msg">
	          <a href="#">아이디 찾기</a>
	          <span class="bar">|</span>
	          <a href="#">비밀번호 찾기</a>
	          <span class="bar">|</span>
	          <a href="signup.do">회원가입</a>
	        </p>
	      </div>
	    </div>
	  </div>
	  </div>
	</section>
	<!--//END LOGIN  -->
</body>
</html>