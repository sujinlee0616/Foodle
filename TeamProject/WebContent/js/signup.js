// [생일 선택 jQuery UI] 
$( function() {
      $( "#birth" ).datepicker({
        changeMonth: true,
        changeYear: true,
        yearRange: "-100:+0"
      });
});


// [우편번호 검색 카카오]
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

// [유효성 검사]
$(function(){

	// 아이디 체크1. 기본 입력요청
	$('#id').click(function(){
		$('#idCheckMsg').removeClass('hidden');
		var length=$('#id').val().trim().length;
		if(length==0)
		{
			$('#idCheckMsg').html('<span style="color:#707070; font-size:15px;">6글자 이상 입력해주세요.</span>');
			return;
		}
	});

	// 아이디 체크2. 글자길이 체크 
	$('#id').keyup(function(){
		var length=$('#id').val().trim().length;
		if(length==0)
			$('#idCheckMsg').html('<span style="color:#707070; font-size:15px;">필수정보입니다.</span>');
		else if(length<6)
			$('#idCheckMsg').html('<span style="color:#ff3a6d; font-size:15px;">너무 짧아요. 6글자 이상 입력해주세요.</span>');
		else
			$('#idCheckMsg').addClass('hidden'); // 잘 입력했으면 메시지 제거
		return;
	});

	// 아이디 체크3. ID중복검사 
	$('#id').blur(function(){
		var id=$('#id').val();
		
		$.ajax({
			type:'POST',
			url:''
		})
	})
	
	// 비번 체크

	
})