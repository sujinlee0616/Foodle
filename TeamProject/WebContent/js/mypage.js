

  $(document).ready(function() {

	// 기존 css에서 플로팅 배너 위치(top)값을 가져와 저장한다.
	var floatPosition = parseInt($("#floatMenu").css('top'));
	// 250px 이런식으로 가져오므로 여기서 숫자만 가져온다. parseInt( 값 );

	$(window).scroll(function() {
		// 현재 스크롤 위치를 가져온다.
		var scrollTop = $(window).scrollTop();
		var newPosition = scrollTop + floatPosition + "px";

		 //애니메이션 없이 바로 따라감
		// $("#floatMenu").css('top', newPosition);
		 

		$("#floatMenu").stop().animate({
			"top" : newPosition
		}, 500);

	}).scroll();

});


$(function() {
	$("#floatMenu").hide();
	$('#mypage_wish').click(function() {
		$("#floatMenu").show();
		$.ajax({
			type : 'POST',
			url : '../mypage/wish.do',
			success : function(res) {

				$('#myContents').html(res);
				
				
					$('#floatMenu').html(
						
						'<ul class="p-0">'	       
						+'  <li>'
						+'      <a id="wishNextPage">'
						+'          <svg height="30" viewBox="10 0 30 30" width="80" xmlns="http://www.w3.org/2000/svg">'
						+'              <path d="M14.83 30.83l9.17-9.17 9.17 9.17 2.83-2.83-12-12-12 12z"></path>'
						+'              <path d="M0 0h48v48h-48z" fill="none"></path>'
						+'          </svg>'
						+'      </a>'
						+'  </li>'
						+'  <li>'
						+'      <a id="wishBeforePage">'
						+'          <svg height="30" viewBox="10 0 30 30" width="80" xmlns="http://www.w3.org/2000/svg">'
						+'              <path d="M14.83 16.42l9.17 9.17 9.17-9.17 2.83 2.83-12 12-12-12z"></path>'
						+'              <path d="M0-.75h48v48h-48z" fill="none"></path>'
						+'          </svg>'
						+'      </a>'
						+'  </li>'
						+'	<label style="font-size:13px display: block;" >페이지 번호를 입력하세요</label>'
						+'  <input type="text" id="wishInputPage" style="width:50px; float:left; text-align:center">'
						+'  <button id="wishInputPageSearch"><img src="../images/header_searchicon.png" style="width:32px; height:32px; left:30px"></button>'		             
						+'	<button type="button" id="wishCurPage" class="btn btn-success">page</button>'
						+'	<button type="button" id="wishTotalPage" class="btn btn-success">tal</button>'
						+'</ul>'
				);
		
		//////////////
					//page 초기값
					$('#wishCurPage').text($('#wishCurHidden').val());
					$('#wishTotalPage').text($('#wishTotalHidden').val());
					///////////////////////////////////////
					
					$('#wishBeforePage').click(function(){
						var curpage = $('#wishCurHidden').val();
					
						if(curpage <= 1 || curpage == undefined)
							curpage=1;
						else
							curpage=Number(curpage)-1;
						
							$('#wishCurPage').text(curpage);
						
						$.ajax({
							type : 'POST',
							url : '../mypage/wish.do',
							data : {"pageMove":"before","page":curpage},
							success : function(res) 
							{						
								
								$('#myContents').html(res);
							}
						});
					});
					
					$('#wishNextPage').click(function(){
						var curpage = $('#wishCurHidden').val();
						
						console.log($('#wishTotalHidden').val());
						
						if(curpage == undefined || curpage >= $('#wishTotalHidden').val())
							curpage=$('#wishTotalPage').text();
						else
							curpage=Number(curpage)+1;
						
							$('#wishCurPage').text(curpage);
					
						$.ajax({
							type : 'POST',
							url : '../mypage/wish.do',
							data : {"pageMove":"next","page":curpage},

							success : function(res) 
							{						
								
								$('#myContents').html(res);
							}
						});
					});
				
					$('#wishInputPageSearch').click(function(){
						var inputPage = $('#wishInputPage').val();
						
						if(isNaN(inputPage)==false && inputPage>0 && inputPage<=Number($('#wishTotalPage').text()))
						{
							var curpage = inputPage;
							
							if(curpage >$('#wishTotalPage').text())
							{
								$('#wishInputPage').val("");
								return;
							}
							$('#wishCurPage').val(curpage);
							$('#wishCurPage').text(curpage);
						
							$.ajax({
								type : 'POST',
								url : '../mypage/wish.do',
								data : {"pageMove":"before","page":curpage},
								success : function(res) 
								{						
									
									$('#myContents').html(res);
									$('#wishInputPage').val("");
								},
								error : function(e) {
									alert(e);
								}
							})					
						}	
						else
							$('#wishInputPage').val("");
					})
					
				
			},
			error : function(e) {
				alert(e);
			}
		});
	});

	$('#mypage_reserve').click(function() {
		$("#floatMenu").hide();
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
		$("#floatMenu").show();
		$.ajax({
			type : 'POST',
			url : '../mypage/review.do',
			success : function(res) {

				$('#myContents').html(res);
				
				$('#floatMenu').html(
						'<ul class="p-0">'	       
						+'  <li>'
						+'      <a id="reviewNextPage">'
						+'          <svg height="30" viewBox="10 0 30 30" width="80" xmlns="http://www.w3.org/2000/svg">'
						+'              <path d="M14.83 30.83l9.17-9.17 9.17 9.17 2.83-2.83-12-12-12 12z"></path>'
						+'              <path d="M0 0h48v48h-48z" fill="none"></path>'
						+'          </svg>'
						+'      </a>'
						+'  </li>'
						+'  <li>'
						+'      <a id="reviewBeforePage">'
						+'          <svg height="30" viewBox="10 0 30 30" width="80" xmlns="http://www.w3.org/2000/svg">'
						+'              <path d="M14.83 16.42l9.17 9.17 9.17-9.17 2.83 2.83-12 12-12-12z"></path>'
						+'              <path d="M0-.75h48v48h-48z" fill="none"></path>'
						+'          </svg>'
						+'      </a>'
						+'  </li>'
						+'	<label style="font-size:13px; display: block;" >페이지 번호를 입력하세요</label>'
						+'  <input type="text" id="reviewInputPage" style="width:45px; float:left; text-align:center">'
						+'  <button id="reviewInputPageSearch"><img src="../images/header_searchicon.png" style="width:32px; height:32px; left:30px"></button>'		             
						+'	<button type="button" id="reviewCurPage" class="btn btn-success">page</button>'
						+'	<button type="button" id="reviewTotalPage" class="btn btn-success">tal</button>'
						
						+'	<button type="button" id="reviewRevDate" class="btn btn-success">작성일</button>'
						+'	<button type="button" id="reviewRevGood" class="btn btn-success">좋아요</button>'
						+'	<button type="button" id="reviewRevBad" class="btn btn-success">싫어요</button>'
						+'	<button type="button" id="reviewRevScore" class="btn btn-success">평점</button>'
						+'	</ul>'	    
				);
		
								
				//////////////
				//page 초기값
				$('#reviewCurPage').text($('#reviewCurHidden').val());
				$('#reviewTotalPage').text($('#reviewTotalHidden').val());
				///////////////////////////////////////

		
				     
				
				
				$('#reviewRevDate').click(function(){
	

					var reviewRangeList ="";
					
					
					if($('#reviewRangeList').val()!=undefined)
					{
						reviewRangeList=$('#reviewRangeList').val();
					}
					var reviewCurAscRange="";
					var reviewCurDescRange="";
					
				
					
					if($(this).text()=="작성일▲")
						{
							$(this).text("작성일▼");
							reviewCurAscRange = "revdate:asc,";
							
						}
					else if($(this).text()=="작성일▼")
						{
							$(this).text("작성일▲");
							
							reviewCurDescRange = "revdate:desc,";
						}
					else
					{
						$(this).text("작성일▲");
						reviewCurDescRange = "revdate:desc,";
					}
					reviewRangeList = reviewRangeList+reviewCurAscRange+reviewCurDescRange;
					$('#reviewRangeList').val(reviewRangeList);
					
					
					$.ajax({
						type : 'POST',
						url : '../mypage/review.do',
						data :{"reviewRangeList":reviewRangeList},
						success : function(res) {

							$('#myContents').html(res);
						},
						error : function(e) {
							alert(e);
						}
					});
					
					
				})
				$('#reviewRevGood').click(function(){
					
					var reviewRangeList ="";
					
					if($('#reviewRangeList').val()!=undefined)
					{
						reviewRangeList=$('#reviewRangeList').val();
					}
					var reviewCurAscRange="";
					var reviewCurDescRange="";
					
		
					if($(this).text()=="좋아요▲")
						{
							$(this).text("좋아요▼");							
							reviewCurAscRange = "revgood:asc,";
						}
					else if($(this).text()=="좋아요▼")
						{
							$(this).text("좋아요▲");						
							reviewCurDescRange = "revgood:desc,";
						}
						
					else
					{
						$(this).text("좋아요▲");						
						reviewCurDescRange = "revgood:desc,";
					}
					
					reviewRangeList = reviewRangeList+reviewCurAscRange+reviewCurDescRange;
					$('#reviewRangeList').val(reviewRangeList);
				
					
					$.ajax({
						type : 'POST',
						url : '../mypage/review.do',
						data :{"reviewRangeList":reviewRangeList},
						success : function(res) {

							$('#myContents').html(res);
						},
						error : function(e) {
							alert(e);
						}
					});
				})
				$('#reviewRevBad').click(function(){
			
					var reviewRangeList ="";
					
					if($('#reviewRangeList').val()!=undefined)
					{
						reviewRangeList=$('#reviewRangeList').val();
					}
					var reviewCurAscRange="";
					var reviewCurDescRange="";
					
					if($(this).text()=="싫어요▲")
					{
						$(this).text("싫어요▼");
				
						reviewCurAscRange = "revbad:asc,";
						
					}
						
					else if($(this).text()=="싫어요▼")
					{
						$(this).text("싫어요▲");
						reviewCurDescRange = "revbad:desc,";
					
					}
					else
					{
						$(this).text("싫어요▲");
						reviewCurDescRange = "revbad:desc,";	
						
					}
					
					reviewRangeList = reviewRangeList+reviewCurAscRange+reviewCurDescRange;
					$('#reviewRangeList').val(reviewRangeList);
			

					$.ajax({
						type : 'POST',
						url : '../mypage/review.do',
						data :{"reviewRangeList":reviewRangeList},
						success : function(res) {

							$('#myContents').html(res);
						},
						error : function(e) {
							alert(e);
						}
					});
				})
				$('#reviewRevScore').click(function(){
					

					var reviewRangeList ="";
					
					if($('#reviewRangeList').val()!=undefined)
					{
						reviewRangeList=$('#reviewRangeList').val();
					}
					
					var reviewCurAscRange="";
					var reviewCurDescRange="";
					
					if($(this).text()=="평점▲")
					{
						$(this).text("평점▼");
						
						reviewCurAscRange = "revscore:asc,";
							
					}
					else if($(this).text()=="평점▼")
					{
						$(this).text("평점▲");
						
						
						reviewCurDescRange = "revscore:desc,";
						
					}
					else
					{
						$(this).text("평점▲");
						reviewCurDescRange = "revscore:desc,";	
					
					}
					
					reviewRangeList = reviewRangeList+reviewCurAscRange+reviewCurDescRange;
					$('#reviewRangeList').val(reviewRangeList);
					
					
					$.ajax({
						type : 'POST',
						url : '../mypage/review.do',
						data :{"reviewRangeList":reviewRangeList},
						success : function(res) {

							$('#myContents').html(res);
						},
						error : function(e) {
							alert(e);
						}
					});
				})
				

				
				
				
				$('#reviewBeforePage').click(function(){
					
					
					if($('#reviewRangeList').val()!=undefined)
					{
						reviewRangeList=$('#reviewRangeList').val();
					}
					var curpage = $('#reviewCurHidden').val();
				
					if(curpage <= 1 || curpage == undefined)
						curpage=1;
					else
						curpage=Number(curpage)-1;
					
						$('#reviewCurPage').text(curpage);
					
					$.ajax({
						type : 'POST',
						url : '../mypage/review.do',
						data : {"pageMove":"before","page":curpage,"reviewRangeList":reviewRangeList},
						success : function(res) 
						{						
							
							$('#myContents').html(res);
						}
					});
				});
				
				$('#reviewNextPage').click(function(){
					
					if($('#reviewRangeList').val()!=undefined)
					{
						reviewRangeList=$('#reviewRangeList').val();
					}
					var curpage = $('#reviewCurHidden').val();
					
					console.log($('#reviewTotalHidden').val());
					
					if(curpage == undefined || curpage >= $('#reviewTotalHidden').val())
						curpage=$('#reviewTotalPage').text();
					else
						curpage=Number(curpage)+1;
					
						$('#reviewCurPage').text(curpage);
				
					$.ajax({
						type : 'POST',
						url : '../mypage/review.do',
						data : {"pageMove":"next","page":curpage,"reviewRangeList":reviewRangeList},

						success : function(res) 
						{						
							
							$('#myContents').html(res);
						}
					});
				});
			
				$('#reviewInputPageSearch').click(function(){
					
					if($('#reviewRangeList').val()!=undefined)
					{
						reviewRangeList=$('#reviewRangeList').val();
					}
					var inputPage = $('#reviewInputPage').val();
					
					if(isNaN(inputPage)==false && inputPage>0 && inputPage<=Number($('#reviewTotalPage').text()))
					{
						var curpage = inputPage;
						
						if(curpage >$('#reviewTotalPage').text())
						{
							$('#reviewInputPage').val("");
							return;
						}
						$('#reviewCurPage').val(curpage);
						$('#reviewCurPage').text(curpage);
					
						$.ajax({
							type : 'POST',
							url : '../mypage/review.do',
							data : {"pageMove":"before","page":curpage,"reviewRangeList":reviewRangeList},
							success : function(res) 
							{						
								
								$('#myContents').html(res);
								$('#reviewInputPage').val("");
							},
							error : function(e) {
								alert(e);
							}
						})					
					}	
					else
						$('#reviewInputPage').val("");
				})
			
			},
			error : function(e) {
				alert(e);
			}
		});
	});

	$('#mypage_coupon').click(function() {

		$("#floatMenu").show();
		$.ajax({
			type : 'POST',
			url : '../mypage/coupon.do',
			success : function(res) {
				
				
				$('#myContents').html(res);
				
				
			
				$('#floatMenu').html(
					
					'<ul class="p-0">'	       
					+'  <li>'
					+'      <a id="couponNextPage">'
					+'          <svg height="30" viewBox="10 0 30 30" width="80" xmlns="http://www.w3.org/2000/svg">'
					+'              <path d="M14.83 30.83l9.17-9.17 9.17 9.17 2.83-2.83-12-12-12 12z"></path>'
					+'              <path d="M0 0h48v48h-48z" fill="none"></path>'
					+'          </svg>'
					+'      </a>'
					+'  </li>'
					+'  <li>'
					+'      <a id="couponBeforePage">'
					+'          <svg height="30" viewBox="10 0 30 30" width="80" xmlns="http://www.w3.org/2000/svg">'
					+'              <path d="M14.83 16.42l9.17 9.17 9.17-9.17 2.83 2.83-12 12-12-12z"></path>'
					+'              <path d="M0-.75h48v48h-48z" fill="none"></path>'
					+'          </svg>'
					+'      </a>'
					+'  </li>'
					+'	<label style="font-size:13px display: block;">페이지 번호를 입력하세요</label>'
					+'  <input type="text" id="couponInputPage" style="width:50px; float:left; text-align:center">'
					+'  <button id="couponInputPageSearch"><img src="../images/header_searchicon.png" style="width:32px; height:32px; left:30px"></button>'		             
					+'	<button type="button" id="couponCurPage" class="btn btn-success">page</button>'
					+'	<button type="button" id="couponTotalPage" class="btn btn-success">tal</button>'
					+'	<label style="font-size:13px display: block;">가게 이름을 입력하세요</label>'
					+'	<input type="text" id="couponSearchText" style="width:90px; margin-top:0px;">'
					+'  <button id="couponSearch"><img src="../images/header_searchicon.png" style="width:32px; height:32px; left:30px"></button>'
					+'	<div id="couponSearchList" style="color:black;"></div>'
					+'</ul>'
					
				);
				
				/////////////////
				
				
				//////////////
				//page 초기값
				$('#couponCurPage').text($('#couponCurHidden').val());
				
				$('#couponTotalPage').text($('#couponTotalHidden').val());
	
				
				///////////////////////////////////////
				
		
				
				$('#couponInputPageSearch').click(function(){
					var inputPage = $('#couponInputPage').val();
					if(isNaN(inputPage)==false && inputPage>0 && inputPage<=Number($('#couponTotalPage').text()))
					{
						var curpage = inputPage;
						
						if(curpage >$('#couponTotalPage').text())
						{
							$('#couponInputPage').val("");
							return;
						}
						$('#couponCurPage').val(curpage);
						$('#couponCurPage').text(curpage);
					
						$.ajax({
							type : 'POST',
							url : '../mypage/coupon.do',
							data : {"pageMove":"before","page":curpage},
							success : function(res) 
							{						
								
								$('#myContents').html(res);
								$('#couponInputPage').val("");
							},
							error : function(e) {
								alert(e);
							}
						})					
					}	
					else
						$('#couponInputPage').val("");
				})
				
				$('#couponSearch').click(function(){
					var couponSearchText = $('#couponSearchText').val();
					
					$.ajax({
						type : 'POST',
						url : '../mypage/coupon_search.do',
						data : {"rname":couponSearchText},
						success : function(res) 
						{
							$('#couponSearchText').val("");
							$('#myContents').html(res);	
							
							$('.couponSearchOne').remove();
						}
						
					});		
						
				});

				$('#couponSearchText').keyup(function(){
					var couponSearchText = $('#couponSearchText').val();
			
					if($('#couponSearchText').val()=="")
					{
						//""입력했다가 지웠을때 상황
						return;
					}
					$.ajax({
						type : 'POST',
						url : '../mypage/coupon_search_list.do',
						data : {"rname":couponSearchText},
						success : function(res) 
						{						
							
							$('#couponSearchList').html(res);
					
							$('.couponSearchOne').click(function(){
								var value=$(this).text();
								
								$('#couponSearchText').val(value);
							})
							
						}
					});
					
		
				});
				
				$('#couponBeforePage').click(function(){
					var curpage = $('#couponCurHidden').val();
				
					if(curpage <= 1 || curpage == undefined)
						curpage=1;
					else
						curpage=Number(curpage)-1;
					
						$('#couponCurPage').text(curpage);
					
					$.ajax({
						type : 'POST',
						url : '../mypage/coupon.do',
						data : {"pageMove":"before","page":curpage},
						success : function(res) 
						{						
							
							$('#myContents').html(res);
						}
					});
				});
		
				$('#couponNextPage').click(function(){
					var curpage = $('#couponCurHidden').val();
					
					if(curpage == undefined || curpage >= $('#couponTotalHidden').val())
						curpage=$('#couponTotalPage').text();
					else
						curpage=Number(curpage)+1;
					
						$('#couponCurPage').text(curpage);
				
					$.ajax({
						type : 'POST',
						url : '../mypage/coupon.do',
						data : {"pageMove":"next","page":curpage},

						success : function(res) 
						{						
							
							$('#myContents').html(res);
						}
					});
				});
			
			},
			error : function(e) {
				alert(e);
			}
		});
	});
	$('#mypage_infoupdate').click(function() {
		$("#floatMenu").hide();
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
		var pwd = $('#mypage_infoupdate_check_pwd').val();
	
		$.ajax({
			type : 'POST',
			url : '../mypage/infoupdate_check_ok.do',
			data:{"pwd":pwd},
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