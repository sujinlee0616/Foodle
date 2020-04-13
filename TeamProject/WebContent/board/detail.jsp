<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>  <!-- 날짜 형식 변환 -->
<!DOCTYPE html>
<html lang="ko">
<head>
</head>
<body>
    <!--============================= BOARD DETAIL =============================-->
    <section class="board-block light-bg">
        <div class="container py-5">
			<div class="py-3">
				
				<div class="table-responsive">
					<!-- ============================ 상세보기 내용 ============================ -->
					<table class="table freeboard" style="background-color: #FFFFFF;">						
							<tr>
								<td class="">${vo.bsubject }</td>
                            </tr>
                            <tr>
                                <!-- 본문 -->
                                <td class="content">
									${vo.bcontent }
                                </td>
                            </tr>
                    </table>

                     <!-- ============================ 하단 리스트 ============================ -->
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
								<td><a href="detail.do">오늘 등록된 글에는 NEW 뱃지를 드려요.</a><span class="badge badge-primary mx-2">NEW</span></td>
								<td class="text-center">Otto</td>
								<td class="text-center">20/01/19 20:31</td>
								<td class="text-center">12</td>
							</tr>
							<tr>
								<td class="text-center">9</td>
								<td><a href="detail.do">테이블 데이터 연동시켜야함.... 아직 작업 전 </a></td>
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
  
</body>

</html>
