<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
</head>
<body>
	<!--============================= IMAGE SWIPER =============================-->
    <div>
        <!-- Swiper -->
        <div class="swiper-container">
            <div class="swiper-wrapper">

                <div class="swiper-slide">
                    <a href="../images/reserve-slide2.jpg" class="grid image-link">
                        <img src="../images/reserve-slide2.jpg" class="img-fluid" alt="#">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="../images/reserve-slide1.jpg" class="grid image-link">
                        <img src="../images/reserve-slide1.jpg" class="img-fluid" alt="#">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="../images/reserve-slide3.jpg" class="grid image-link">
                        <img src="../images/reserve-slide3.jpg" class="img-fluid" alt="#">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="../images/reserve-slide1.jpg" class="grid image-link">
                        <img src="../images/reserve-slide1.jpg" class="img-fluid" alt="#">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="../images/reserve-slide2.jpg" class="grid image-link">
                        <img src="../images/reserve-slide2.jpg" class="img-fluid" alt="#">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="../images/reserve-slide3.jpg" class="grid image-link">
                        <img src="../images/reserve-slide3.jpg" class="img-fluid" alt="#">
                    </a>
                </div>
            </div>
            <!-- Add Pagination -->
            <div class="swiper-pagination swiper-pagination-white"></div>
            <!-- Add Arrows -->
            <div class="swiper-button-next swiper-button-white"></div>
            <div class="swiper-button-prev swiper-button-white"></div>
        </div>
    </div>
    <!--//END BOOKING -->
    <!--============================= BOARD =============================-->
    <section class="board-block light-bg">
        <div class="container py-5">
			<div class="row">
                <div class="col-md-6">
                    <h5>자유게시판</h5>
                    <p>총 <span>###개</span></p>
                </div>
            </div>
			<div class="py-3">
				<div class="table-responsive">
					<table class="table freeboard" style="background-color: #FFFFFF;">						
						<thead class="thead-dark">
							<tr style="background-color: #E0E0E0;">
								<th scope="col" style="width:7%;" class="text-center">No.</th>
								<th scope="col" style="width:53%;" class="text-center">제목</th>
								<th scope="col" style="width:15%;" class="text-center">이름</th>
								<th scope="col" style="width:15%;" class="text-center">작성일</th>
								<th scope="col" style="width:10%;" class="text-center">조회수</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="text-center">-</td>
								<td><a href="detail.do">공지글입니다.</a><span class="badge badge-danger mx-2">공지</span></td>
								<td class="text-center">Otto</td>
								<td class="text-center">20/02/04 01:00</td>
								<td class="text-center">12</td>
							</tr>
							<tr>
								<td class="text-center">10</td>
								<td><a href="detail.do">데이터 연동 안된 글 - NEW 뱃지</a><span class="badge badge-primary mx-2">NEW</span></td>
								<td class="text-center">Otto</td>
								<td class="text-center">20/01/19 20:31</td>
								<td class="text-center">12</td>
							</tr>
							<tr>
								<td class="text-center">9</td>
								<td><a href="detail.do">데이터 연동 안된 글</a></td>
								<td class="text-center">Thornton</td>
								<td class="text-center">20/01/16 07:39</td>
								<td class="text-center">56</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div>
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
    </section>
    <!--//END BOARD -->
    
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
  
</body>

</html>
