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
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>


<style type="text/css">
figure img {
	
  max-width: 100%;
  height: auto !important;
	
}
</style>
<script type="text/javascript">
$(function(){

	
	let tName=$('.themarow').attr("value"); 
	
	$.ajax({
	
		type:'post',
		url:'../restaurant/cate_select_ok.do',
		data:{"tName":tName},
		success:function(res){
			
			
			
		},
		error:function(request,status,error){
			
			alert("code = "+ request.status + " message = " + request.responseText + " error = " + error);
		}
		

		
	})
	//ajax끝!!
	
	
	
	
	
	
	
})
//스크립트 끝!!

</script>

</head>
<body>
           	<div class="situation" >
               	
                <c:forEach var="vo" items="${list }">	
                	
                	<div class="themarow find-img-align" value="${vo.t_DetailThema }">
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
                   
                  </c:forEach>  
                    
             </div>
</body>
</html>