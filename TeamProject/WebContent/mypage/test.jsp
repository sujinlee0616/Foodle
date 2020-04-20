<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
/* $('#test').click(function(){
	$.ajax({
		type:'POST',
		url:'../mypage/test.do',
		data:{"no":1},
		success:function(res)
		{
			if(res==1){
				alert('aaa');
			}
			
			//$('#recipes').html(res);
		},
		error:function(e)
		{
			alert('bbb');
		}
	});
}) */

$(function(){
	
	$.ajax({
		type:'POST',
		url:'../mypage/test_ok.do',
		data:{"no":1},
		success:function(res)
		{
			var a = JSON.parse(res);
			alert(a);
			$('#test').json(res);
			
		},
		error:function(e)
		{
			alert('bbb');
		}
	});
}) 
</script>
</head>
<body>
	<h1>TEST</h1>
	<span id="test">test</span>
	
</body>
</html>


