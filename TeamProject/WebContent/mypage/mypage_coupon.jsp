
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@  taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
</head>
<body>

	<div class="my_list_box">
		<div class="wrap_mylst">
			<div class="cards_wrap">
				<div class="card_row">
				<input type="hidden" id="couponCurpage" value=${page }>
				<input type="hidden" id="couponTotal" value=${total }>
					<c:forEach var="vo" items="${list }">
						<div class="card even used"
							style="float: left; margin-left: 60px; margin-top: 20px">
							<div class="card_header">
								<span>${vo.CName }</span>
							</div>
							<div class="card_body">
								<div class="card_body_inn">
									<p class="tit"> ${vo.CPrice}원 </p>
									<ul class="detail">
										<li class="item"><span class="item_tit">사용기간:</span> <em
											class="item_dsc"> <fmt:formatDate
													value="${vo.CStartdate}" pattern="yyyy-MM-dd" /> ~ <fmt:formatDate
													value="${vo.CEnddate }" pattern="yyyy-MM-dd" />
													<p><a href="../restaurant/detail.do?no=${vo.RNo }">${vo.mvo.rName }</a></p>
										</em></li>
									</ul>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>
	</div>


</body>
</html>
