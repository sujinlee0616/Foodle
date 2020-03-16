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
                    <a href="images/reserve-slide2.jpg" class="grid image-link">
                        <img src="images/reserve-slide2.jpg" class="img-fluid" alt="#">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="images/reserve-slide1.jpg" class="grid image-link">
                        <img src="images/reserve-slide1.jpg" class="img-fluid" alt="#">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="images/reserve-slide3.jpg" class="grid image-link">
                        <img src="images/reserve-slide3.jpg" class="img-fluid" alt="#">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="images/reserve-slide1.jpg" class="grid image-link">
                        <img src="images/reserve-slide1.jpg" class="img-fluid" alt="#">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="images/reserve-slide2.jpg" class="grid image-link">
                        <img src="images/reserve-slide2.jpg" class="img-fluid" alt="#">
                    </a>
                </div>
                <div class="swiper-slide">
                    <a href="images/reserve-slide3.jpg" class="grid image-link">
                        <img src="images/reserve-slide3.jpg" class="img-fluid" alt="#">
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
								<td><a href="main.jsp?mode=7">공지글입니다.</a><span class="badge badge-danger mx-2">공지</span></td>
								<td class="text-center">Otto</td>
								<td class="text-center">20/02/04 01:00</td>
								<td class="text-center">12</td>
							</tr>
							<tr>
								<td class="text-center">10</td>
								<td><a href="main.jsp?mode=7">오늘 등록된 글에는 NEW 뱃지를 드려요.</a><span class="badge badge-primary mx-2">NEW</span></td>
								<td class="text-center">Otto</td>
								<td class="text-center">20/01/19 20:31</td>
								<td class="text-center">12</td>
							</tr>
							<tr>
								<td class="text-center">9</td>
								<td><a href="main.jsp?mode=7">대구 대왕 닭칼국수 다 먹으면 100만원 준다고 합니다!!</a></td>
								<td class="text-center">Thornton</td>
								<td class="text-center">20/01/16 07:39</td>
								<td class="text-center">56</td>
							</tr>
							<tr>
								<td class="text-center">8</td>
								<td><a href="main.jsp?mode=7">연매출 7억, 직접 짠 들기름을 발라 구운 옥돌 김 구이</a></td>
								<td class="text-center">the Bird</td>
								<td class="text-center">20/01/11 12:01</td>
								<td class="text-center">235</td>
							</tr>
							<tr>
								<td class="text-center">7</td>
								<td><a href="main.jsp?mode=7">평양냉면 뽀개기 62곳 정리</a></td>
								<td class="text-center">Otto</td>
								<td class="text-center">20/01/11 01:07</td>
								<td class="text-center">12</td>
							</tr>
							<tr>
								<td class="text-center">6</td>
								<td><a href="main.jsp?mode=7">아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트.. </a></td>
								<td class="text-center">Thornton</td>
								<td class="text-center">20/01/10 04:08</td>
								<td class="text-center">56</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<td><a href="main.jsp?mode=7">아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트.. </a></td>
								<td class="text-center">the Bird</td>
								<td class="text-center">20/01/07 13:54</td>
								<td class="text-center">235</td>
							</tr>
							<tr>
								<td class="text-center">4</td>
								<td><a href="main.jsp?mode=7">아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트..</a></td>
								<td class="text-center">Otto</td>
								<td class="text-center">20/01/03 14:57</td>
								<td class="text-center">12</td>
							</tr>
							<tr>
								<td class="text-center">3</td>
								<td><a href="main.jsp?mode=7">아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트..</a></td>
								<td class="text-center">Thornton</td>
								<td class="text-center">20/01/03 10:47</td>
								<td class="text-center">56</td>
							</tr>
							<tr>
								<td class="text-center">2</td>
								<td><a href="main.jsp?mode=7">아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트..</a></td>
								<td class="text-center">the Bird</td>
								<td class="text-center">20/01/02 23:27</td>
								<td class="text-center">235</td>
							</tr>
							<tr>
								<td class="text-center">1</td>
								<td><a href="main.jsp?mode=7">아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트..</a></td>
								<td class="text-center">Otto</td>
								<td class="text-center">19/12/31 14:54</td>
								<td class="text-center">12</td>
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
  
</body>

</html>
