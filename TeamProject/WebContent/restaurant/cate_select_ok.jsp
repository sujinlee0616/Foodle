<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<%-- 

 1. big category 3개 각각 스몰 카테고리 사진 저장하여 i로 돌리기
 2. small category 사진 사이즈 변경
 3. small category 사진 넣기
 4. small category에 model or

 --%>
    
<!DOCTYPE html>
<html lang="ko">
<head>

    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="${pageContext.request.contextPath }/js/jquery-3.2.1.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath }/js/bootstrap.min.js"></script>


<!-- small 테마 맛집 페이지 CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/cate_select.css">
<link rel="stylesheet" href="../shadow/css/shadowbox.css">
<script type="text/javascript" src="../shadow/js/shadowbox.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script> 
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<style type="text/css">
figure img {
	
  max-width: 100%;
  height: auto !important;
	
}
</style>
<script type="text/javascript">

Shdowbox.init({
	
	player:['iframe']
	
});



$(function(){

	
	let tName=$('.themarow').attr("value");
	
	$('#choosenthema').click(functon(){
	
		let data=$(this).attr("data");
		
			
		Shadowbox.open({
		
			content:'../restaurant/catefind.do?t_DetailThema='+data,  //화면에 
			title:' ',
			player:'iframe',
			width:500,
			height:500
			
		})
		
	})
	
})
//스크립트 끝!!

</script>

</head>
<body>
		<form id="cateshadow" name="cateshadow" method="post">
           <div class="situation" >
                <c:forEach var="vo" items="${list }">	  	
                	<div class="themarow find-img-align" value="${vo.t_DetailThema }" id="choosenthema" data="${vo.t_DetailThema }">
                        <div class="col-md-12">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="${pageContext.request.contextPath }/images/situ3.png" id="smallthemaimg" class="img-fluid" alt="img13" />
	                                        <figcaption>
	                                            <p>${count }<p>
	                                        </figcaption>
	                                    </figure>
	                                </div>
	                            </div>
                        	</div>
                        <div style="text-align: center" class="themafont"><span id="thematitle">${vo.t_DetailThema }</span></div>
                    </div>
                   </a>
                  </c:forEach>  
             </div>
         </form>
</body>
</html>