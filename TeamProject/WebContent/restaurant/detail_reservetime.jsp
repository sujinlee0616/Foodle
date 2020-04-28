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
	/* $('.times').hover(function(){
		$(this).css("background-color","#eee");
	},function(){
		$(this).css("background-color","#fff");
	}) */
	
	$('.times').click(function(){
		var time=$(this).text();
		var h=time.substring(0,time.indexOf(":"));
		var m=time.substring(time.indexOf(":")+1);
		var t=h+"시 "+m+"분";
		
		$('#restaurant-time').text(t);
		$('.reserve_inwon').css("display","block");
		$('#restime').val(t); // detail의 hidden
		$('.times').css("background-color","#fff");
		$(this).css("background-color","#eee");
		
		$.ajax({
			type:'post',
			url:'../restaurant/detail_reserveinwon.do',
			success:function(res){
				$('.reserve_inwon').html(res);
			}
		})
		
	})
})
</script>

</head>
<body>
	<label for="menu" class="reserve_tit" style="color: #ff7474">시간선택</label>
	<table class="table">
		<tr>
			<c:set var="i" value="0"/>
			<c:forEach var="time" items="${tlist }">
				<td class="times">${time }</td>
				<c:set var="i" value="${i+1 }"/>
				<c:if test="${i%4==0 }"><tr></tr></c:if>
			</c:forEach>
		</tr>
	</table>
</body>
</html>