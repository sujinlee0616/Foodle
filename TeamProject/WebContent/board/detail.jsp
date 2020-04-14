<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- 날짜 형식 변환 -->
<!DOCTYPE html>
<html lang="ko">
<head>
</head>
<body>
	<!--============================= Start of BOARD DETAIL =============================-->
	<section class="board-block light-bg">
	  <div class="container py-5">
	<div class="py-3">
	  
	  <div class="table-responsive">
	    <!-- ============================ 상세보기 내용 ============================ -->
	    <table class="table replyBoard reply_detail">				
	        <thead>
	            <tr>
	                <th class="subject px-3 py-3" colspan="4">${vo.bsubject }</td>
	            </tr>
	            <tr>
	                <td>
	                  <span class="bd_detail_dt">작성자: ${vo.bname } </span>
	                </td>
	                <td>
	                  <span class="td_del">|</span>
	                  <span class="bd_detail_dt px-2">
					        작성일: <fmt:formatDate value="${vo.regdate }" pattern="yyyy.MM.dd hh:mm"/>
					  </span>
	                </td>
	                <td>
	                  <span class="td_del">|</span>
	                  <span class="bd_detail_dt px-2">조회수: ${vo.hit } </span>
	                </td>

	                <td>
	                  <span class="td_del">|</span>
	                  <span class="bd_detail_dt px-2">답글 수: ${vo.depth }</span>
	                </td>
	            </tr>
	        </thead>
	        <tbody>
	          <tr>
	            <!-- 본문 -->
	            <td class="content py-4 px-4" colspan="4">
	            	${vo.bcontent }
	            </td>
	          </tr>
	          <tr>
	            <td colspan="3">
	              <a href="">url 복사</a>
	              <a href="">카카오톡</a>
	              <a href="">페이스북</a>
	              <a href="">트위터</a>
	            </td>
	            <td class="bdDtBtn">
	              <a href="../board/list.do">목록</a>
	              <a href="../board/reply.do">답글</a>
	              <a href="../board/update.do">수정</a>
	              <a href="../board/delete.do">삭제</a>
	            </td>
	          </tr>
	        </tbody>
	    </table>
	    <!-- ====================== 댓글 : 아직 데이터 연동 안 함 ======================  -->
	    <div class="replyBoard comment_area mb-3">
	      <div>
	        <h6 class="comment_num mt-1 mx-1">##개의 댓글</h6>
	      </div>
	      <hr>
	      <div class="comment">
	        <div class="writer_info">
	          <span>닉네임</span>
	          <span>(2020.01.01 15:33)</span>
	        </div>
	        <div class="commnt_content">
	          살짝 지나가는 아픔이었길 바라겠습니다.앞으로도 오래오래 좋은 글과 말씀으로 대중에게 힘이 되어주시길 부탁드리겠습니다.
	        </div>
	      </div>
	    </div>
	<!-- ============================= End of BOARD DETAIL ============================= -->
	               
	<!-- ============================ 하단 리스트 ============================ -->
	    <table class="table replyBoard reply_list">						
	      <thead class="thead-dark">
	        <tr>
	          <th scope="col" style="width:7%;" class="text-center">No.</th>
	          <th scope="col" style="width:53%;" class="text-center">제목</th>
	          <th scope="col" style="width:15%;" class="text-center">작성자</th>
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
