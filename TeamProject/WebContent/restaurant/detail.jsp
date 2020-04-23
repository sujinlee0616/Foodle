<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
                    <!-- <p><span>\\\</span>\\</p> -->
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
                        <div class="review-btn">
                            <a href="#" class="btn btn-outline-danger">리뷰 쓰기</a>
                        </div>
                        <div class="reserve-btn">
                            <div class="featured-btn-wrap">
                                <a href="#" class="btn btn-danger">예약하기</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--//END TITLE -->
    <!--============================= INFO =============================-->
    <section class="light-bg res_info_wrap">
        <div class="container">
            <div class="row">
                <div class="col-md-8 responsive-wrap">
                    <!-- 음식점 사진 -->
                    <div class="res-photo">
                        <div class="photo">
							<c:forEach var="vo" items="${imageList }">
								<c:if test="${vo.iName=='Mainimage' }">
									<div class="main-img">
										<img src="${vo.iLink}" id="current" style="width: 730px; height: 550px;">
									</div>
								</c:if>
								<c:if test="${vo.iName!='Mainimage' }">
									<div class="imgs" style="display: inline-block;">
										<img src="${vo.iLink}" style="width: 142px; height: 100px;" title="${vo.iName }">
									</div>
								</c:if>
							</c:forEach>
						</div>
                    </div>
                    <!-- 사진 하단 음식점 소개 -->
                    <div class="res_intro_wrap">
                        <p>${svo.rContent }</p>
                    </div>
                    <!-- 상세정보 -->
                    <div class="detail_info my-4">
                        <div class="area_title">
                            <h5>상세정보</h5>
                        </div>
                        <table class="table">
                            <tbody>
                              <tr>
                                <th scope="row" width="20%">전화번호</th>
                                <td width="80%" colspan="3">${mvo.rTel }</td>
                              </tr>
                              <tr>
                                <th scope="row" width="20%">주소</th>
                                <td width="80%" colspan="3">${mvo.rAddr1 }<br>[새주소] ${mvo.rAddr2 }</td>
                              </tr>
                              <tr>
                                <th scope="row" width="20%">영업시간</th>
                                <td width="30%">${rvo.rOpentime }:00 ~ ${rvo.rClosetime }:00</td>
                                <th scope="row"width="20%">업종</th>
                                <td width="30%">${mvo.rType }</td>
                              </tr>
                              <tr>
                                <th scope="row" width="20%">휴일</th>
                                <td width="30%">매주 ${rvo.rHoliday }요일</td>
                                <th scope="row"width="20%">좌석/룸/기타</th>
                                <td width="30%">${rvo.rSeat }석/${rvo.rRoom }개</td>
                              </tr>
                              <tr>
                                <th scope="row" width="20%">주류판매</th>
                                <td width="30%">${svo.rDrink }</td>
                                <th scope="row" width="20%">금연석</th>
                                <td width="30%">${svo.rNosmoking }</td>
                              </tr>
                              <tr>
                                <th scope="row" width="20%">예약정보</th>
                                <td width="30%">${rvo.rReserve }</td>
                                <th scope="row" width="20%">배달/포장</th>
                                <td width="30%">${svo.rDelivery }/${svo.rTakeout }</td>
                              </tr>
                              <tr>
                                <th scope="row" width="20%">주차</th>
                                <td width="30%">${svo.rPark }</td>
                                <th scope="row" width="20%">기타시설</th>
                                <td width="30%">${svo.rOther }</td>
                              </tr>
                            </tbody>
                          </table>
                    </div>
                    <!-- 사용자 리뷰 -->
                    <div class="user_review_wrap">
                        <div class="area_title">
                            <h5>리뷰</h5>
                        </div>
                        <div class="review_wrap">
                            <div class="customer-review-avg">
                                <div class="area_grade col-md-4">
                                    <p>사용자 총 평점</p>
                                    <div class="star_avg">
                                        <div class="stars-outer"> <!-- grey star -->
                                            <div class="stars-inner" style="width: ${reviewScoreAvg*20}%;"></div>  <!-- yellow star -->
                                        </div>
                                    </div>
                                    <p><span>${reviewScoreAvg } / 5</span></p>
                                </div>
                                <div class="area_reviewNo col-md-4">
                                    <p>전체 리뷰 수</p>
                                    <img src="../images/dialog.png">
                                    <p><span>${reviewTotalCount }</span></p>
                                </div>
                            </div>
                            <hr>
                            <c:forEach var="vo" items="${reviewList }">
	                            <div class="customer-review_wrap">
	                                <div class="customer-img">
	                                    <img src="../images/customer-img0.png" class="img-fluid" alt="#">
	                                    <p>${vo.userid }</p>
	                                    <span>35 Reviews</span>
	                                </div>
	                                <div class="customer-content-wrap">
	                                    <div class="customer-content">
	                                        <div class="customer-review">
	                                            <h6>만족</h6>
	                                            <!-- (old) 별점 이미지-->
	                                            <!-- <span></span>
	                                            <span></span>
	                                            <span></span>
	                                            <span></span>
	                                            <span class="round-icon-blank"></span> -->
	                                            <!-- (new) 별점 이미지 -->
	                                            <div class="stars-outer"> <!-- grey star -->
	                                                <div class="stars-inner" style="width: ${vo.revscore*20}%;"></div>  <!-- yellow star -->
	                                            </div>
	                                            <p>
	                                            	<fmt:formatDate value="${vo.revdate }" pattern="yyyy/MM/dd"/>
	                                            </p>
	                                        </div>
	                                        <div class="customer-rating">4.3</div> <!-- 점수 -->
	    
	                                    </div>
	                                    <p class="customer-text">${vo.revcontent }</p>
	                                    <!-- <ul>
	                                        <li><img src="../images/review-img1.jpg" class="img-fluid" alt="#"></li>
	                                        <li><img src="../images/review-img2.jpg" class="img-fluid" alt="#"></li>
	                                        <li><img src="../images/review-img3.jpg" class="img-fluid" alt="#"></li>
	                                    </ul> -->
	                                    <span>${vo.revgood }명이 이 리뷰가 도움이 되었다고 응답했습니다.</span>
	                                    <a href="#"><span class="icon-like"></span>도움이 됐어요</a>
	                                </div>
	                            </div>
	                            <hr>
                            </c:forEach>
                            
                            <!-- /////////////////////////////////////// -->
                            <div class="customer-review_wrap">
                                <div class="customer-img">
                                    <img src="../images/customer-img0.png" class="img-fluid" alt="#">
                                    <p>어흥흥흥</p>
                                    <span>17 Reviews</span>
                                </div>
                                <div class="customer-content-wrap">
                                    <div class="customer-content">
                                        <div class="customer-review">
                                            <h6>화덕피자 좋아하시는 분들에게 추천!!</h6>
                                             <!-- (old) 별점 이미지
                                            <span></span>
                                            <span></span>
                                            <span></span>
                                            <span></span>
                                            <span class="round-icon-blank"></span>
                                            (new) 별점 이미지 -->
                                            <div class="stars-outer"> <!-- grey star -->
                                                <div class="stars-inner" style="width: 80%;"></div>  <!-- yellow star -->
                                            </div>
                                            <p>2015/09/10</p>
                                        </div>
                                        <div class="customer-rating customer-rating-red">4.0</div>
                                    </div>
                                    <p class="customer-text">화덕피자 진짜 좋아하는뎅~>< 여기 너무 맛있어요! 화덕향도 나고 치즈도 듬뿍올라가서 좋아요~!</p>
                                    <span>10명이 이 리뷰가 도움이 되었다고 응답했습니다.</span>
                                    <a href="#"><span class="icon-like"></span>도움이 됐어요</a>
                                </div>
                            </div>
                            <hr>
                            
                            <!-- /////////////////////////////////////////////////////// -->
                            <hr>
                            
                            <%-- <div>
                            	<a href="../restaurant/detail.do?no=${mvo.rNo }&page=${curpage>1?curpage-1:curpage }" class="btn btn-sm btn-primary">이전</a>
  									${curpage } page / ${totalpage } pages
  								<a href="../restaurant/detail.do?no=${mvo.rNo }&page=${curpage<totalpage?curpage+1:curpage }" class="btn btn-sm btn-primary">다음</a>
                            </div> --%>
                            
                            <div class="page">
                            <nav aria-label="...">
                                <ul class="pagination justify-content-center">
                                	<c:if test="${startPage>1 }">
	                                    <li class="page-item">
	                                        <a class="page-link" href="../restaurant/detail.do?no=${mvo.rNo }&page=${curpage>1?curpage-1:curpage }" aria-label="Previous"> 
	                                            <span aria-hidden="true">&laquo;</span>
	                                            <span class="sr-only">Previous</span>
	                                        </a>
	                                    </li>
                                    </c:if>
                                    <c:set var="type" value=""/>
						    	    <c:forEach var="i" begin="${startPage }" end="${endPage }">
						    	  	<c:if test="${curpage==i }">
						    	  		<c:set var="type" value="class=\"page-item active\""/> <%-- 현재페이지 파란색 --%>
						    	  	</c:if>
						    	  	<c:if test="${curpage!=i }">
						    	  	    <c:set var="type" value="class=page-item"/>
						    	  	</c:if>
						    	  		<li ${type }>
						    	  			<a class="page-link" href="../restaurant/detail.do?no=${mvo.rNo }&page=${i }">${i }</a>
						    	  		</li>
						    	  	</c:forEach>
						    	  	<c:if test="${endPage<allPage }">
    	    							<li class="page-item">
	                                        <a class="page-link" href="../restaurant/detail.do?no=${mvo.rNo }&page=${endPage+1 }" aria-label="Next"> 
	                                            <span aria-hidden="true">&raquo;</span> 
	                                            <span class="sr-only">Next</span>
	                                        </a>
                                   	    </li>
    	  							</c:if>
						    	  	
                                    <%-- <li class="page-item">
                                        <a class="page-link" href="#">1</a>
                                    </li>
                                    <li class="page-item active">
                                        <span class="page-link">2
                                            <span class="sr-only">(current)</span>
                                        </span>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="#">3</a>
                                    </li>
                                    <li class="page-item">
                                        <a class="page-link" href="../restaurant/detail.do?no=${mvo.rNo }&page=${curpage<totalpage?curpage+1:curpage }" aria-label="Next"> 
                                            <span aria-hidden="true">&raquo;</span> 
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </li> --%>
                                </ul>
                            </nav>
                        </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 responsive-wrap"> 
                    <!-- 예약 -->
                    <div class="reservation" data-date="${rvo.rReservedate }">
                        <div class="area_title">
                            <h5>예약</h5>
                        </div>
                        <div class="reserve_wrap">
                            <ul>
                            	<!-- ######################  메뉴  ####################### -->
                                <li class="menu">
                                    <label for="menu" class="reserve_tit">메뉴 선택</label>
                                    <select id="menu" class="custom-select" name="" > 
                                    	<option selected disabled hidden>======= 메뉴를 선택하세요. =======</option>
                                    	<c:forEach var="vo" items="${menuList }">
                                    		 <option>
                                    		 	${vo.mName }&nbsp;<span>(\</span>${vo.mPrice })
                                    		 </option>
                                    	</c:forEach>
                                    </select>
                                </li>
								<div id="row">
									<table id="menu-selected"></table>
								</div>
								<!-- ##################### 예약일 ######################## -->
                                <li class="reserve_date" style="display: none;">
                                    <!-- <label for="menu" class="reserve_tit">예약일</label>
                                    <input type="text" class="form-control" name="" id="reservation_date" title="" maxlength="8"
                                     autocapitalize="off" placeholder="예약일자" autocomplete="off"> -->
                                	
                                </li>
                                <!-- ##################### 시간선택 ######################## -->
                                <li class="reserve_time" style="display: none;"></li>
                                <!-- ##################### 인원선택 ######################## -->
                                <li class="reserve_inwon" style="display: none;"></li>
                                
                                
                                <div class="row">
                                	<table class="table">
                                		<tr>
											<td rowspan="1">
												<b id="restaurant-name">${mvo.rName }</b>
											</td>
										</tr>
										<tr>
											<td>
												<span style="color: #999">메뉴</span>
												<span id="restaurant-menu"></span>
											</td>
										</tr>
										<tr>
											<td>
												<span style="color: #999">예약일</span>
												<span id="restaurant-date"></span>
											</td>
										</tr>
										<tr>
											<td>
												<span style="color: #999">예약시간</span>
												<span id="restaurant-time"></span>
											</td>
										</tr>
										<tr>
											<td>
												<span style="color: #999">인원</span>
												<span id="restaurant-inwon"></span>
											</td>
										</tr>
                                	</table>
                                </div>
                                <a href="#" class="btn btn-outline-danger btn-reserve">예약하기</a>
                            </ul>
                        </div>
                    </div>
                    <!-- 지도 -->

                    <div class="contact-info mt-4">
                        <div class="area_title">
                            <h5>위치</h5>
                        </div>
                        <!-- 카카오맵 -->
                        <!-- <div class="map-wrap">
                            <div class="map-fix">
                                <div id="map" data-lat="40.674" data-lon="-73.945" data-zoom="14" 
                                style="width: 500px; height: 400px;"></div>
                            </div>
                        </div> -->
                        <!-- 카카오맵 -->
                        <div class="contact_wrap">
		                    <div id="map" data-lat="40.674" data-lon="-73.945" data-zoom="14" 
		                    	style="width: 350px; height: 250px;">
		                    </div>
                            <!-- <img src="../images/map.jpg" class="img-fluid" alt="#"> -->
                        <div class="address">
                            <span class="icon-location-pin"></span>
                            <p id="addr">${mvo.rAddr1 }</p>
                        </div>
                        <div class="address">
                            <span class="icon-screen-smartphone"></span>
                            <p>${mvo.rTel }</p><br>
                        </div>
                        <!-- <div class="address">
                            <span class="icon-clock"></span>
                            <p>Mon - Sun 09:30 am - 05:30 pm <br>
                                <span class="open-now">OPEN NOW</span></p>
                        </div> -->
                        <!-- <a href="#" class="btn btn-outline-danger btn-contact">메시지 보내기</a> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--//END INFO -->

    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <!-- Magnific popup JS -->
    <script src="../js/jquery.magnific-popup.js"></script>
    <!-- Swipper Slider JS -->
    <script src="../js/swiper.min.js"></script>
    <script>
        var swiper = new Swiper('.swiper-container', {
            slidesPerView: 3,
            slidesPerGroup: 3,
            loop: true,
            loopFillGroupWithBlank: true,
            pagination: {
                el: '.swiper-pagination',
                clickable: true,
            },
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });
    </script>
    <script>
        if ($('.image-link').length) {
            $('.image-link').magnificPopup({
                type: 'image',
                gallery: {
                    enabled: true
                }
            });
        }
        if ($('.image-link2').length) {
            $('.image-link2').magnificPopup({
                type: 'image',
                gallery: {
                    enabled: true
                }
            });
        }
    </script>
    <!-- Image Gallery Vanilla JavaScript-->
    <script type="text/JavaScript" src="js/detail_imageGallery.js"></script>

    <!-- jQuery Datepicker UI for reservation date -->
    <script src="../js/jquery-ui-1.12.1/jquery-ui.min.js"></script>
    <script src="../js/jquery-ui-1.12.1/datepicker-ko.js"></script>
    <script>
        $( function() {
        $( "#reservation_date" ).datepicker({
            changeMonth: true,
            changeYear: true,
            yearRange: "-100:+0"
        });
        } );
    </script>


    <!-- 이전에 남아있던 map 관련 소스 : 파악 중 -->
    <script>
        $(".map-icon").click(function() {
            $(".map-fix").toggle();
        });
    </script>

    <!-- Kakao Map Script -->
   <script>
    var container = document.getElementById('map');
    var options = {
        center: new kakao.maps.LatLng(33.450701, 126.570667),
        level: 3
    };

    var map = new kakao.maps.Map(container, options);
    </script>
    
    
    <!-- 주소로 지도 찾기 -->
    <script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	    mapOption = {
	        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
	        level: 3 // 지도의 확대 레벨
	    };  
	
	// 지도를 생성합니다    
	var map = new kakao.maps.Map(mapContainer, mapOption); 
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	var addr=$('#addr').text();
	// 주소로 좌표를 검색합니다
	geocoder.addressSearch(addr, function(result, status) {
		console.log(addr);
	
	    // 정상적으로 검색이 완료됐으면 
	     if (status === kakao.maps.services.Status.OK) {
	
	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
	
	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new kakao.maps.Marker({
	            map: map,
	            position: coords
	        });
	
	        // 인포윈도우로 장소에 대한 설명을 표시합니다
	        var infowindow = new kakao.maps.InfoWindow({
	            content: '<div style="width:150px;text-align:center;padding:6px 0;">${mvo.rName}</div>'
	        });
	        infowindow.open(map, marker); 
	
	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    } 
	});    
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
    
    <!-- 메뉴 선택 -->
    <script>
 /*    var index=1;
    $('#menu').change(function(){
    	//alert($(this).val());
    	//alert(menu.options[menu.selectedIndex].text);
    	var menu=document.getElementById("menu");
        $('#menu-selected').append(
        	'<tr id="m'+(index)+'">'
        	+'<td>'
        	+menu.options[menu.selectedIndex].text
        	+'</td>'
        	+'<td>'
        	+'<input type="button" value="x" hiddenno="m'+(index)+'" class="btn btn-sm btn-danger cancel">'
        	+'</td>'
        	+'</tr>'
        )
        console.log("index="+index);
        console.log($('.cancel').attr('hiddenno'));
        index++;
    });
    
    $('.cancel').click(function() {
    	//var mnum=$(this).attr('hiddenno');
    	//console.log(mnum);
    	//$('#'+mnum).remove();
    	$(this).parent('tr').remove();
    }) */
    
    </script>
	
	<!-- 메뉴선택 -->
	<script>
	$('#menu').change(function(){
		var menu=$(this).val();
		if(menu!=0) {
			$('.reserve_date').css("display","block");
			$('#restaurant-menu').append(menu+",")
		}
	});
	</script>
	
	
	<script>
	var rdate=$('.reservation').attr('data-date');
	$.ajax({
		type:'post',
		url:'../restaurant/detail_reservedate.do',
		data:{"rdate":rdate},
		success:function(res) {
			$('.reserve_date').html(res);
		}
	})
	</script>
	
</body>

</html>