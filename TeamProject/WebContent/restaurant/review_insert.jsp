<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
</head>
<body>
	<!-- [예외처리] 로그인 하지 않고 인위적인 방법으로 리뷰 작성 페이지에 왔을 때는 로그인시키러 보낸다. -->
	<c:if test="${sessionScope.id==null }">
	 <section class="board-block light-bg">
        <div class="container">
            <div class="row justify-content-center py-5 mt-5">
            	<div class="col-md-6 pt-4">
            		<h5>리뷰를 작성하시려면 먼저 로그인 해주세요.</h5>
            	</div>
            </div>
            <div class="row justify-content-center">
		        <div class="col-md-6 pt-4">
		          <div class="signup-btn-wrap">
		        	<a href="../member/login.do" class="btn btn-danger" style="color: #fff;">로그인하러 가기</a>
		          </div>
		        </div>
		    </div>
        </div>
     </section>
	</c:if>
	<c:if test="${sessionScope.id!=null }">
    <!--============================= TITLE =============================-->
    <section class="reserve-block">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <a href="../restaurant/detail.do?no=${mvo.rNo }"><h5>${mvo.rName }</h5></a>
                    <span class="mywish" value="${mvo.rNo }" style="font-size:23pt; color: red">${myWish }</span>
                    <p>
                    	<div class="stars-outer"> <!-- grey star -->
                    		<div class="stars-inner" style="width: ${mvo.rScore*20}%;"></div>  <!-- yellow star -->
                        </div>
                        &nbsp;| ${mvo.rScoreCount }명 참여
                        
                    </p>
                    <p class="reserve-description">${strContent}</p>
                </div>
                <div class="col-md-6">
                    <div class="reserve-seat-block">
                    	<div class="wish-btn">
                    		<%-- <a href="#" class="btn btn-outline-danger mywish" value="${mvo.rNo }" style="font-size:17pt;">♡</a> --%>
                    	</div>
                        <div class="reserve-rating">
                            <span>${mvo.rScore }</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--//END TITLE -->
    <section class="board-block light-bg">
        <div class="container py-5">
			<div class="row">
                <div class="col-md-6">
                    <h5>리뷰 작성</h5>
                </div>
            </div>
			<div class="py-3">
					<form method="post" action="../restaurant/review_insert_ok.do">
					 <!-- action: insert_ok.jsp 에서 데이터 받아서 처리 -->
					 	 <input type="hidden" name="rNo" value="${mvo.rNo }">
						 <div class="table-responsive">
							<table class="table replyBoard reply_insert">
							<tbody>
								<tr>
									<th class="text-right success">ID</th>
									<td>${sessionScope.id }</td>
								</tr>
								<tr>
									<th class="text-right success">별점</th>
									<td><input type="number" name="rating" min="0" max="5" step="0.1" required autocomplete="off"></td>
								</tr>
								<tr>
									<th class="text-right success">내용</th>
									<td>
										<textarea type="text" name="content" class="update_ct" required autocomplete="off"></textarea>
									</td>
								</tr>
							</tbody>
							</table>
						 </div>
						 <div class="board-btn-wrap">
						 	<input type="button" value="취소" class="btn btn-cancle" onclick="javascript:history.back()">
							<input type="submit" value="작성 완료" class="btn btn-danger">		
						 </div>
					</form>
			</div>
		</div>
    </section>
    </c:if>
    
    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    
    <!-- 찜 hover 시 마우스 변경 -->
	<script type="text/javascript">
	$('.mywish').hover(function(){
		$(this).css('cursor','pointer');
	})
	</script>
	
	<script type="text/javascript">
    	$('.mywish').click(function() {
    		let no=$(this).attr('value');
    		//alert(no);
    		$.ajax({
    			type:'POST',
    			url:'../restaurant/mywish.do',
    			data:{"rno":no},
    			success:function(res){
    				console.log(res);
    				if(res.trim()=='NOLOGIN') {
    					alert("로그인 후 이용해주세요.");
    				}
    				else if(res.trim()=='myWishInsert'){ 
    					if($('.mywish').attr('value')==no) {
    						$('.mywish').text('♥');
        		    		$('.mywish').css("font-size","23pt");
        		    		$('.mywish').css("color","red");
    					}
    				}
    				else { // myWishDelete
    					if($('.mywish').attr('value')==no) {
    						$('.mywish').text('♡');
        		    		$('.mywish').css("font-size","23pt");
        		    		$('.mywish').css("color","red");
    					}
    				}
    			},
    			error:function(e){
    				alert(e);
    			}
    		})
    	})
    </script>
	
</body>
    
    