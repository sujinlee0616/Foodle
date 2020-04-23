<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
$(function(){
	
	$('.rdate').hover(function(){
		$(this).css("cursor","pointer");
	},function(){
		$(this).css("cursor","none");
	})
	
	/* $('#year').change(function(){
		var year=$(this).val();
		var month=$('#month').val();
		$.ajax({
			type:'post',
			url:'../restaurant/detail_reservedate.do',
			data:{"year":year,"month":month},
			success:function(res) {
				$('.reserve_date').html(res);
			}
		})
	})
	$('#month').change(function(){
		var year=$('#year').val();
		var month=$(this).val();
		$.ajax({
			type:'post',
			url:'../restaurant/detail_reservedate.do',
			data:{"year":year,"month":month},
			success:function(res) {
				$('.reserve_date').html(res);
			}
		})
	}) */
	
	$('.rdate').click(function(){
		var year=$('.y-m-date').attr('y-date');
		var month=$('.y-m-date').attr('m-date');
		var day=$(this).text();
		
		var rday=year+"년 "+month+"월 "+day+"일";
		$('#restaurant-date').text(rday);
		
		$.ajax({
			type:'post',
			url:'../restaurant/detail_reservetime.do',
			data:{"tno":day},
			success:function(res){
				$('#movie-time').html(res);
			}
		})
	})
	
});
</script>
</head>
<body>
	<label for="menu" class="reserve_tit">예약일</label>
	<div class="row" style="margin: 0px auto; width: 300px;">
		<h6 class="text-center y-m-date" y-date="${year }" m-date="${month }">${year }년 ${month }월</h6>
		<%-- <table class="table">
			<tr>
				<td>
					<select name="year" id="year">
						<c:forEach var="i" begin="2020" end="2030">
							<c:if test="${i==year }">
								<option seleced>${i }</option>
							</c:if>
							<c:if test="${i!=year }">
								<option>${i }</option>
							</c:if>
						</c:forEach>
					</select>년도&nbsp;
					<select name="month" id="month">
						<c:forEach var="i" begin="1" end="12">
							<c:if test="${i==month }">
								<option seleced>${i }</option>
							</c:if>
							<c:if test="${i!=month }">
								<option>${i }</option>
							</c:if>
						</c:forEach>
					</select>월
				</td>
			</tr>
		</table> --%>
		<table class="table">
			<tr>
				<c:forEach var="sw" items="${strWeek }">
					<th class="text-center danger">${sw }</th>
				</c:forEach>
			</tr>
		
			<c:set var="week" value="${week }"/>
			<c:forEach var="i" begin="1" end="${lastday }">
				<c:if test="${i==1 }"> <!-- 공백 -->
					<tr>
						<c:forEach var="j" begin="1" end="${week }">
							<td>&nbsp;</td>
						</c:forEach>
				</c:if>
				
				<c:if test="${i==days[i-1] }">
					<td class="text-center success rdate" style="background-color: #ff9999;">${i }</td>
				</c:if>
				<c:if test="${i!=days[i-1] }">
					<td class="text-center">${i }</td>
				</c:if>
				
				<c:set var="week" value="${week+1 }"/> <!-- week++이 안되므로 c:set을 이용하여 week를 1씩 증가한다 -->
				<c:if test="${week>6 }">
					<c:set var="week" value="0"/>
					</tr>
					<tr>
				</c:if>				
			</c:forEach>
			</tr>				
		</table>
	</div>
</body>
</html>