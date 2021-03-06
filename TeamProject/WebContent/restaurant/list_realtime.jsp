<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
</head>
<body>
    <!--============================= LIST =============================-->
    <section class="list-block light-bg">
        <div class="container py-5">
            <!-- Menu Title -->
            <div class="row ">
                <div class="col-md-5">
                    <div class="title">
                        <h5>실시간 맛집</h5>
                        <p>총 <span>###개</span></p>
                    </div>
                </div>
            </div>
            <!-- CUSTOM FILTER (like hashtag) -->
            <div class="row">
                <div class="col-md-12">
                    <div class="filter mt-4">
                        <div class="filter_row area">
                            <div class="filter_head">
                                <h6>지역</h6>
                            </div>
                            <div class="scrollbar_content">
                                <div class="filter_data">
                                    <ul class="finder_list">
                                        <li>
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000003" title="강남">
                                                <span class="text_over">
                                                    강남<span class="num _category_count" style="display: none">2,209,887</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000008" title="강북">
                                                <span class="text_over">
                                                    강북<span class="num _category_count" style="display: none">12,364</span>
                                                </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                                <!-- finder_data에서 강남 or 강북 선택 시 나타남 -->
                                <!-- <div class="finder_cell hidden">
                                                    <h4 class="finder_cell_tit">
                                                        <a href="#" id="_catSummaryBack" data-parent-cat="" data-parent-cat-nm=""><span class="tit_pre">이전카테고리로 이동</span>강남
                                                    </h4>
                                                    <ul class="finder_list">
                                                        <li class="">
                                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000097" title="가로수길">
                                                                <span class="text_over">
                                                                    가로수길<span class="num _category_count" style="">72</span>
                                                                </span>
                                                            </a>
                                                        </li>
                                                        <li class="">
                                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000097" title="강남역">
                                                                <span class="text_over">
                                                                    강남역<span class="num _category_count" style="">95</span>
                                                                </span>
                                                            </a>
                                                        </li>
                                                        <li class="">
                                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000097" title="관악/신림">
                                                                <span class="text_over">
                                                                    관악/신림<span class="num _category_count" style="">105</span>
                                                                </span>
                                                            </a>
                                                        </li>
                                                    </ul>
                                                </div> -->
                            </div>
                        </div>
                        <div class="filter_row food_cat">
                            <div class="filter_head">
                                <h6>업종</h6>
                            </div>
                            <div class="scrollbar_content">
                                <div class="filter_data">
                                    <ul class="finder_list">
                                        <li class="">
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000003" title="한식">
                                                <span class="text_over">
                                                    한식<span class="num _category_count" style="display: none">2,209,887</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000008" title="양식">
                                                <span class="text_over">
                                                    양식<span class="num _category_count" style="display: none">12,364</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000008" title="일식">
                                                <span class="text_over">
                                                    일식<span class="num _category_count" style="display: none">12,364</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000008" title="중식">
                                                <span class="text_over">
                                                    중식<span class="num _category_count" style="display: none">12,364</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000008" title="패스트푸드">
                                                <span class="text_over">
                                                    패스트푸드<span class="num _category_count" style="display: none">12,364</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000008" title="베이커리">
                                                <span class="text_over">
                                                    베이커리<span class="num _category_count" style="display: none">12,364</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000008" title="퓨전음식">
                                                <span class="text_over">
                                                    퓨전음식<span class="num _category_count" style="display: none">12,364</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000008" title="뷔페">
                                                <span class="text_over">
                                                    뷔페<span class="num _category_count" style="display: none">12,364</span>
                                                </span>
                                            </a>
                                        </li>
                                        <li class="">
                                            <a href="#" data-filter-name="cat_id" data-filter-value="50000008" title="카페/술집">
                                                <span class="text_over">
                                                    카페/술집<span class="num _category_count" style="display: none">12,364</span>
                                                </span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="selected_filter mt-2">
                        <a href="#" class="selected" data-filter-name="food_cat" data-filter-value="108602"
                            data-nclick-code="rcc.reset" data-filter-action="nclick" title="양식">강남역<span class="del">X</span></a>
                        <a href="#" class="selected" data-filter-name="food_cat" data-filter-value="108602"
                            data-nclick-code="rcc.reset" data-filter-action="nclick" title="양식">양식<span class="del">X</span></a>
                        <a href="#" class="selected" data-filter-name="food_cat" data-filter-value="108602"
                            data-nclick-code="rcc.reset" data-filter-action="nclick" title="양식">카페/술집<span class="del">X</span></a>
                    </div>
                </div>
            </div>
            <div class="row detail-options-wrap py-5">
                <!-- ============================= RESTAURANTS ============================= -->
                <div class="col-md-4 featured-responsive">
                    <div class="featured-place-wrap">
                        <a href="main.jsp?mode=5">
                            <img src="../images/featured1.jpg" class="img-fluid" alt="#">
                            <span class="featured-rating">6.5</span>
                            <div class="featured-title-box">
                                <h6>브루클린더버거조인트</h6>
                                <p>양식(수제버거) </p> <span>• </span>
                                <p>리뷰 12개</p> <span> • </span>
                                <p><span>\\\\</span>\</p>
                                <ul>
                                    <li><span class="icon-location-pin"></span>
                                        <p>서울 서초구 서래로2길 27</p>
                                    </li>
                                    <li><span class="icon-screen-smartphone"></span>
                                        <p>(02) 533-7180</p>
                                    </li>
                                </ul>
                                <div class="bottom-icons">
                                    <div class="closed-now">CLOSED NOW</div>
                                    <span class="ti-heart"></span>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4 featured-responsive">
                    <div class="featured-place-wrap">
                        <a href="main.jsp?mode=5">
                            <img src="../images/featured2.jpg" class="img-fluid" alt="#">
                            <span class="featured-rating">9.5</span>
                            <div class="featured-title-box">
                                <h6>사모님돈까스</h6>
                                <p>한식 </p> <span>• </span>
                                <p>리뷰 3개</p> <span> • </span>
                                <p><span>\\</span>\\\</p>
                                <ul>
                                    <li><span class="icon-location-pin"></span>
                                        <p>서울 마포구 와우산로 39-13</p>
                                    </li>
                                    <li><span class="icon-screen-smartphone"></span>
                                        <p>(02) 337-2207</p>
                                    </li>
                                </ul>
                                <div class="bottom-icons">
                                    <div class="open-now">OPEN NOW</div>
                                    <span class="ti-heart"></span>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4 featured-responsive">
                    <div class="featured-place-wrap">
                        <a href="main.jsp?mode=5">
                            <img src="../images/featured3.jpg" class="img-fluid" alt="#">
                            <span class="featured-rating">3.2</span>
                            <div class="featured-title-box">
                                <h6>스트릿(strEAT) 여의도점</h6>
                                <p>기타/세계-퓨전푸드 </p> <span>• </span>
                                <p>리뷰 3개</p> <span> • </span>
                                <p><span>\\\</span>\\</p>
                                <ul>
                                    <li><span class="icon-location-pin"></span>
                                        <p>서울 영등포구 여의대로 66 KTB 투...</p>
                                    </li>
                                    <li><span class="icon-screen-smartphone"></span>
                                        <p>(02) 761-7672</p>
                                    </li>
                                </ul>
                                <div class="bottom-icons">
                                    <div class="closed-now">CLOSED NOW</div>
                                    <span class="ti-heart"></span>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4 featured-responsive">
                    <div class="featured-place-wrap">
                        <a href="main.jsp?mode=5">
                            <img src="../images/featured1.jpg" class="img-fluid" alt="#">
                            <span class="featured-rating">6.5</span>
                            <div class="featured-title-box">
                                <h6>브루클린더버거조인트</h6>
                                <p>양식(수제버거) </p> <span>• </span>
                                <p>리뷰 12개</p> <span> • </span>
                                <p><span>\\\\</span>\</p>
                                <ul>
                                    <li><span class="icon-location-pin"></span>
                                        <p>서울 서초구 서래로2길 27</p>
                                    </li>
                                    <li><span class="icon-screen-smartphone"></span>
                                        <p>(02) 533-7180</p>
                                    </li>
                                </ul>
                                <div class="bottom-icons">
                                    <div class="closed-now">CLOSED NOW</div>
                                    <span class="ti-heart"></span>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4 featured-responsive">
                    <div class="featured-place-wrap">
                        <a href="main.jsp?mode=5">
                            <img src="../images/featured2.jpg" class="img-fluid" alt="#">
                            <span class="featured-rating">9.5</span>
                            <div class="featured-title-box">
                                <h6>사모님돈까스</h6>
                                <p>한식 </p> <span>• </span>
                                <p>리뷰 3개</p> <span> • </span>
                                <p><span>\\</span>\\\</p>
                                <ul>
                                    <li><span class="icon-location-pin"></span>
                                        <p>서울 마포구 와우산로 39-13</p>
                                    </li>
                                    <li><span class="icon-screen-smartphone"></span>
                                        <p>(02) 337-2207</p>
                                    </li>
                                </ul>
                                <div class="bottom-icons">
                                    <div class="open-now">OPEN NOW</div>
                                    <span class="ti-heart"></span>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
                <div class="col-md-4 featured-responsive">
                    <div class="featured-place-wrap">
                        <a href="main.jsp?mode=5">
                            <img src="../images/featured3.jpg" class="img-fluid" alt="#">
                            <span class="featured-rating">3.2</span>
                            <div class="featured-title-box">
                                <h6>스트릿(strEAT) 여의도점</h6>
                                <p>기타/세계-퓨전푸드 </p> <span>• </span>
                                <p>리뷰 3개</p> <span> • </span>
                                <p><span>\\\</span>\\</p>
                                <ul>
                                    <li><span class="icon-location-pin"></span>
                                        <p>서울 영등포구 여의대로 66 KTB 투...</p>
                                    </li>
                                    <li><span class="icon-screen-smartphone"></span>
                                        <p>(02) 761-7672</p>
                                    </li>
                                </ul>
                                <div class="bottom-icons">
                                    <div class="closed-now">CLOSED NOW</div>
                                    <span class="ti-heart"></span>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
            
        </div>
    </section>
    <!--//END DETAIL -->

    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>   
</body>

</html>
