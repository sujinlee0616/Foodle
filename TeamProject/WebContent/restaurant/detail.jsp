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
                    <h5>피자디나폴리(Pizza di Napoli)</h5>
                    <p><span>\\\</span>\\</p>
                    <p class="reserve-description">정통 나폴리 방식의 화덕피자 전문점 “피자디나폴리”를 소개한다.</p>
                </div>
                <div class="col-md-6">
                    <div class="reserve-seat-block">
                        <div class="reserve-rating">
                            <span>4.1</span>
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
                            <div class="main-img">
                                <img src="images/featured1.jpg" id="current">
                            </div>
                            <div class="imgs">
                                <img src="images/featured1.jpg">
                                <img src="images/featured2.jpg">
                                <img src="images/featured3.jpg">
                                <img src="images/featured4.jpg">
                            </div>
                        </div>
                    </div>
                    <!-- 사진 하단 음식점 소개 -->
                    <div class="res_intro_wrap">
                        <p>정통 나폴리 방식의 화덕피자 전문점 “피자디나폴리”를 소개한다.
                            이곳은 신선한 재료를 사용하여 나폴리 전통방식으로 구운 피자를 맛볼 수 있다.
                            화덕에 구워 불맛 가득한 도우에 풍성한 토핑을 얹어 향과 풍미가 입안 가득 맴돈다.
                            한가지 맛만 먹기 아쉬운 사람들을 위해 반반피자도 준비되어 있어 두가지 맛을 먹어볼 수 있다.
                            전통방식 피자를 맛보고 싶은 사람이라면 이곳을 방문해보자.</p>
                    </div>
                    <!-- 상세정보 -->
                    <div class="detail_info my-4">
                        <div class="area_title">
                            <h5>상세정보</h5>
                        </div>
                        <table class="table">
                            <tbody>
                              <tr>
                                <th scope="row">영업시간</th>
                                <td>11:30 ~ 22:00<br>
                                    15:00~17:00 Break Time</td>
                              </tr>
                              <tr>
                                <th scope="row">휴일</th>
                                <td>연중무휴</td>
                              </tr>
                              <tr>
                                <th scope="row">좌석/룸/기타</th>
                                <td>50석</td>
                              </tr>
                              <tr>
                                <th scope="row">주류판매</th>
                                <td>판매</td>
                              </tr>
                              <tr>
                                <th scope="row">금연석</th>
                                <td>모두 금연석</td>
                              </tr>
                              <tr>
                                <th scope="row">예약정보</th>
                                <td>가능</td>
                              </tr>
                              <tr>
                                <th scope="row">화장실</th>
                                <td>남여개별 화장실 / 업소내위치</td>
                              </tr>
                              <tr>
                                <th scope="row">배달/포장</th>
                                <td>포장가능</td>
                              </tr>
                              <tr>
                                <th scope="row">주차</th>
                                <td>주차가능, 주차방법: 유료, 주차장소: 발렛파킹</td>
                              </tr>
                              <tr>
                                <th scope="row">기타시설</th>
                                <td>Wifi</td>
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
                                            <div class="stars-inner" style="width: 86%;"></div>  <!-- yellow star -->
                                        </div>
                                    </div>
                                    <p><span>4.5 / 5</span></p>
                                </div>
                                <div class="area_reviewNo col-md-4">
                                    <p>전체 리뷰 수</p>
                                    <img src="images/dialog.png">
                                    <p><span>34</span></p>
                                </div>
                            </div>
                            <hr>
                            <div class="customer-review_wrap">
                                <div class="customer-img">
                                    <img src="images/customer-img0.png" class="img-fluid" alt="#">
                                    <p>산호다</p>
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
                                                <div class="stars-inner" style="width: 86%;"></div>  <!-- yellow star -->
                                            </div>
                                            <p>2015/09/22</p>
                                        </div>
                                        <div class="customer-rating">4.3</div> <!-- 점수 -->
    
                                    </div>
                                    <p class="customer-text">남자친구랑 신사동 놀러갔다가 들린곳인데~ 피자가 고소하고 쫄깃쫄깃 너무 맛있었어요~
                                    </p>
                                    <ul>
                                        <li><img src="images/review-img1.jpg" class="img-fluid" alt="#"></li>
                                        <li><img src="images/review-img2.jpg" class="img-fluid" alt="#"></li>
                                        <li><img src="images/review-img3.jpg" class="img-fluid" alt="#"></li>
                                    </ul>
                                    <span>28명이 이 리뷰가 도움이 되었다고 응답했습니다.</span>
                                    <a href="#"><span class="icon-like"></span>도움이 됐어요</a>
                                </div>
                            </div>
                            <hr>
                            <div class="customer-review_wrap">
                                <div class="customer-img">
                                    <img src="images/customer-img0.png" class="img-fluid" alt="#">
                                    <p>어흥흥흥</p>
                                    <span>17 Reviews</span>
                                </div>
                                <div class="customer-content-wrap">
                                    <div class="customer-content">
                                        <div class="customer-review">
                                            <h6>화덕피자 좋아하시는 분들에게 추천!!</h6>
                                             <!-- (old) 별점 이미지-->
                                            <!-- <span></span>
                                            <span></span>
                                            <span></span>
                                            <span></span>
                                            <span class="round-icon-blank"></span> -->
                                            <!-- (new) 별점 이미지 -->
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
                            <div class="customer-review_wrap">
                                <div class="customer-img">
                                    <img src="images/customer-img0.png" class="img-fluid" alt="#">
                                    <p>어흥흥흥</p>
                                    <span>17 Reviews</span>
                                </div>
                                <div class="customer-content-wrap">
                                    <div class="customer-content">
                                        <div class="customer-review">
                                            <h6>화덕피자 좋아하시는 분들에게 추천!!</h6>
                                             <!-- (old) 별점 이미지-->
                                            <!-- <span></span>
                                            <span></span>
                                            <span></span>
                                            <span></span>
                                            <span class="round-icon-blank"></span> -->
                                            <!-- (new) 별점 이미지 -->
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
                            <div class="customer-review_wrap">
                                <div class="customer-img">
                                    <img src="images/customer-img0.png" class="img-fluid" alt="#">
                                    <p>어흥흥흥</p>
                                    <span>17 Reviews</span>
                                </div>
                                <div class="customer-content-wrap">
                                    <div class="customer-content">
                                        <div class="customer-review">
                                            <h6>화덕피자 좋아하시는 분들에게 추천!!</h6>
                                             <!-- (old) 별점 이미지-->
                                            <!-- <span></span>
                                            <span></span>
                                            <span></span>
                                            <span></span>
                                            <span class="round-icon-blank"></span> -->
                                            <!-- (new) 별점 이미지 -->
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
                            <div class="customer-review_wrap">
                                <div class="customer-img">
                                    <img src="images/customer-img0.png" class="img-fluid" alt="#">
                                    <p>어흥흥흥</p>
                                    <span>17 Reviews</span>
                                </div>
                                <div class="customer-content-wrap">
                                    <div class="customer-content">
                                        <div class="customer-review">
                                            <h6>화덕피자 좋아하시는 분들에게 추천!!</h6>
                                             <!-- (old) 별점 이미지-->
                                            <!-- <span></span>
                                            <span></span>
                                            <span></span>
                                            <span></span>
                                            <span class="round-icon-blank"></span> -->
                                            <!-- (new) 별점 이미지 -->
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
                            <div class="page">
                            <nav aria-label="...">
                                <ul class="pagination justify-content-center">
                                    <li class="page-item">
                                        <a class="page-link" href="#" aria-label="Previous"> 
                                            <span aria-hidden="true">&laquo;</span>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                    </li>
                                    <li class="page-item">
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
                                        <a class="page-link" href="#" aria-label="Next"> 
                                            <span aria-hidden="true">&raquo;</span> 
                                            <span class="sr-only">Next</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 responsive-wrap">                 
                    <!-- 예약 -->
                    <div class="reservation">
                        <div class="area_title">
                            <h5>예약</h5>
                        </div>
                        <div class="reserve_wrap">
                            <ul>
                                <li class="menu">
                                    <label for="menu" class="reserve_tit">메뉴 선택</label>
                                    <select id="menu" class="custom-select" name=""> 
                                        <option value="">메뉴를 선택하세요.</option>
                                        <option value="">탕수육</option>
                                        <option value="">짬뽕</option>
                                        <option value="">짜장면</option>
                                      </select>
                                </li>
                                <li class="reserve_date">
                                    <label for="menu" class="reserve_tit">예약일</label>
                                    <input type="text" class="form-control" name="" id="reservation_date" title="" maxlength="8"
                                     autocapitalize="off" placeholder="예약일자" autocomplete="off">
                                </li>
                                <a href="#" class="btn btn-outline-danger btn-reserve">예약하기</a>
                            </ul>
                        </div>
                    </div>
                    <!-- 지도 -->

                    <div class="contact-info mt-4">
                        <div class="area_title">
                            <h5>위치</h5>
                        </div>
                        <!-- 카카오맵 : 왜 안나오는지 확인 필요-->
                        <!-- <div class="map-wrap">
                            <div class="map-fix">
                                <div id="map" data-lat="40.674" data-lon="-73.945" data-zoom="14"></div>
                            </div>
                        </div> -->
                        <!-- 지도 이미지 (임시) -->
                        <div class="contact_wrap">
                            <img src="images/map.jpg" class="img-fluid" alt="#">
                        <div class="address">
                            <span class="icon-location-pin"></span>
                            <p> 서울 강남구 압구정로4길 13-17 2층</p>
                        </div>
                        <div class="address">
                            <span class="icon-screen-smartphone"></span>
                            <p>(02) 512-3109</p>
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
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- Magnific popup JS -->
    <script src="js/jquery.magnific-popup.js"></script>
    <!-- Swipper Slider JS -->
    <script src="js/swiper.min.js"></script>
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
    <script src="./js/jquery-ui-1.12.1/jquery-ui.min.js"></script>
    <script src="./js/jquery-ui-1.12.1/datepicker-ko.js"></script>
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

</body>

</html>
