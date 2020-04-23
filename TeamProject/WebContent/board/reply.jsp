<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section class="board-block light-bg">
        <div class="container py-5">
			<div class="row">
                <div class="col-md-6">
                    <h5>글쓰기</h5>
                </div>
            </div>
			<div class="py-3">
					<form method="post" action="../board/reply_ok.do">
						 <div class="table-responsive">
							<table class="table replyBoard reply_insert">
							<tbody>
								<input type="hidden" name="pno" value="${pno }">
								<tr>
									<th class="text-right success">이름</th>
									<td><input type="text" name="name" required autofocus></td>
								</tr>
								<tr>
									<th class="text-right success">제목</th>
									<td><input type="text" name="subject" required></td>
								</tr>
								<tr>
									<th class="text-right success">내용</th>
									<td>
										<textarea type="text" name="content" class="update_ct" required></textarea>
									</td>
								</tr>
								<tr>
									<th class="text-right success">비밀번호</th>
									<td>
										<input type="password" name="pwd" required value="">
									</td>
								</tr>
							</tbody>
							</table>
						 </div>
						 <div class="board-btn-wrap">
						 	<input type="button" value="취소" class="btn btn-cancle" onclick="javascript:history.back()">
							<input type="submit" value="작성 완료" class="btn btn-danger">		
						 </div>
					</form>
			</div>
		</div>
    </section>
</body>
</html>