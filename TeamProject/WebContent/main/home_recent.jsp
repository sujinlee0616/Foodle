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
    $('.cookie-preBtn').click(function(){
    	var curpage=Number($('.resentData').attr('data-curpage'));
    	
    	if(curpage>1)
    		curpage=curpage-1;
    	
    	$.ajax({
   	   		type:'post',
   	       	url:'../main/home_recent.do',
   	     	data:{"page":curpage},
   	       	success:function(res){
   	       		$('.recent-div').html(res);
   	       	}
   	   	})
    })
    
    $('.cookie-nextBtn').click(function(){
    	var curpage=Number($('.resentData').attr("data-curpage"));
        var totalpage=Number($('.resentData').attr("data-totalpage"));
    	
    	if(curpage<totalpage)
    		curpage=curpage+1;
    	
    	 $.ajax({
   	   		type:'post',
   	       	url:'../main/home_recent.do',
   	     	data:{"page":curpage},
   	       	success:function(res){
   	       		$('.recent-div').html(res);
   	       	}
   	   	})
    })
    // 찜 hover
    $('.mywish').hover(function(){
		$(this).css('cursor','pointer');
	})
	// 찜 
	$('.mywish').click(function() {
		let no=$(this).attr('value');
		//alert(no);
		$.ajax({
			type:'POST',
			url:'../restaurant/mywish.do',
			data:{"rno":no},
			success:function(res){
				console.log(res);    				
				if(res.trim()=='NOLOGIN') {
					alert("로그인 후 이용해주세요.");
				}
				else if(res.trim()=='myWishInsert'){ 
					$('#mywish_'+no).text('♥');
					location.reload();
				}
				else { // myWishDelete
					$('#mywish_'+no).text('♡');
					location.reload();
				}
			},
			error:function(e){
				alert(e);
			}
		});
	});
    
    
})
</script>
</head>
<body>
	<span class="resentData" data-curpage="${curpage }" data-totalpage="${totalpage }"/>
	<span class="cookie-preBtn" style="line-height: 8; font-size: 40pt;">
		<c:if test="${curpage>1 }">
			&lt;&nbsp;
		</c:if>
		<c:if test="${curpage==1 }">
			&nbsp;&nbsp;&nbsp;
		</c:if>
	</span>
	<c:forEach var="vo" items="${cookielist }">
     <div class="card" style="width: 28%; margin: 0 15px;">
         <a href="../restaurant/detail.do?no=${vo.rNo }">
             <img src="${vo.ivo.iLink }" class="card-img-top" alt="...">
         </a>
            <div class="featured-title-box">
                <a href="../restaurant/detail.do?no=${vo.rNo }">
                	<h6>${vo.rName }</h6>
                </a>
                <ul>
                    <li><span class="icon-location-pin"></span>
                        <p>${vo.rAddr1 }</p>
                    </li>
                    <li><span class="icon-screen-smartphone"></span>
                        <p>${vo.rTel }</p>
                    </li>
                </ul>
                <div class="bottom-icons">
                    <!-- <div class="closed-now">CLOSED NOW</div> -->
                    <div class="open-now">OPEN NOW</div>
                    <span class="mywish px-1" value="${vo.rNo }" id="mywish_${vo.rNo }" style="text-align:right; color:red; font-size:20px;">${vo.myWish }</span>
                </div>
            </div>
     </div>
    </c:forEach>
    <span class="cookie-nextBtn" style="line-height: 8; font-size: 40pt">
	    <c:if test="${curpage<totalpage }">
	    	&nbsp;&gt;
	    </c:if>
	    <c:if test="${curpage==totalpage }">
	    	&nbsp;&nbsp;&nbsp;
	    </c:if>
	</span>

</body>
</html>