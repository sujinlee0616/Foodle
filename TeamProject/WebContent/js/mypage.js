$(function() {
	$('#mypage_wish').click(function() {
		$.ajax({
			type : 'POST',
			url : '../mypage/wish.do',
			success : function(res) {

				$('#myContents').html(res);
			},
			error : function(e) {
				alert(e);
			}
		});
	});

	$('#mypage_reserve').click(function() {
		$.ajax({
			type : 'POST',
			url : '../mypage/reserve.do',
			success : function(res) {

				$('#myContents').html(res);
			},
			error : function(e) {
				alert(e);
			}
		});
	});

	$('#mypage_review').click(function() {
		$.ajax({
			type : 'POST',
			url : '../mypage/review.do',
			success : function(res) {

				$('#myContents').html(res);
			},
			error : function(e) {
				alert(e);
			}
		});
	});

	$('#mypage_coupon').click(function() {
		$.ajax({
			type : 'POST',
			url : '../mypage/coupon.do',
			success : function(res) {
				$('#myContents').html(res);
			},
			error : function(e) {
				alert(e);
			}
		});
	});
	$('#mypage_infoupdate').click(function() {
		$.ajax({
			type : 'POST',
			url : '../mypage/infoupdate_check.do',
			success : function(res) {

				$('#myContents').html(res);
			},
			error : function(e) {
				alert(e);
			}
		});
	});
	
	$('#mypage_infoupdate_check_button').click(function() {
		console.log('sadfsadf');
		var pwd = $('#mypage_infoupdate_check_pwd').val();
		
		console.log(pwd);
		$.ajax({
			type : 'POST',
			url : '../mypage/infoupdate_check_ok.do',
			success : function(res) {
				$('#myContents').html(res);
			},
			error : function(e) {
				alert(e);
			}
		});
	});

})


//원래 있던 자바스크립트 코드
/*var swiper = new Swiper('.swiper-container', {
	slidesPerView : 3,
	slidesPerGroup : 3,
	loop : true,
	loopFillGroupWithBlank : true,
	pagination : {
		el : '.swiper-pagination',
		clickable : true,
	},
	navigation : {
		nextEl : '.swiper-button-next',
		prevEl : '.swiper-button-prev',
	},
});

if ($('.image-link').length) {
	$('.image-link').magnificPopup({
		type : 'image',
		gallery : {
			enabled : true
		}
	});
}
if ($('.image-link2').length) {
	$('.image-link2').magnificPopup({
		type : 'image',
		gallery : {
			enabled : true
		}
	});
}
*/