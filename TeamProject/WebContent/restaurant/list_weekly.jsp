<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<jsp:useBean id="now" class="java.util.Date"></jsp:useBean>
<fmt:formatDate var="td" value="${now}" pattern="yyyyMMddkkmm" />
<c:set var="today" value="${fn:substring(td,8,10) }"></c:set>

<!DOCTYPE html>
<html lang="ko">
<head>
<style type="text/css">
select{
  width: 120px;
  padding: .2em .8em;
  font-family: inherit;
  background: url(../images/arrow.jpg) no-repeat 95% 50%;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  border: 2px solid #ff7474;
   border-radius : 15px;
   margin-left: 5px;
   margin-bottom: 5px;
   height : 40px;
   color: black;
   font-size: 17px;
   background-color: white;
}
#openBtn, #deliveryBtn {
  width: 75px;
  font-family: inherit;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  border: 2px solid #ff7474;
   border-radius : 15px;
   margin-left: 5px;
   margin-bottom: 5px;
   height : 40px;
   color: black;
   font-size: 17px;
   background-color: white;
}
.fblock{
	margin-right: 3px;
}

</style>
</head>
<body>
    <!--============================= LIST =============================-->
    <section class="list-block light-bg">
        <div class="container py-5">
            <!-- Menu Title -->
            <div class="row">
                <div class="col-md-5">
                    <div class="title" id="tCount">
                        <h5>주간 맛집</h5>
                        <p>총<span>${totalCount }</span>개의 맛집이 기다리고 있어요!!</p>
                    </div>
                </div>
            </div>
            <div class="row">
              <div class="filter mt-4" style="border:none;">
              	<select id="selectedArea" onchange="AreaFilter(this,'Area');">
					<option value="none" selected hidden disabled>지역선택</option>
					<option value="강북구">강북구</option>
					<option value="강남구">강남구</option>
					<option value="강동구">강동구</option>
					<option value="강서구">강서구</option>
					<option value="노원구">노원구</option>
					<option value="동대문구">동대문구</option>
					<option value="마포구">마포구</option>
					<option value="서초구">서초구</option>
					<option value="서대문구">서대문구</option>
					<option value="성동구">성동구</option>
					<option value="성북구">성북구</option>
					<option value="송파구">송파구</option>
					<option value="영등포구">영등포구</option>
					<option value="용산구">용산구</option>
					<option value="종로구">종로구</option>
					<option value="중구">중구</option>
				</select>
              	<select id="selectedMenu" onchange="MenuFilter(this,'Menu');">
					<option value="none" selected hidden disabled>업종선택</option>
					<option value="한식">한식</option>
					<option value="일식">일식</option>
					<option value="중식">중식</option>
					<option value="카페">카페</option>
					<option value="베이커리">베이커리</option>
					<option value="패스트푸드">패스트푸드</option>
					<option value="양식">양식</option>
					<option value="뷔페">뷔페</option>
					<option value="기타">기타/세계</option>
				</select>
				<select id="selectedSort" onchange="SortFilter(this,'Sort');">
					<option value="" selected hidden disabled>정렬순서</option>
					<option value="평점">평점</option>
					<option value="좋아요">좋아요</option>
					<option value="조회수">조회수</option>
					<option value="높은가격">높은 가격</option>
					<option value="낮은가격">낮은 가격</option>
				</select>
				<button id="openBtn" value="open">OPEN</button>
				<button id="deliveryBtn" value="deliveryOK">배달</button>
              </div>
            </div>
            <!-- 필터에서 선택한 메뉴등이 출력되는 곳 -->
            <div class="selected_filter mt-2 displaymenu" id="print">
              <p id="areaSort"></p>
              <p id="menuSort"></p>
              <p id="Sort"></p>
            </div>
	        <div class="row detail-options-wrap py-5" id="resInfo">
	                <!-- ============================= RESTAURANTS ============================= -->
		    	<c:forEach var="vo" items="${list }">
					  <div class="col-md-4 featured-responsive">
					    <div class="featured-place-wrap">
					      <a href="../restaurant/detail.do?no=${vo.rNo }">
					        <img src="${vo.ivo.iLink }" class="img-fluid" alt="#">
					        <span class="featured-rating">${vo.rScore }</span>
					      </a>
					      <div class="featured-title-box">
					          <a href="../restaurant/detail.do?no=${vo.rNo }">
					            <h6>${vo.rName }</h6>
					          </a>
					          <p>${vo.rType }</p> <span>• </span>
					          <p>리뷰 ${vo.rScoreCount }</p> <span> • </span>
					          <fmt:parseNumber var="sre" value="${vo.rScore }" integerOnly="true"/>
					          <c:choose>
					            <c:when test="${sre=='5' }">
					              <p><span>★★★★★</span></p>
					            </c:when>
					            <c:when test="${sre=='4' }">
					              <p><span>★★★★</span>★</p>
					            </c:when>
					            <c:when test="${sre=='3' }">
					              <p><span>★★★</span>★★</p>
					            </c:when>
					            <c:when test="${sre=='2' }">
					              <p><span>★★</span>★★★</p>
					            </c:when>
					            <c:when test="${sre=='1' }">
					              <p><span>★</span>★★★★</p>
					            </c:when>
					            <c:otherwise>
					              <p><span></span>★★★★★</p>
					            </c:otherwise>
					          </c:choose>
					          <ul>
					            <li><span class="icon-location-pin"></span>
					              <p>${vo.rAddr1 }</p>
					            </li>
					            <li><span class="icon-screen-smartphone"></span>
					              <p>${vo.rTel }</p>
					            </li>
					          </ul>
					          <div class="bottom-icons">
					            <c:choose>
					              <c:when test="${today>=vo.rvo.rOpentime && today<vo.rvo.rClosetime }">
					                <div class="open-now">OPEN NOW</div>
					              </c:when>
					              <c:otherwise>
					                <div class="closed-now">CLOSED NOW</div>
					              </c:otherwise>
					            </c:choose>
					            <span class="ti-heart"></span>
					          </div>
					      </div>
					    </div>
					  </div>
				</c:forEach>
	        </div>
	    	<div class="mt-3" id="pageInfo">
				<nav aria-label="...">
				  <ul class="pagination justify-content-center">
					<c:if test="${startPage>1 }">
						<li class="page-item">
							<%-- <a class="page-link" aria-label="Previous" href="../restaurant/list_weekly.do?page=${startPage-1 }"> --%>
							<a class="page-link" aria-label="Previous" href="#" onclick="previousPage(this)">
							  <input type="hidden" value="${startPage-1 }" id="startPage">
						      <span aria-hidden="true">&laquo;</span>
						      <span class="sr-only">Previous</span>
						    </a>
						</li>
					</c:if>
					<c:set var="type" value=""/>
					<c:forEach var="i" begin="${startPage }" end="${endPage }">
						<c:if test="${curPage==i }">
						  <c:set var="type" value="class=\"page-item active\""/>
						</c:if>
						<c:if test="${curPage!=i }">
						  <c:set var="type" value="class=page-item"/>
						</c:if>
						<li ${type }>
						  <a class="page-link" href="#" onclick="pageClick(this)">${i }</a>
						</li>
					</c:forEach>
					<c:if test="${endPage<allPage }">
					  <li class="page-item">
						<%-- <a class="page-link" href="../restaurant/list_weekly.do?page=${endPage+1 }" aria-label="Next"> --%>
						<a class="page-link" aria-label="Next" href="#" onclick="nextPage(this)">
						  <input type="hidden" value="${endPage+1 }" id="endPage">
						  <span aria-hidden="true">&raquo;</span> 
						  <span class="sr-only">Next</span>
						</a>
					  </li>
					</c:if>
				  </ul>
				</nav>
	    	</div>
        </div>
    </section>
    <!--//END DETAIL -->

    <!-- jQuery, Bootstrap JS. -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../js/jquery-3.2.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    
    <!-- 필터기능 -->
    <script type="text/javascript">
    var filter1; // menu
	var filter2; // sort
    var filter3; // open
    var filter4; // delivery
    var filter5; // area
    var today='<c:out value="${today}"/>';
    var tCount='<c:out value="${totalCount}"/>';
    
    function AreaFilter(a,type){
    	// 여기는 type으로 area가 온다
		var filt=a.value;
		console.log(type);
		
		filter5=filt;
		
		let msg="<span class='btn btn-xs fblock' style='background-color:#ff7474; color:#fff;' id='"+a.value+"' onClick=\"RemoveFilter(this,'"+type+"')\">"+a.value+"</span>";
		$('#areaSort').html(msg);
		
		msg1="<h5>주간 맛집</h5>&nbsp;<p>총<span>"+tCount+"</span>개의 맛집이 기다리고 있어요!!</p>"
		$('#tCount').html(msg1);
		console.log(tCount);
		
		$.ajax({
			type:'post',
			url:'../restaurant/list_weekly_filter.do',
			async:false,
			data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today},
			success:function(res)
			{
				$('#resInfo').html(res);
			}
		});
		$.ajax({
			type:'post',
			url:'../restaurant/list_weekly_filter_page.do',
			async:false,
			data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today},
			success:function(res)
			{
				$('#pageInfo').html(res);
			}
		});
	}
    
    function MenuFilter(m,type){
    	// 여기는 type으로 menu가 온다
		var filt=m.value;
		console.log(type);
		
		filter1=filt;
		
		let msg="<span class='btn btn-xs fblock' style='background-color:#ff7474; color:#fff;' id='"+m.value+"' onClick=\"RemoveFilter(this,'"+type+"')\">"+m.value+"</span>";
		$('#menuSort').html(msg);
		
		$.ajax({
			type:'post',
			url:'../restaurant/list_weekly_filter.do',
			async:false,
			data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today},
			success:function(res)
			{
				$('#resInfo').html(res);
			}
		});
		$.ajax({
			type:'post',
			url:'../restaurant/list_weekly_filter_page.do',
			async:false,
			data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today},
			success:function(res)
			{
				$('#pageInfo').html(res);
			}
		});
	}
    
	function SortFilter(s,type){
    	// 여기는 type으로 sort가 온다
		var filt=s.value;
		console.log(type);
		
		filter2=filt;
		
		let msg="<span class='btn btn-xs fblock' style='background-color:#ff7474; color:#fff;' id='"+s.value+"' onClick=\"RemoveFilter(this,'"+type+"')\">"+s.value+"</span>";
		$('#Sort').html(msg);
		
		$.ajax({
			type:'post',
			url:'../restaurant/list_weekly_filter.do',
			async:false,
			data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today},
			success:function(res)
			{
				$('#resInfo').html(res);
			}
		});
		$.ajax({
			type:'post',
			url:'../restaurant/list_weekly_filter_page.do',
			async:false,
			data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today},
			success:function(res)
			{
				$('#pageInfo').html(res);
			}
		});
	}
	
	$(function(){
		$('#openBtn').click(function(){
			var filt=$(this).val();
			console.log(filt);
			filter3=filt;
			
			if(filt=='open')
			{
				$.ajax({
					type:'post',
					url:'../restaurant/list_weekly_filter.do',
					async:false,
					data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today},
					success:function(res)
					{
						$('#resInfo').html(res);
					}
				});
				$.ajax({
					type:'post',
					url:'../restaurant/list_weekly_filter_page.do',
					async:false,
					data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today},
					success:function(res)
					{
						$('#pageInfo').html(res);
					}
				});
				
				$('#openBtn').val('close');
			}
			else
			{
				$.ajax({
					type:'post',
					url:'../restaurant/list_weekly_filter.do',
					async:false,
					data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today},
					success:function(res)
					{
						$('#resInfo').html(res);
					}
				});
				$.ajax({
					type:'post',
					url:'../restaurant/list_weekly_filter_page.do',
					async:false,
					data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today},
					success:function(res)
					{
						$('#pageInfo').html(res);
					}
				});
				
				$('#openBtn').val('open');
			}
			
			console.log($('#openBtn').val());
		})
		
		$('#deliveryBtn').click(function(){
			var filt=$(this).val();
			console.log(filt);
			
			if(filt=='deliveryOK')
			{
				filt='가능';
				filter4=filt;
				
				$.ajax({
					type:'post',
					url:'../restaurant/list_weekly_filter.do',
					async:false,
					data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today},
					success:function(res)
					{
						$('#resInfo').html(res);
					}
				});
				$.ajax({
					type:'post',
					url:'../restaurant/list_weekly_filter_page.do',
					async:false,
					data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today},
					success:function(res)
					{
						$('#pageInfo').html(res);
					}
				});
				
				$('#deliveryBtn').val('deliveryNO');
			}
			else
			{
				filt='불가능';
				filter4=filt;
				
				$.ajax({
					type:'post',
					url:'../restaurant/list_weekly_filter.do',
					async:false,
					data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today},
					success:function(res)
					{
						$('#resInfo').html(res);
					}
				});
				$.ajax({
					type:'post',
					url:'../restaurant/list_weekly_filter_page.do',
					async:false,
					data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today},
					success:function(res)
					{
						$('#pageInfo').html(res);
					}
				});
				
				$('#deliveryBtn').val('deliveryOK');
			}
			
			console.log($('#deliveryBtn').val());
		})
	})
	
	function RemoveFilter(r,type) {
		// 여기는 Menu, Sort 둘 중 하나가 올거야
		console.log(type);
		
		if(type=='Area')
		{
			filter5=null;
			
			$.ajax({
				type:'post',
				url:'../restaurant/list_weekly_filter.do',
				async:false,
				data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today},
				success:function(res)
				{
					$('#resInfo').html(res);
					var thisid = "#"+r.id;
					$(thisid).remove();
				}
			});
			$.ajax({
				type:'post',
				url:'../restaurant/list_weekly_filter_page.do',
				async:false,
				data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today},
				success:function(res)
				{
					$('#pageInfo').html(res);
				}
			});
		}
		
		if(type=='Menu')
		{
			filter1=null;
			
			$.ajax({
				type:'post',
				url:'../restaurant/list_weekly_filter.do',
				async:false,
				data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today},
				success:function(res)
				{
					$('#resInfo').html(res);
					var thisid = "#"+r.id;
					$(thisid).remove();
				}
			});
			$.ajax({
				type:'post',
				url:'../restaurant/list_weekly_filter_page.do',
				async:false,
				data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today},
				success:function(res)
				{
					$('#pageInfo').html(res);
				}
			});
		}
		
		if(type=='Sort')
		{
			filter2=null;
			
			$.ajax({
				type:'post',
				url:'../restaurant/list_weekly_filter.do',
				async:false,
				data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today},
				success:function(res)
				{
					$('#resInfo').html(res);
					var thisid = "#"+r.id;
					$(thisid).remove();
				}
			});
			$.ajax({
				type:'post',
				url:'../restaurant/list_weekly_filter_page.do',
				async:false,
				data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today},
				success:function(res)
				{
					$('#pageInfo').html(res);
				}
			});
		}
	}
	
	function pageClick(e) {
		var page=$(e).text();
		
		console.log(page);
		
		$.ajax({
			type:'post',
			url:'../restaurant/list_weekly_filter.do',
			async:false,
			data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today,"page":page},
			success:function(res)
			{
				$('#resInfo').html(res);
			}
		});
		
		$.ajax({
			type:'post',
			url:'../restaurant/list_weekly_filter_page.do',
			async:false,
			data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today,"page":page},
			success:function(res)
			{
				$('#pageInfo').html(res);
			}
		});
	}
	function nextPage(e) {
		var page=$('#endPage').val();
		console.log(page);
		
		$.ajax({
			type:'post',
			url:'../restaurant/list_weekly_filter.do',
			async:false,
			data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today,"page":page},
			success:function(res)
			{
				$('#resInfo').html(res);
			}
		});
		
		$.ajax({
			type:'post',
			url:'../restaurant/list_weekly_filter_page.do',
			async:false,
			data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today,"page":page},
			success:function(res)
			{
				$('#pageInfo').html(res);
			}
		});
	}
	
	function previousPage(e) {
		var page=$('#startPage').val();
		console.log(page);
		
		$.ajax({
			type:'post',
			url:'../restaurant/list_weekly_filter.do',
			async:false,
			data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today,"page":page},
			success:function(res)
			{
				$('#resInfo').html(res);
			}
		});
		
		$.ajax({
			type:'post',
			url:'../restaurant/list_weekly_filter_page.do',
			async:false,
			data:{"filter1":filter1,"filter2":filter2,"filter3":filter3,"filter4":filter4,"filter5":filter5,"today":today,"page":page},
			success:function(res)
			{
				$('#pageInfo').html(res);
			}
		});
	}
	
    </script>
</body>

</html>
