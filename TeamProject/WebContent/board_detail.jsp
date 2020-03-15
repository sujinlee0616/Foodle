<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="author" content="Colorlib">
    <meta name="description" content="#">
    <meta name="keywords" content="#">
    <!-- Page Title -->
    <title>Foodle: 자유게시판</title>
    <!-- Board CSS -->
    <link rel="stylesheet" href="css/board.css">
</head>
<body>
    <!-- HEADER_SUB -->
    <jsp:include page="header_sub.jsp"></jsp:include>
    <!--============================= BOARD DETAIL =============================-->
    <section class="board-block light-bg">
        <div class="container py-5">
			<div class="py-3">
				<div class="table-responsive">
                    <!-- 해당 글 내용 -->
					<table class="table freeboard" style="background-color: #FFFFFF;">						
							<tr>
                                 <!-- 제목 -->
								<td class="">대구 대왕 닭칼국수 다 먹으면 100만원 준다고 합니다!!</td>
                            </tr>
                            <tr>
                                <!-- 본문 -->
                                <td class="content">
                                    <pre>
실제로 자신감 가지고 도전해봤는데
그릇 크기가 어마어마 합니다~
5인분 양이라고 하는데
먹성 좋으신분들도 왠만하면 다 실패할듯요....
대구 현풍닭칼국수 신천점 이에요~
                                    </pre>
                                </td>
                            </tr>
                    </table>

                     <!-- 하단에 리스트 노출 -->
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
								<td><a href="board_detail.jsp">공지글입니다.</a><span class="badge badge-danger mx-2">공지</span></td>
								<td class="text-center">Otto</td>
								<td class="text-center">20/02/04 01:00</td>
								<td class="text-center">12</td>
							</tr>
							<tr>
								<td class="text-center">10</td>
								<td><a href="board_detail.jsp">오늘 등록된 글에는 NEW 뱃지를 드려요.</a><span class="badge badge-primary mx-2">NEW</span></td>
								<td class="text-center">Otto</td>
								<td class="text-center">20/01/19 20:31</td>
								<td class="text-center">12</td>
							</tr>
							<tr>
								<td class="text-center">9</td>
								<td><a href="board_detail.jsp">대구 대왕 닭칼국수 다 먹으면 100만원 준다고 합니다!!</a></td>
								<td class="text-center">Thornton</td>
								<td class="text-center">20/01/16 07:39</td>
								<td class="text-center">56</td>
							</tr>
							<tr>
								<td class="text-center">8</td>
								<td><a href="board_detail.jsp">연매출 7억, 직접 짠 들기름을 발라 구운 옥돌 김 구이</a></td>
								<td class="text-center">the Bird</td>
								<td class="text-center">20/01/11 12:01</td>
								<td class="text-center">235</td>
							</tr>
							<tr>
								<td class="text-center">7</td>
								<td><a href="board_detail.jsp">평양냉면 뽀개기 62곳 정리</a></td>
								<td class="text-center">Otto</td>
								<td class="text-center">20/01/11 01:07</td>
								<td class="text-center">12</td>
							</tr>
							<tr>
								<td class="text-center">6</td>
								<td><a href="board_detail.jsp">아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트.. </a></td>
								<td class="text-center">Thornton</td>
								<td class="text-center">20/01/10 04:08</td>
								<td class="text-center">56</td>
							</tr>
							<tr>
								<td class="text-center">5</td>
								<td><a href="board_detail.jsp">아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트.. </a></td>
								<td class="text-center">the Bird</td>
								<td class="text-center">20/01/07 13:54</td>
								<td class="text-center">235</td>
							</tr>
							<tr>
								<td class="text-center">4</td>
								<td><a href="board_detail.jsp">아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트..</a></td>
								<td class="text-center">Otto</td>
								<td class="text-center">20/01/03 14:57</td>
								<td class="text-center">12</td>
							</tr>
							<tr>
								<td class="text-center">3</td>
								<td><a href="board_detail.jsp">아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트..</a></td>
								<td class="text-center">Thornton</td>
								<td class="text-center">20/01/03 10:47</td>
								<td class="text-center">56</td>
							</tr>
							<tr>
								<td class="text-center">2</td>
								<td><a href="board_detail.jsp">아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트..</a></td>
								<td class="text-center">the Bird</td>
								<td class="text-center">20/01/02 23:27</td>
								<td class="text-center">235</td>
							</tr>
							<tr>
								<td class="text-center">1</td>
								<td><a href="board_detail.jsp">아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트입니다 아주 긴 텍스트..</a></td>
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
    <!--============================= FOOTER =============================-->
    <jsp:include page="footer.jsp"></jsp:include>

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
