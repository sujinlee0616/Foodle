<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
    
<%-- 
	2020 04 16 수정 test!
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


<!--  테마 맛집 페이지 CSS -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/cate_select.css">
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>

<style type="text/css">
figure img {
	
  max-width: 100%;
  height: auto !important;
	
}
</style>

</head>
<body>

           	<div class="situation" >
                	
                <c:forEach var="vo" items="${list }">	
                	
                	<div class="themarow find-img-align" value="${vo.t_DetailThema }">
                        <div class="col-md-12">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="${pageContext.request.contextPath }/images/situ3.png" class="img-fluid" alt="img13" />
	                                        <figcaption>
	                                            <p></p>
	                                        </figcaption>
	                                    </figure>
	                                </div>
	                            </div>
                        	</div>
                        <div style="text-align: center" class="themafont"><span>${vo.t_DetailThema }</span></div>
                    </div>
                    
                  </c:forEach>  
                    
                    
                    
              <!--      
                    
                    
                    <div class="themarow find-img-align">
                        <div class="col-md-12">
                       	 	<a href="main.jsp?mode=1">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="${pageContext.request.contextPath }/images/situ3.png" class="img-fluid" alt="img13" />
	                                        <figcaption>
	                                            <p></p>
	                                        </figcaption>
	                                    </figure>
	                                </div>
	                            </div>
                        	</div>
                        <div style="text-align: center" class="themafont"><span>가족과 함께</span></div>
                        </a>
                    </div>
                    
                    
                    <div class="themarow find-img-align">
                        <div class="col-md-12">
                       	 	<a href="main.jsp?mode=1">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="${pageContext.request.contextPath }/images/situ3.png" class="img-fluid" alt="img13" />
	                                        <figcaption>
	                                            <p></p>
	                                        </figcaption>
	                                    </figure>
	                                </div>
	                            </div>
                        	</div>
                        <div style="text-align: center" class="themafont"><span>가족과 함께</span></div>
                        </a>
                    </div>
                    
                    
                    <div class="themarow find-img-align">
                        <div class="col-md-12">
                       	 	<a href="main.jsp?mode=1">
	                            <div class="find-place-img_wrap">
	                                <div class="grid">
	                                    <figure class="effect-ruby">
	                                        <img src="${pageContext.request.contextPath }/images/situ3.png" class="img-fluid" alt="img13" />
	                                        <figcaption>
	                                            <p></p>
	                                        </figcaption>
	                                    </figure>
	                                </div>
	                            </div>
                        	</div>
                        <div style="text-align: center" class="themafont"><span>가족과 함께</span></div>
                        </a>
                    </div>
                    
                  --> 
                		
                			
                	
                	</div>




</body>
</html>