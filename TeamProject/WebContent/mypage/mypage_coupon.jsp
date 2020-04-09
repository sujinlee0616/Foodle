<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
</head>
<body>
		 <section class="board-block light-bg">
        <div class="container coupon">
			<div class="row">
                <div class="col-md-6 pb-5">
                    <h5>보유 쿠폰</h5>
                </div>
            </div>
    	 <!-- START OF CATEGORY -->
            <div class="my_list_box">
            	<div class="my_tit">
            		<h3>내 쿠폰</h3>
            	</div>	
            	<div class="wrap_mylst">
            		<div class="cards_wrap">
            			<div class="card_row">
            				<div class="card even used">
            					<div class="card_header">
            					 	<span>첫 예약 시 할인 쿠폰</span>
            					</div>
            					<div class="card_body">
            						<div class="card_body_inn">
            							<a href="#" class="tit">
            							10,000원
            							</a>
            							<em class="booking_number">
            							쿠폰 코드:1234</em>
            							<ul class="detail">
            								<li class="item">
            									<span class="item_tit">사용기간:</span>
            									<em class="item_dsc">2020/03/15 ~ 2020/04/15</em>
            								</li>
            								<li class="item">
            									<span class="item_tit">유의사항:</span>
            									<em class="item_dsc">본 쿠폰은 다른 쿠폰과 사용 불가능</em>
            								</li>
            							</ul>
            		
            						</div>
            					</div>
            					<div class="card footer">            					
            					</div>
            				</div>
            				<div class="card used">
            					<div class="card_header">
            					 	<span>모든 메뉴 5,000원 할인 쿠폰</span>
            					</div>
            					<div class="card_body">
            						<div class="card_body_inn">
            							<a href="#" class="tit">
            							5,000원
            							</a>
            							<em class="booking_number">
            							쿠폰 코드:1234</em>
            							<ul class="detail">
            								<li class="item">
            									<span class="item_tit">사용기간:</span>
            									<em class="item_dsc">2020/03/10 ~ 2020/07/15</em>
            								</li>
            								<li class="item">
            									<span class="item_tit">유의사항:</span>
            									<em class="item_dsc">최소 주문 금액 10,000원 </em>
            								</li>
            							</ul>
            		
            						</div>
            					</div>
            					<div class="card footer">            					
            					</div>
            				</div>
            			</div>
            			<div class="card_row">
            				<div class="card even used">
            					<div class="card_header">
            					 	<span>푸들러 2월 VIP 할인 쿠폰</span>
            					</div>
            					<div class="card_body">
            						<div class="card_body_inn">
            							<a href="#" class="tit">
            							8,000원
            							</a>
            							<em class="booking_number">
            							쿠폰 코드:1234</em>
            							<ul class="detail">
            								<li class="item">
            									<span class="item_tit">사용기간:</span>
            									<em class="item_dsc">2020/03/15 ~ 2020/03/31</em>
            								</li>
            								<li class="item">
            									<span class="item_tit">유의사항:</span>
            									<em class="item_dsc">다른 쿠폰과 중복 사용 불가능</em>
            								</li>
            							</ul>
            		
            						</div>
            					</div>
            					<div class="card footer">            					
            					</div>
            				</div>
            				<div class="card used">
            					<div class="card_header">
            					 	<span>고객감사 3월 할인 쿠폰!</span>
            					</div>
            					<div class="card_body">
            						<div class="card_body_inn">
            							<a href="#" class="tit">
            							15,000원
            							</a>
            							<em class="booking_number">
            							쿠폰 코드:1234</em>
            							<ul class="detail">
            								<li class="item">
            									<span class="item_tit">사용기간:</span>
            									<em class="item_dsc">2020/03/10 ~ 2020/04/30</em>
            								</li>
            								<li class="item">
            									<span class="item_tit">유의사항:</span>
            									<em class="item_dsc">메뉴 3가지 주문시 이용 가능</em>
            								</li>
            							</ul>
            		
            						</div>
            					</div>
            					<div class="card footer">            					
            					</div>
            				</div>
            			</div>
    
            			</div>
            		</div>
            	</div>	
    		</div>
     <!-- END OF CATEGORY -->
        </div>
    </section>
    
    
    <!--//END COUPON  -->
    
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
  
</body>
</html>
    