<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	// 로그인 버튼 클릭 시 동작
	$('#loginBtn').click(function(){
		let id=$('#id').val();
		if(id.trim()=="")
		{
			$('#id').focus();
			return;
		}
		let pwd=$('#pwd').val();
		if(pwd.trim()=="")
		{
			$('#pwd').focus();
			return;
		}
		
		// 로그인 - login.jsp에서 ID/PWD 판별 처리
		$.ajax({
			type:'POST',
			url:'../member/login_result.do',
			data:{"id":id,"pwd":pwd},
			success:function(res){
				// console.log(res);
				if(res.trim()=='NOID')
				{
					alert("존재하지 않는 ID입니다.");
					$('#id').val("");
					$('#pwd').val("");
					$('#id').focus();
				}
				else if(res.trim()=='NOPWD')
				{
					alert("비밀번호가 틀립니다");
					$('#pwd').val("");
					$('#pwd').focus();
				}
				else // res가 'OK'일 때
				{
					location.href="../main/main.do";
					alert("로그인 성공!");
				} 
			},
			error:function(e){
				alert(e);
			}
		})
		
		
	})
	
	
})

</script>
</head>
<body>
	<!--============================= LOGIN =============================-->
	<section class="login-block light-bg">
	  <div class="container py-5">
	    <div class="row justify-content-center">
	      <div class="logo_parent col-md-5 mb-4">
	        <!-- <h2>Foodle</h2> -->
	        <!-- 로고 생기면 h2 제거 후 로고 넣기 -->
	        <img class="logo" src="../images/foodle_temp_logo.png">
	      </div>
	    </div>
	    <!-- =============== Start of 로그인 form =============== -->
	    <form method="post" action="../member/login_result.do" name="" id="login_frm">
		    <div class="row justify-content-center">
		      <div class="col-md-5 login">
		        <div class="input_division">
		          <ul class="login input">
		            <!-- ID -->
		            <li>
		              <input type="text" name="user_id" id="id" autocapitalize="off" placeholder="아이디">
		            </li>
		            <!-- PWD -->
		            <li>
		              <input type="password" name="user_pwd" id="pwd" autocapitalize="off" placeholder="비밀번호">
		            </li>
		          </ul>
		        </div>
		      </div>
		    </div>
		    <div class="row justify-content-center">
		      <div class="col-md-5 pt-4">
		        <div class="login-btn-wrap">
		        	<input type="button" value="로그인" class="btn btn-danger" id="loginBtn"> 
		          <!-- <a href="#" class="btn btn-danger">로그인</a> -->
		        </div>
		      </div>
		    </div>
	    </form>
	    <!-- =============== End of 로그인 form =============== -->
	    
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