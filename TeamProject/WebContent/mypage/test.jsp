<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">

function test(imageName) {
    LoadingWithMask('loading.gif');
    setTimeout("closeLoadingWithMask()", 2000);
}
 
function LoadingWithMask(gif) {
    //화면의 높이와 너비를 구합니다.
    var maskHeight = $('#div01').height();
    var maskWidth  = $('#div01').width();
     
    //화면에 출력할 마스크를 설정해줍니다.
    var mask       ="<div id='mask' style='position:absolute; z-index:9000; background-color:#000000; display:none; left:0; top:0;'></div>";
    var loadingImg ='';
      
    loadingImg +="<img class='loading' src='"+ gif +"' style='width:100px; Height:100px; maingin-left:50px;'><br />";
    				
    //화면에 레이어 추가
    $('body')
        .append(mask)
 
    //마스크의 높이와 너비를 화면 것으로 만들어 전체 화면을 채웁니다.
    $('#mask').css({
            'width' : maskWidth,
            'height': maskHeight,
            'opacity' :'0.3'
    });
  
    //마스크 표시
    $('#mask').show();
  
    //로딩중 이미지 표시          
    $('#divContent').append(loadingImg);
    $('#loadingImg').show();
}
 
function closeLoadingWithMask() {
    $('#mask, .loading').hide();
    $('#mask, .loading').empty(); 
}
function scrollLast(height){

	$('#div01').scrollTop(height);

}



$('#div01').scroll(function(){

});

//추가될 이미지 태그를 문자열로 변수에 저장
var imgs = '<img src="https://t1.daumcdn.net/cfile/tistory/9940D03D5A584CCD0C" style="width:300px; Height:300px"><br />';
imgs += '<img src="https://t1.daumcdn.net/cfile/tistory/99F7323D5A584CCE1C" style="width:300px; Height:300px"><br />';
imgs += '<img src="https://t1.daumcdn.net/cfile/tistory/99E6DF3E5A584CD311" style="width:300px; Height:300px"><br />';
 
$(document).ready(function(){
    //스크롤 발생 이벤트 처리
    $('#div01').scroll(function(){
        var scrollT = $(this).scrollTop(); //스크롤바의 상단위치
        var scrollH = $(this).height(); //스크롤바를 갖는 div의 높이
        var contentH = $('#divContent').height(); //문서 전체 내용을 갖는 div의 높이
        if(scrollT + scrollH +1 >= contentH) { // 스크롤바가 아래 쪽에 위치할 때
        	test(); 
            scrollLast(contentH);
            $('#divContent').append(imgs);
   
        }
    });
});


</script>

</head>
<body>
	<div id="div01" style="overflow-y: scroll; width:800px; Height:800px">
		<a href='javascript:void(0);' onclick="test();"> 함수 </a>
		<div id="divContent">
			
			<img src="https://t1.daumcdn.net/cfile/tistory/9940D03D5A584CCD0C" style="width:300px; Height:300px"><br />
			<img src="https://t1.daumcdn.net/cfile/tistory/99F7323D5A584CCE1C" style="width:300px; Height:300px"><br />
			<img src="https://t1.daumcdn.net/cfile/tistory/9948143D5A584CD10A" style="width:300px; Height:300px"><br />
			
		</div>
	</div>
</body>
</html>