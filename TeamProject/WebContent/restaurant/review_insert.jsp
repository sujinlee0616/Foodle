<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
</head>
<body>
    <!--============================= TITLE =============================-->
    <section class="reserve-block">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h5>${mvo.rName }</h5>
                    <span class="mywish" value="${mvo.rNo }" style="font-size:23pt; color: red">${myWish }</span>
                    <p>
                    	<div class="stars-outer"> <!-- grey star -->
                    		<div class="stars-inner" style="width: ${mvo.rScore*20}%;"></div>  <!-- yellow star -->
                        </div>
                        &nbsp;| ${mvo.rScoreCount } 명 참여
                        
                    </p>
                    <p class="reserve-description"><%-- ${strContent} --%></p>
                </div>
                <div class="col-md-6">
                    <div class="reserve-seat-block">
                    	<div class="wish-btn">
                    		<%-- <a href="#" class="btn btn-outline-danger mywish" value="${mvo.rNo }" style="font-size:17pt;">♡</a> --%>
                    	</div>
                        <div class="reserve-rating">
                            <span>${mvo.rScore }</span>
                        </div>
                        <!-- <div class="reserve-btn">
                            <div class="featured-btn-wrap">
                                <a href="#" class="btn btn-danger">예약하기</a>
                            </div>
                        </div> -->
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
						 <div class="table-responsive">
							<table class="table replyBoard reply_insert">
							<tbody>
								<input type="hidden" name="bno">
								<tr>
									<th class="text-right success">ID</th>
									<td><input type="text" name="name" required autofocus autocomplete="off"></td>
								</tr>
								<tr>
									<th class="text-right success">별점</th>
									<!-- <td><input type="text" name="subject" required autocomplete="off"></td> -->
								</tr>
								<tr>
									<th class="text-right success">내용</th>
									<td>
										<textarea type="text" name="content" class="update_ct" required autocomplete="off"></textarea>
									</td>
								</tr>
								<!-- <tr>
									<th class="text-right success">비밀번호</th>
									<td>
										<input type="password" name="pwd" required value="" autocomplete="off">
									</td>
								</tr> -->
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
	
</body>
    
    