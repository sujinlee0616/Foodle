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
$(function() {
	/* $('.adult-minus').click(function(){
		var inwon=Number($('#adult-inwon').text());
		if(inwon>0){
			inwon=inwon-1;
			$('#adult-inwon').text(inwon);
		}
	})
	
	$('.adult-plus').click(function(){
		var inwon=Number($('#adult-inwon').text());
		inwon=inwon+1;
		$('#adult-inwon').text(inwon);
	})
	
	$('.child-minus').click(function(){
		var inwon=Number($('#child-inwon').text());
		if(inwon>0){
			inwon=inwon-1;
			$('#child-inwon').text(inwon);
		}
	})
	
	$('.child-plus').click(function(){
		var inwon=Number($('#child-inwon').text());
		inwon=inwon+1;
		$('#child-inwon').text(inwon);
	}) */
	
	$('#inwonBtn').click(function(){
		var ss=$('#ss').val();
		var s=$('#s').val();
		
		if(ss==0 && s==0) {
			alert("인원을 선택하세요.");
			return;
		}
		
		var res="";
		var price1=0;
		var price2=0;
		if(ss!=0) {
			res+='[성인]:'+ss+" ";
		}
		if(s!=0) {
			res+='[소인]:'+s;
		}
		var p=price1+price2;
		
		$('#restaurant-inwon').text(res);
		$('#respeople').val(res); // detail의 hidden
		
		$('.btn-reserve').attr('disabled', false);
	})
})
</script>
</head>
<body>
	<label for="menu" class="reserve_tit" style="color: #ff7474">인원선택</label>
	<br>
	
	<!-- <span>성인&nbsp;</span>
	<div class="btn btn-outline-danger btn-sm adult-minus">-</div>
	<span id="adult-inwon">0</span>
	<div class="btn btn-outline-danger btn-sm adult-plus">+</div>
	&nbsp;
	<span>소인&nbsp;</span>
	<div class="btn btn-outline-danger btn-sm child-minus">-</div>
	<span id="child-inwon">0</span>
	<div class="btn btn-outline-danger btn-sm child-plus">+</div> -->
	
	
	<table class="table">
		<tr>
			<td>성인:
				<select id="ss" class="input-sm">
					<c:forEach var="i" begin="0" end="100">
						<option>${i }</option>
					</c:forEach>
				</select>
			</td>
			<td>소인:
				<select id="s" class="input-sm">
					<c:forEach var="i" begin="0" end="100">
						<option>${i }</option>
					</c:forEach>
				</select>
			</td>
			<td>
				<input type="button" value="선택" id="inwonBtn" class="btn btn-sm btn-danger">
			</td>
		</tr>
	</table>
</body>
</html>