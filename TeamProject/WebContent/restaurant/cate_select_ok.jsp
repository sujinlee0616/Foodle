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
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript">
//중간테마 눌렀을때 ajax로 모든 리스트 출력 예정!!
$(function(){

		
		//디폴트 페이지 주기!
		var detailThema=$('.resultThemaList').attr("data-detailThema"); // 가족모임
		var infoThema=$('.resultThemaList').attr("data-tInfo");
		
		
		$.ajax({
			
			type:'post',
			url:'../restaurant/result_thema_list.do',
			data:{"no":1,"detailThema_col":detailThema,"infoThema_col":infoThema},
			success:function(res){
				
				$('#result_thema_list').html(res);
				
			}
		})
		//디폴트 ajax끝!

		
		$('resultThemaList').click(function(){
			
			//클릭했을 때 no의 현재 값을  가져와야 하므로    no를 위에서 전역으로 빼지 말고 클릭함수 안에서 var을 생성해야한다!!!
			var no=$(this).attr("value");
			var detailThema=$('.resultThemaList').attr("data-detailThema"); // 가족모임
			var infoThema=$('.resultThemaList').attr("data-tInfo");
				
			
			$.ajax({
				
				type:'post',
				url:'../restaurant/result_thema_list.do',
				data:{"no":no,"detailThema_col":detailThema,"infoThema_col":infoThema},
				success:function(res){
					
					$('#result_thema_list').html(res);
					
				}
			})
			//디폴트 ajax끝!

		})
		//선택함수 끝!
		
		
		
})
//스트립트 끝!!



</script>
 
<style type="text/css">

figure img {
	
  max-width: 100%;
  height: auto !important;
	
}
</style>
</head>
<body>
      <div class="situation" >
         <c:forEach var="vo" items="${list }" varStatus="status">
              <div class="themarow find-img-align resultThemaList" value="${status.index }" data-detailThema="${vo.t_DetailThema }" data-tInfo="${vo.t_Info }">
                   <div class="col-md-12">
	                    <div class="find-place-img_wrap">
	                          <div class="grid">
	                               <figure class="effect-ruby">
	                                   <img src="${pageContext.request.contextPath }/images/situ3.png" class="img-fluid" alt="img13" />
	                                      <figcaption>
	                                      <p><p>
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