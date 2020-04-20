<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@  taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

			<c:forEach var="vo" items="${list }">
				<div class="my_list_box">
					<div class="wrap_mylst">
						<div class="cards_wrap">
							<div class="card_row">
								<div class="card even used">
									<div class="card_header">
										<span>${vo.cname }</span>
									</div>
									<div class="card_body">
										<div class="card_body_inn">
											<a href="#" class="tit"> ${vo.cprice}원 </a>
											<ul class="detail">
												<li class="item"><span class="item_tit">사용기간:</span> 
												<em class="item_dsc">
												<fmt:formatDate value="${vo.cstartdate}" pattern="yyyy-MM-dd"/>
												~
												<fmt:formatDate value="${vo.cenddate }" pattern="yyyy-MM-dd"/>
												
													</em>
													</li>

											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
			</c:forEach>
		</div>
	</section>

</body>
</html>
