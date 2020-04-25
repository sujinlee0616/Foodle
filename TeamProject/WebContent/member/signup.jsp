<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<link rel="stylesheet" href="../css/signup.css">


</head>
<body>
  <!--============================= SINGUP =============================-->
  <section class="singup-block light-bg">
    <div class="container py-5">
      <div class="row justify-content-center">
        <div class="col-md-6 mb-4">
          <h5>회원가입</h5>
        </div>
      </div>
      
      <!-- ============================== Start of signup_frm ============================== -->
      <form name="signup_frm" action="../member/signup_ok.do" method="post" id="signup_frm">
      <!-- START OF SIGNUP INFO INPUTS -->
      <div class="row justify-content-center">
        <div class="col-md-6 signup">
          <!-- 회원 유형 선택 : 개인/기업 -->
          <div class="member_type mb-3">
            <ul class="member_category">
              <li class="on">
                <h2 class="tab01 mb-0">
                  <a href="signup.do" class="tab_btn">개인회원가입</a>
                </h2>
              </li>
              <li class="">
                <h2 class="tab02 mb-0">
                  <a href="signup_comp.do" class="tab_btn">기업회원가입</a>
                </h2>
              </li>
            </ul>
          </div>
          
          <!-- 회원정보 입력 : 필수정보-->
          <div class="cont_division">
          	<!-- 회원유형 (hidden) -->
          	<input type="hidden" name="utype" value="user">
            <ul class="write_base select_input">
              <!-- ID (N-N) -->
              <li class="item must">
                <label for="user_id" class="tit_inp"><span class="essential">*</span>ID</label>
                <input type="text" name="id" id="id" autocapitalize="off" autocomplete="off"
                  placeholder="아이디" maxlength="50" required>
                <div class="guide_txt mt-1 pl-2 hidden" id="idCheckMsg" style="display:inline-block;"></div>
              </li>
              <!-- Password (N-N) -->
              <li class="item must">
                <label for="user_pwd" class="tit_inp"><span class="essential">*</span>비밀번호</label>
                <input type="password" name="pwd" id="pwd" autocapitalize="off" autocomplete="off"
                  placeholder="비밀번호" maxlength="20" required>
                <div class="guide_txt mt-1 pl-2 hidden" id="pwdCheckMsg" style="display:inline-block;"></div>
              </li>
              <!-- 이름 (N-N)-->
              <li class="item must">
                <label for="user_nm" class="tit_inp"><span class="essential">*</span>이름</label>
                <input type="text" name="name" id="name" autocapitalize="off" autocomplete="off"
                  placeholder="이름" maxlength="30" required>
                <div class="guide_txt mt-1 pl-2 hidden" id="nameCheckMsg" style="display:inline-block;"></div>
              </li>
              <!-- 성별 (NN) -->
              <li class="item must">
                <label for="user_gender" class="tit_inp"><span class="essential">*</span>성별</label>
                <label for="user_gender_male"><input type="radio" name="gender" id="user_gender_male" value="male" checked="checked">남성</label>
                <label for="user_gender_female"><input type="radio" name="gender" id="user_gender_female" value="female">여성</label>
              </li>
              <!-- 생년월일 (N-N ) -->
              <li class="item must">
                <div class="select_align_row">
                  <label for="birth_date" class="tit_inp"><span class="essential">*</span>생년월일</label>
                  <input type="text" name="birth" id="birth" title="사용자 출생년도" maxlength="8"
                    autocapitalize="off" placeholder="YYYYMMDD" class="che" autocomplete="off" required>
                </div>
                <div class="guide_txt mt-1 pl-2 hidden" id="birthCheckMsg" style="display:inline-block;"></div>
              </li>
              <!-- 이메일 (N-N)-->
              <li class="email_column item must">
                <div class="select_align_row input item">
                  <label for="email_id" class="tit_inp"><span class="essential">*</span>이메일</label>
                  <input type="text" name="email" id="email" style="ime-mode:inactive" placeholder="예시) abc@naver.com" autocomplete="off" maxlength="40" required>
                </div>
                <!-- Start of 자동리스트 영역 : 아직 구현 안 했음  -->
                <ul class="auto_list_area email_list" style="display:none;">
                  <li class="auto_list"><a href="javascript:emailKeyAction;" onclick="return false;" class="email_domain"><strong
                        class="txt_input"></strong>@naver.com</a></li>
                  <li class="auto_list"><a href="javascript:emailKeyAction;" onclick="return false;" class="email_domain"><strong
                        class="txt_input"></strong>@gmail.com</a></li>
                  <li class="auto_list"><a href="javascript:emailKeyAction;" onclick="return false;" class="email_domain"><strong
                        class="txt_input"></strong>@daum.net</a></li>
                  <li class="auto_list"><a href="javascript:emailKeyAction;" onclick="return false;" class="email_domain"><strong
                        class="txt_input"></strong>@nate.com</a></li>
                  <li class="auto_list"><a href="javascript:emailKeyAction;" onclick="return false;" class="email_domain"><strong
                        class="txt_input"></strong>@outlook.com</a></li>
                </ul>
                <!-- End of 자동리스트 영역 -->
                <div class="guide_txt mt-1 pl-2 hidden" id="emailCheckMsg" style="display:inline-block;"></div>
              </li>
              
            </ul>
          </div>

          <!-- 비밀번호 힌트 질문 및 답변 -->
          <div class="cont_division">
            <ul class="hint">
              <!-- 비밀번호 힌트 질문 -->
              <li class="item must">
                <label for="user_hint" class="tit_inp"><span class="essential">*</span>비밀번호 힌트 질문</label>
                <select  name="pwd_hint" id="pwdHint" class="custom-select" required>
                  <option value="">질문을 선택하세요.</option>
                  <option value="place">기억에 남는 추억의 장소는?</option>
                  <option value="motto">자신의 인생 좌우명은?</option>
                  <option value="treasure">자신의 보물 제 1호는?</option>
                  <option value="teacher">가장 기억에 남는 선생님의 성향은?</option>
                  <option value="date">추억하고 싶은 날짜가 있다면?</option>
                  <option value="friend">유년시절 가장 생각나는 친구 이름은?</option>
                </select>
                <div class="guide_txt mt-1 pl-2 hidden" id="pwdHintCheckMsg" style="display:inline-block;"></div>
              </li>
              <!-- 비밀번호 힌트 질문 답 -->
              <li class="item must">
                <label for="user_hintAns" class="tit_inp"><span class="essential">*</span>비밀번호 힌트 질문 답</label>
                <input type="text" name="hintAns" id="hintAns" autocapitalize="off"
                  placeholder="" required>
                <div class="guide_txt mt-1 pl-2 hidden" id="hintAnsCheckMsg" style="display:inline-block;"></div>
              </li>
            </ul>
          </div>

          <!--  회원정보 입력 : 선택항목 -->
          <div class="cont_division">
            <ul class="write_base select_input">
              <!-- 휴대폰번호 (NULL) -->
              <li class="">
                <div class="input_collect item">
                  <label for="sms_cellnum" class="tit_inp fullsize_input except">연락처</label> <!-- 입력시 on class 삭제 -->
                  <input type="text" name="cellnum" id="user_cellnum"  placeholder="'-' 없이 입력" maxlength="11">
                </div>
                <p class="alert_column warning_txt hidden" name="msg_phone" id="sms_phone_msg" style="display: block;">휴대폰번호가
                  올바르지 않습니다.</p>
              </li>
              <!-- 집 전화번호 (NULL) -->
              <li class="">
                <div class="input_collect item">
                  <label for="sms_cellnum" class="tit_inp fullsize_input except">집 전화번호</label> <!-- 입력시 on class 삭제 -->
                  <input type="text" name="telnum" id="user_telnum" placeholder="'-' 없이 입력" maxlength="11">
                </div>
              </li>            
              <!-- 주소(우편번호) (NULL) -->
              <li class="adress_column item">
                  <div class="adress_domestic _searchArea">
                      <label for="address_main" id="address" class="tit_inp">주소</label>
                      <input type="text" name="address_main" id="address_main" class="" readonly="1" placeholder="우편번호/주소"
                      onclick="zipcode()">
                      <!-- hidden으로 우편번호 받는다 -->
                      <input type="hidden" name="postcode" id="postcode">
                  </div>
                  <p class="alert_column warning_txt hidden" id="msg_addr">&nbsp;</p>
              </li>
              <!-- 주소 (상세주소) (NULL) -->
              <li class="item">
                  <label for="address_detail" class="tit_inp">상세 주소</label>
                  <input type="text" name="address_detail" id="address_detail" class="" maxlength="50" placeholder="상세 주소">
                  <input type="hidden" name="address_extra" value="" id="address_extra">
              </li>
            </ul>
          </div>

        </div>
      </div>
      <!-- END OF INFO INPUT-->
      
      <!-- 회원가입 버튼 -->
      <div class="row justify-content-center">
        <div class="col-md-6 pt-4">
          <div class="signup-btn-wrap">
        	<input type="button" value="회원가입" class="btn btn-danger" id="sendBtn" disabled="disabled">
          </div>
        </div>
      </div>
      
      </form>
      <!-- ============================== End of signup_frm ============================== -->
      
      <div class="row justify-content-center mt-2">
        <div class="signup-bottom col-md-6">
          <p class="message">
            <span class="essential">*</span>은 필수 입력 항목입니다. 
          </p>
          <p class="message">
            이미 계정을 가지고 있으신가요? <a href="login.do"> 여기서 로그인하세요.</a>
          </p>
        </div>
      </div>
    </div>
    </div>
    </section>
    <!--//END SINGUP  -->

  <!-- jQuery, Bootstrap JS. -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->
  <script src="../js/jquery-3.2.1.min.js"></script>
  <script src="../js/popper.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
  <!-- jQuery Datepicker UI for birthdate -->
  <script src="../js/jquery-ui-1.12.1/jquery-ui.min.js"></script>
  <script src="../js/jquery-ui-1.12.1/datepicker-ko.js"></script>
  <!-- Kakao zipcode -->
  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
  <!-- [우편번호 검색 카카오] -->
  <script type="text/javascript">
	function zipcode() {
	    new daum.Postcode({
	        oncomplete: function(data) {
	            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

	            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	            var addr = ''; // 주소 변수
	            var extraAddr = ''; // 참고항목 변수

	            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	                addr = data.roadAddress;
	            } else { // 사용자가 지번 주소를 선택했을 경우(J)
	                addr = data.jibunAddress;
	            }

	            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
	            if(data.userSelectedType === 'R'){
	                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
	                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
	                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
	                    extraAddr += data.bname;
	                }
	                // 건물명이 있고, 공동주택일 경우 추가한다.
	                if(data.buildingName !== '' && data.apartment === 'Y'){
	                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
	                }
	                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
	                if(extraAddr !== ''){
	                    extraAddr = ' (' + extraAddr + ')';
	                }
	                //조합된 참고항목을 해당 필드에 넣는다.
	                document.getElementById("address_extra").value = extraAddr;
	            
	            } else {
	                document.getElementById("address_extra").value = '';
	            }

	            // 우편번호와 주소 정보를 해당 필드에 넣는다.
	            document.getElementById('postcode').value = data.zonecode;
	            document.getElementById("address_main").value = addr;
	            // 커서를 상세주소 필드로 이동한다.
	            document.getElementById("address_detail").focus();
	        }
	    }).open();
	}
  </script>
  
  <script type="text/javascript">
  $(function(){

		// [생일 선택 jQuery UI] + 생일 유효성 검사
		$("#birth").datepicker({
		    changeMonth: true,
		    changeYear: true,
		    yearRange: "-100:+0"
		}).on("change", function() {
			var length=$('#birth').val().trim().length;
			if(length==0){
				$('#birthCheckMsg').removeClass('hidden').html('<span style="color:#ff3a6d; font-size:14px;">필수정보입니다.</span>');
				birth_result=false;
			}	
			else{
				$('#birthCheckMsg').addClass('hidden'); // 잘 입력했으면 메시지 제거
				birth_result=true;
			}	
			console.log("birth_result="+birth_result);
		});

		// [유효성 검사]
	  	// 필수 입력 요건들이 제대로 입력되었는지 여부 확인 - 얘네가 다 true일때만 회원가입 버튼 활성화 시켜주자 
	  	var id_result=false;
	  	var pwd_result=false;
	  	var name_result=false;
	  	var birth_result=false;
	  	var email_result=false;
	  	var pwdHint_result=false;
	  	var hintAns_result=false;
		// 1.아이디 - 1)기본 입력요청
		$('#id').click(function(){
			var length=$('#id').val().trim().length;
			if(length==0)
				$('#idCheckMsg').removeClass('hidden').html('<span style="color:#707070; font-size:14px;">6글자 이상 입력해주세요.</span>');	
		});
		// 1.아이디 - 2)글자길이 체크 
		$('#id').keyup(function(){
			var length=$('#id').val().trim().length;
			if(length==0){
				$('#idCheckMsg').removeClass('hidden').html('<span style="color:#ff3a6d; font-size:14px;">필수정보입니다.</span>');
				id_result=false;
			}
			else if(length<6){
				$('#idCheckMsg').removeClass('hidden').html('<span style="color:#ff3a6d; font-size:14px;">너무 짧아요. 6글자 이상 입력해주세요.</span>');
				id_result=false;
			}
			else{
				$('#idCheckMsg').addClass('hidden'); // 잘 입력했으면 메시지 제거
				// 1.아이디 - 3)ID중복검사 ★★★★★ ==================================== 확인필요 ====================================
				var user_entered_id=$('#id').val();
				console.log(user_entered_id);
				$.ajax({
					type:'POST',
					url:'../member/id_check.do',
					data:{"user_entered_id":user_entered_id}, 
					success:function(result)
					{
						var idCheck=result.trim();
						console.log('idCheck='+idCheck);
						if(idCheck=="already_exist"){
							$('#idCheckMsg').removeClass('hidden').html('<span style="color:#ff3a6d; font-size:14px;">이미 존재하는 ID입니다. 다른 ID를 입력하세요.</span>');
							id_result=false;
						}
						else{ //idCheck=="not_exist"
							$('#idCheckMsg').removeClass('hidden').html('<span style="color:#2196F3; font-size:14px;">사용할 수 있는 ID입니다.</span>');
							id_result=true;
						}
					},
					error:function(e){
						alert(e);
					}
				});
			}	
			console.log("id_result="+id_result);			
		});
		// 2.비번 - 1)기본 입력요청
		$('#pwd').click(function(){
			var length=$('#pwd').val().trim().length;
			if(length==0)
				$('#pwdCheckMsg').removeClass('hidden').html('<span style="color:#707070; font-size:14px;">6글자 이상 입력해주세요.</span>');
		});
		// 2.비번 - 2)글자길이 체크 
		$('#pwd').keyup(function(){
			var length=$('#pwd').val().trim().length;
			if(length==0){
				$('#pwdCheckMsg').removeClass('hidden').html('<span style="color:#ff3a6d; font-size:14px;">필수정보입니다.</span>');
				pwd_result=false;
			}
			else if(length<6){
				$('#pwdCheckMsg').removeClass('hidden').html('<span style="color:#ff3a6d; font-size:14px;">너무 짧아요. 6글자 이상 입력해주세요.</span>');
				pwd_result=false;
			}
			else{
				$('#pwdCheckMsg').addClass('hidden'); // 잘 입력했으면 메시지 제거
				pwd_result=true;
			}
			console.log("pwd_result="+pwd_result);
		});
		// 3.이름 - null값 체크 
		$('#name').keyup(function(){
			var length=$('#name').val().trim().length;
			if(length==0){
				$('#nameCheckMsg').removeClass('hidden').html('<span style="color:#ff3a6d; font-size:14px;">필수정보입니다.</span>');
				name_result=false;
			}	
			else{
				$('#nameCheckMsg').addClass('hidden'); // 잘 입력했으면 메시지 제거
				name_result=true;
			}		
			console.log("name_result="+name_result);		
		});
		// 4.생년월일 - null값 체크 - 위에서 실행 
		// 5.이메일 - null값 체크 
		$('#email').keyup(function(){
			var length=$('#email').val();
			if(length==0){
				$('#emailCheckMsg').removeClass('hidden').html('<span style="color:#ff3a6d; font-size:14px;">필수정보입니다.</span>');
				pwdHint_result=false;
			}	
			else{
				$('#emailCheckMsg').addClass('hidden'); // 잘 입력했으면 메시지 제거
				pwdHint_result=true;
			}	
			console.log("emailCheckMsg="+emailCheckMsg);
		});
		// 6.비번 힌트 질문 - null값 체크 
		$('#pwdHint').click(function(){
			var length=$('#pwdHint').val();
			if(length==0){
				$('#pwdHintCheckMsg').removeClass('hidden').html('<span style="color:#ff3a6d; font-size:14px; padding-left:200px;">필수정보입니다.</span>');
				pwdHint_result=false;
			}	
			else{
				$('#pwdHintCheckMsg').addClass('hidden'); // 잘 입력했으면 메시지 제거
				pwdHint_result=true;
			}	
			console.log("pwdHint_result="+pwdHint_result);
		});
		// 7.비번 힌트 답 - null값 체크 
		$('#hintAns').keyup(function(){
			var length=$('#hintAns').val().trim().length;
			if(length==0){
				$('#hintAnsCheckMsg').removeClass('hidden').html('<span style="color:#ff3a6d; font-size:14px;">필수정보입니다.</span>');
				hintAns_result=false;
			}	
			else{
				$('#hintAnsCheckMsg').addClass('hidden'); // 잘 입력했으면 메시지 제거
				hintAns_result=true;
			}	
			console.log("hintAns_result="+hintAns_result);
		});
		// 회원가입 버튼 활성화 
		// 이게 onload 되었을때 한 번 실행되가지고... 실행이 안되나봄... 얘를 어떻게 실행시킬 수 있을까? 
		//  ==================================== 확인필요 ====================================
		if(id_result && pwd_result && name_result && birth_result && email_result && pwdHint_result && hintAns_result)
		{
			$('#sendBtn').attr('disabled', false);
			alert('모두 완료!!!');
		}
	});
  </script>

</body>

</html>