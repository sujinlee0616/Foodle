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
                <input type="password" name="pwd" id="pwd" autocapitalize="off"
                  placeholder="비밀번호" maxlength="20" required>
                <p class="alert_column warning_txt hidden" id="user_pwd_msg" name="user_pwd_msg">필수정보 입니다.</p>
              </li>
              <!-- 이름 (N-N)-->
              <li class="item must">
                <label for="user_nm" class="tit_inp"><span class="essential">*</span>이름</label>
                <input type="text" name="name" id="name" autocapitalize="off" autocomplete="off"
                  placeholder="이름" maxlength="30" required>
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
                <p class="alert_column warning_txt hidden" id="user_birth_msg" name="cyr_msg">&nbsp;</p>
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
                <p class="alert_column warning_txt hidden" id="sms_msg_email1" name="msg_email1">이메일 주소를 다시 확인해주세요.</p>    
              </li>
              
            </ul>
          </div>

          <!-- 비밀번호 힌트 질문 및 답변 -->
          <div class="cont_division">
            <ul class="hint">
              <!-- 비밀번호 힌트 질문 -->
              <li class="item must">
                <label for="user_hint" class="tit_inp"><span class="essential">*</span>비밀번호 힌트 질문</label>
                <select  name="pwd_hint" id="pwd_hint" class="custom-select" required>
                  <option value="">질문을 선택하세요.</option>
                  <option value="place">기억에 남는 추억의 장소는?</option>
                  <option value="motto">자신의 인생 좌우명은?</option>
                  <option value="treasure">자신의 보물 제 1호는?</option>
                  <option value="teacher">가장 기억에 남는 선생님의 성향은?</option>
                  <option value="date">추억하고 싶은 날짜가 있다면?</option>
                  <option value="friend">유년시절 가장 생각나는 친구 이름은?</option>
                </select>
                <p class="alert_column warning_txt hidden" name="user_hint_msg" id="user_hint_msg" >필수정보 입니다.</p>
              </li>
              <!-- 비밀번호 힌트 질문 답 -->
              <li class="item must">
                <label for="user_hintAns" class="tit_inp"><span class="essential">*</span>비밀번호 힌트 질문 답</label>
                <input type="text" name="hintAns" id="hintAns" autocapitalize="off"
                  placeholder="" required>
                <p class="alert_column warning_txt hidden" id="user_hintAns_msg" name="user_hintAns_msg">필수정보 입니다.</p>
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
        	<input type="button" value="회원가입" class="btn btn-danger" id="sendBtn">
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
  <!-- SIGNUP JS -->
  <script type="text/javascript" src="../js/signup.js"></script>

</body>

</html>