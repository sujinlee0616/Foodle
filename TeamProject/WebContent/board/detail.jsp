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
  <div class="container pt-5">
    <div class="py-3">
      <div class="table-responsive">
        <!-- ============================ Start of 상세보기 ============================ -->
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
                  	<!-- 본문입니다 -->
                  ${vo.bcontent }
                </td>
              </tr>
              <tr>
                <td colspan="3">
                  <a class="bdDtBtn" id="copyUrl" href="">url 복사</a>
                </td>
                <td class="bdDtBtnGp">
                  <a class="bdDtBtn" href="../board/update.do">수정</a>
                  <a class="bdDtBtn" href="../board/delete.do">삭제</a>
                  <a class="bdDtBtn" href="../board/reply.do">답글</a>
                </td>
              </tr>
            </tbody>
        </table>
        <!-- ============================ End of 상세보기 ============================ -->
        <!-- ====================== Start of 댓글 영역 ======================  -->
        <div class="replyBoard cmt_area">
          <div>
            <h6 class="cmt_num py-2 px-1">##개의 댓글</h6>
          </div>
          <hr class="cmt_line">
          <!-- 댓글 작성 영역 -->
          <div class="write_cmt">
          	<!-- =============== 로그인 한 경우 =============== -->
          	<c:if test="${sessionScope.id!=null }">
	        	<div class="logged_in">
	              <form action="../board/write_comment.do"></form>
		              <div class="writer_info">
		                <span class="writer_nm">${sessionScope.id}</span>
		              </div>
		              <textarea name="cmt" class="cmt_input" placeholder="건전한 댓글 문화를 위해, 타인에게 불쾌감을 주는 욕설 또는 특정 계층/민족, 종교 등을 비하하는 내용은 입력을 지양해주세요."></textarea>
		              <button class="cmtBtn">등록</button>
	              </form>
	            </div>
            </c:if>
            <!-- =============== 로그인 안 한 경우 =============== -->
			<c:if test="${sessionScope.id==null }">
	            <div class="logged_in">
	              <textarea name="cmt" class="cmt_input disabled" placeholder="회원만 댓글을 작성할 수 있습니다. 댓글을 작성하고 싶으시다면 로그인 해주세요." disabled></textarea>
	              <button class="cmtBtn" disabled>등록</button>
	            </div>
          	</c:if>
          </div>
          <hr class="cmt_line">
          <!-- 댓글 노출 영역 -->
          <div class="cmt">
            <div class="writer_info">
              <span class="writer_nm">sjw****</span>
              <span class="write_time pl-1">2020.01.01 15:33</span>
            </div>
            <div class="cmt_content pt-2">
              병영이 교통이 좀 불편한 곳이라 아는 사람만 아는 곳인데. 세련되진 않았어도 만원이면 배불리 먹고 갈 수 있는 식당임. 확실히 식재료는 나쁜 것 쓰지 않는 것 같음. 시골 할머니들, 아줌마들이 운영하는 곳이라
              깨끗하고 깔끔함. 강진은 해남 옆에 있는 동네.
            </div>
          </div>
          <hr class="cmt_line">
          <div class="cmt">
            <div class="writer_info">
              <span class="writer_nm">ahe4****</span>
              <span class="write_time pl-1">2020.01.01 15:33</span>
            </div>
            <div class="cmt_content pt-2">
              둘이서저걸다먹을수있니.남은음식들저거어쩌거니.재활용해도문제.그냥버려도문제.저렇게많이나오는집들은가는거아니다.
            </div>
          </div>
        </div>
    <!-- ============================= End of 댓글 영역  ============================= -->
  </div>
</section>
<!--============================= End of BOARD DETAIL =============================-->

<!--============================= Start of BOARD LIST =============================-->
<section class="board-block light-bg">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <h5>자유게시판</h5>
        <p class="board_count">총 <span class="countNum">###개</span></p>
      </div>
    </div>
    <div class="pt-3 pb-2">
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
            <tr>
              <td class="text-center">-</td>
              <td><a href="detail.do">공지글입니다.</a><span class="badge badge-danger mx-2">공지</span></td>
              <td class="text-center">Otto</td>
              <td class="text-center">20/02/04 01:00</td>
              <td class="text-center">12</td>
            </tr>
            <tr>
              <td class="text-center">-</td>
              <td><a href="detail.do">데이터 연동 안된 글 - NEW 뱃지</a><span class="badge badge-primary mx-2">NEW</span></td>
              <td class="text-center">Otto</td>
              <td class="text-center">20/01/19 20:31</td>
              <td class="text-center">12</td>
            </tr>
            <tr>
              <td class="text-center">1</td>
              <td><a href="detail.do?no=${vo.bno }">제목</a></td>
              <td class="text-center">이름</td>
              <td class="text-center">
                2020.01.01
              </td>
              <td class="text-center">143</td>
            </tr>
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
    <!-- Pagination -->
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
<!--============================= End of BOARD LIST =============================-->


</body>
</html>
