<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
    <form name="signup_frm" action="../member/signup_comp_ok.do" method="post" id="signup_frm">
      <!-- START OF SIGNUP INFO INPUTS -->
      <div class="row justify-content-center">
        <div class="col-md-6 signup">
          <!-- 회원 유형 선택 : 개인/기업 -->
          <div class="member_type mb-3">
            <ul class="member_category">
              <li class="">
                <h2 class="tab01 mb-0">
                  <a href="signup.do" class="tab_btn">개인회원가입</a>
                </h2>
              </li>
              <li class="on">
                <h2 class="tab02 mb-0">
                  <a href="signup_comp.do" class="tab_btn">기업회원가입</a>
                </h2>
              </li>
            </ul>
          </div>
          <!-- ========================== 기업회원가입 ========================== -->
          <!-- 기업 회원정보 입력 : 필수정보-->
          <div class="cont_division">
            <!-- 회원유형 (hidden) -->
            <input type="hidden" name="utype" value="comp">
            <ul class="write_base select_input">
              <!-- ID (N-N) -->
              <li class="item must">
                <label for="res_id" class="tit_inp"><span class="essential">*</span>ID</label>
                <input type="text" name="rId" id="id" autocapitalize="off" autocomplete="off" placeholder="아이디" maxlength="50">
                <div class="guide_txt mt-1 pl-2 hidden" id="idCheckMsg" style="display:inline-block;"></div>
              </li>
              <!-- Password (N-N) -->
              <li class="item must">
                <label for="res_pwd" class="tit_inp"><span class="essential">*</span>비밀번호</label>
                <input type="password" name="rPwd" id="pwd" autocapitalize="off" placeholder="비밀번호" maxlength="20">
                <div class="guide_txt mt-1 pl-2 hidden" id="pwdCheckMsg" style="display:inline-block;"></div>
              </li>
              <!-- 가게 이름 (N-N)-->
              <li class="item must">
                <label for="res_name" class="tit_inp"><span class="essential">*</span>가게명</label>
                <input type="text" name="rName" id="name" autocapitalize="off" autocomplete="off" placeholder="">
                <div class="guide_txt mt-1 pl-2 hidden" id="nameCheckMsg" style="display:inline-block;"></div>
              </li>
              <!-- 가게 전화번호 (N-N) -->
              <li class="item must">
                <div class="input_collect item">
                  <label for="res_tel" class="tit_inp"><span class="essential">*</span>전화번호</label>
                  <!-- 입력시 on class 삭제 -->
                  <input type="text" name="rTel" id="tel" placeholder="'-' 없이 입력" maxlength="11">
                </div>
                <div class="guide_txt mt-1 pl-2 hidden" id="telCheckMsg" style="display:inline-block;"></div>
              </li>
              <!-- 주소(우편번호) (N-N) -->
              <li class="adress_column item">
                <div class="adress_domestic _searchArea">
                  <label for="address_main" id="address" class="tit_inp"><span class="essential">*</span>주소</label>
                  <input type="text" name="address_main" id="address_main" class="" readonly="1" placeholder="우편번호/주소" onclick="zipcode()">
                  <!-- hidden으로 우편번호 받는다 -->
                  <input type="hidden" name="postcode" id="postcode">
                </div>
                <div class="guide_txt mt-1 pl-2 hidden" id="addr1CheckMsg" style="display:inline-block;"></div>
              </li>
              <!-- 주소 (상세주소) (N-N) -->
              <li class="item">
                <label for="address_detail" class="tit_inp"><span class="essential">*</span>상세 주소</label>
                <input type="text" name="address_detail" id="address_detail" class="" maxlength="50" placeholder="상세 주소">
                <input type="hidden" name="address_extra" value="" id="address_extra">
                <div class="guide_txt mt-1 pl-2 hidden" id="addr2CheckMsg" style="display:inline-block;"></div>
              </li>
              <!-- 업종 (N-N)-->
              <li class="item must">
                <label for="rType" class="tit_inp"><span class="essential">*</span>업종</label>
                <select name="rType" id="category" class="custom-select ml-3">
                  <option value="">업종을 선택하세요.</option>
                  <option value="한식">한식</option>
                  <option value="양식">양식</option>
                  <option value="일식">일식</option>
                  <option value="중식">중식</option>
                  <option value="뷔페">뷔페</option>
                  <option value="패스트푸드">패스트푸드</option>
                  <option value="분식">분식</option>
                  <option value="베이커리">베이커리</option>
                  <option value="카페/주점">카페/주점</option>
                  <option value="기타/세계">기타/세계</option>
                </select>
                <div class="guide_txt mt-1 pl-2 hidden" id="cateCheckMsg" style="display:inline-block;"></div>
              </li>
            </ul>
          </div>

          <!--  기업 회원정보 입력 : 선택항목 -->
          <div class="cont_division">
            <ul class="write_base select_input">
              <!-- 가게 지역 (NULL) -->
              <li class="item">
                <label for="res_area" class="tit_inp">가게 지역</label>
                <select name="rArea" id="res_area" class="custom-select ml-3">
                  <option value="">가게 지역을 선택하세요.</option>
                  <!-- areaCode 테이블의 r_AreaDetail 값 가져온다. -->
                  <option value="서울 강남">서울 강남</option>
                  <option value="서울 강북">서울 강북</option>
                  <option value="경기 남부">경기 남부</option>
                  <option value="경기 북부">경기 북부</option>
                  <option value="인천">인천</option>
                  <option value="부산">부산</option>
                  <option value="대구">대구</option>
                  <option value="광주">광주</option>
                  <option value="대전">대전</option>
                  <option value="울산">울산</option>
                </select>
              </li>
              <!-- 가게 세부 지역 (NULL) -->
              <li class="item">
                <label for="res_area_dt" class="tit_inp">세부 지역</label>
                <select name="rAreaDetail" id="res_area_dt" class="custom-select ml-3">
                  <option value="">세부 지역을 선택하세요.</option>
                  <!-- 위에서 선택한 rArea값을 바탕으로 areaCode 테이블의 a_AreaCode 값 가져온다. -->
                  <!-- <option value="한식">가로수길</option> -->
                </select>
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
<!-- Kakao zipcode -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
  function zipcode() {
    new daum.Postcode({
      oncomplete: function (data) {
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
        if (data.userSelectedType === 'R') {
          // 법정동명이 있을 경우 추가한다. (법정리는 제외)
          // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
          if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
            extraAddr += data.bname;
          }
          // 건물명이 있고, 공동주택일 경우 추가한다.
          if (data.buildingName !== '' && data.apartment === 'Y') {
            extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
          }
          // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
          if (extraAddr !== '') {
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

        // 유효성 검사
		addr1_result=true;	
  		console.log("addr1_result="+addr1_result);
      }
    }).open();
  }
</script>
<script type="text/javascript">
$(function(){

	// 세부지역 처리  
	$('#res_area').click(function(e){
		var selected=$(this).val();
		console.log(selected);
		if(selected=="")
			return;
		$.ajax({
			type:'POST',
			url:'../member/signup_comp_area.do',
			data:{"selected":selected},
			success:function(res)
			{	
				console.log(res);
				$('#res_area_dt').append(res);	
			},
			error:function(e){
				alert(e);
			}
		})
	});
	
	// [유효성 검사]
  	// 필수 입력 요건들이 제대로 입력되었는지 여부 확인 - 얘네가 다 true일때만 회원가입 버튼 활성화 시켜주자 
  	var id_result=false;
  	var pwd_result=false;
  	var name_result=false;
  	var tel_result=false;
  	var addr1_result=false;
  	var addr2_result=false;
  	var cate_result=false;

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
			// 1.아이디 - 3)ID중복검사
			var user_entered_id=$('#id').val();
			console.log(user_entered_id);
			$.ajax({
				type:'POST',
				url:'../member/id_check_comp.do',
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
	// 3.가게이름 - null값 체크 
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
	// 4.전화번호 - null값 체크 
	$('#tel').keyup(function(){
		var length=$('#tel').val().trim().length;
		if(length==0){
			$('#telCheckMsg').removeClass('hidden').html('<span style="color:#ff3a6d; font-size:14px;">필수정보입니다.</span>');
			tel_result=false;
		}	
		else{
			$('#telCheckMsg').addClass('hidden'); // 잘 입력했으면 메시지 제거
			tel_result=true;
		}		
		console.log("tel_result="+tel_result);		
	});
	// 5.주소 - null값 체크 - 하단 카카오맵 소스에서 처리했음
	// 6.상세주소 - null값 체크 
	$('#address_detail').keyup(function(){
		var length=$('#address_detail').val().trim().length;
		if(length==0){
			$('#addr2CheckMsg').removeClass('hidden').html('<span style="color:#ff3a6d; font-size:14px;">필수정보입니다.</span>');
			addr2_result=false;
		}	
		else{
			$('#addr2CheckMsg').addClass('hidden'); // 잘 입력했으면 메시지 제거
			addr2_result=true;
		}		
		console.log("addr2_result="+addr2_result);		
	});
	// 7.업종 - null값 체크 
	$('#category').click(function(){
		var length=$('#category').val().trim().length;
		if(length==0){
			$('#cateCheckMsg').removeClass('hidden').html('<span style="color:#ff3a6d; font-size:14px;">필수정보입니다.</span>');
			cate_result=false;
		}	
		else{
			$('#cateCheckMsg').addClass('hidden'); // 잘 입력했으면 메시지 제거
			cate_result=true;
		}		
		console.log("cate_result="+cate_result);		
	});
	// 회원가입 버튼 클릭 시 유효성 체크 
	$('#sendBtn').click(function(){
		var length=$('#address_main').val().trim().length;
		if(length==0)
			addr1_result=false;
		else
			addr1_result=true;
		if((id_result && pwd_result && name_result && tel_result && addr1_result && addr2_result && cate_result)==false)
		{
			console.log("id_result="+id_result);
			console.log("pwd_result="+pwd_result);
			console.log("name_result="+name_result);
			console.log("tel_result="+tel_result);
			console.log("addr1_result="+addr1_result);
			console.log("addr2_result="+addr2_result);
			console.log("cate_result="+cate_result);
			
			alert('입력정보를 다시 확인해주세요!');
		}
		else{
			$('#signup_frm').submit();
		}
	});

	
	
})
</script>


</body>
</html>