<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  <!-- 날짜 형식 변환 -->
<jsp:useBean id="now" class="java.util.Date" />
<fmt:formatDate var="today" value="${now}" pattern="yyyy-MM-dd" />
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
<!--============================= BOARD LIST =============================-->
    <section class="board-block light-bg">
        <div class="container py-5">
			<div class="row">
                <div class="col-md-12">
                    <h5>자유게시판</h5>
                    <p class="board_count">총 <span class="countNum">${contentsCnt }개</span></p>
                </div>
            </div>
			<div class="py-3">
				<div class="table-responsive">
					<table class="table replyBoard reply_list" style="background-color: #FFFFFF;">						
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
							<c:forEach var="vo" items="${list }">
								<tr>
									<td class="text-center">${vo.bno }</td>
									<td>
										<!-- ============= Start of 제목  ============= -->
										<!-- 답글이면 아이콘 붙임 -->
										<c:if test="${vo.group_tab>0 }">
						  					<c:forEach var="i" begin="1" end="${vo.group_tab }" step="1">
						  						&nbsp;&nbsp;
						  					</c:forEach>
						  					<img src="../images/icon_reply.gif">
						  				</c:if>
										<a href="detail.do?page=${curpage }&bno=${vo.bno }">${vo.bsubject }</a>
										<!-- 공지 글에는 공지 플래그 붙임 -->
										<c:if test="${vo.notice=='y'}">
											<span class="badge badge-gray ml-2" id="">공지</span>
										</c:if>
										<!-- 오늘 올린글에는 new 플래그 붙임 -->
										<div style="display:none;">
											<fmt:formatDate var="reg_dt" value="${vo.regdate}" pattern="yyyy-MM-dd"/>
										</div>
										<c:if test="${today<=reg_dt}">
											<span class="badge badge-lightgray ml-2" id="">NEW</span>
										</c:if>
										<!-- ============= End of 제목  ============= -->
									</td>
									<td class="text-center">${vo.bname }</td>
									<td class="text-center">
										<fmt:formatDate value="${vo.regdate }" pattern="yyyy.MM.dd hh:mm"/>
									</td>
									<td class="text-center">${vo.hit }</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
            <div class="row">
                <div class="col-md-12">
                    <div class="inBtn pb-2">
                        <a class="insertBtn" href="../board/insert.do">
                            글쓰기
                        </a>
                    </div>
                </div>
            </div>
	        <!-- ================ Pagination ================ -->
			<div>
				<nav aria-label="...">
					<ul class="pagination justify-content-center">
						<c:if test="${startpage>10 }">
							<li class="page-item">
								<a class="page-link" href="../board/list.do?page=1" aria-label="Previous"> 
									<span aria-hidden="true">&laquo;</span>
								</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="../board/list.do?page=${startpage-10 }" aria-label="Previous"> 
									<span aria-hidden="true">&lt;</span>
								</a>
							</li>
						</c:if>
						<c:forEach var="i" begin="${startpage }" end="${endpage }">
							<c:if test="${i!=curpage }">
								<li class="page-item">
									<a class="page-link" href="../board/list.do?page=${i }">${i }</a>
								</li>
							</c:if>
							<c:if test="${i==curpage }">
								<li class="page-item active">
									<a class="page-link" href="../board/list.do?page=${i }">${i }</a>
								</li>
							</c:if>
						</c:forEach>
						<c:if test="${totalpage>10 && (totalpage-startpage)>9 }">
							<li class="page-item">
								<a class="page-link" href="../board/list.do?page=${endpage+1 }" aria-label="Next"> 
									<span aria-hidden="true">&gt;</span> 
								</a>
							</li>
							<li class="page-item">
								<a class="page-link" href="../board/list.do?page=${totalpage }" aria-label="Next"> 
									<span aria-hidden="true">&raquo;</span> 
								</a>
							</li>
						</c:if>
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
