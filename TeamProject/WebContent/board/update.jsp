<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
					<form method=post action="update_ok.do">
					 <!-- action: insert_ok.jsp 에서 데이터 받아서 처리 -->
						 <div class="table-responsive">
							<table class="table replyBoard reply_insert">
							<tbody>
								<input type="hidden" name="bno" value=${vo.bno }>
								<tr>
									<th class="text-right success">이름</th>
									<td><input type="text" name="name" class="" required value=${vo.bname }></td>
								</tr>
								<tr>
									<th class="text-right success">제목</th>
									<td><input type="text" name="subject" required value=${vo.bsubject }></td>
								</tr>
								<tr>
									<th class="text-right success">내용</th>
									<td>
										<textarea type="text" name="content" class="update_ct" required>${vo.bcontent }</textarea>
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
							<table>
								<tr>
									<td class="text-center" colspan="2">
										<div class="board-btn-wrap">
											<input type="submit" value="글쓰기" class="btn btn-danger">
											<input type="button" value="취소" class="btn btn-cancle"
											onclick="javascript:history.back()">
										</div>
									</td>
								</tr>
							</table>
						 </div>
					</form>
			</div>
	        	
		</div>
    </section>
</body>
</html>