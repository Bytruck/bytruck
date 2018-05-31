<%@page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" isELIgnored="false" %>
<%@page import="vo.Board" %>
<%@page import="vo.PageBean" %>
<%@page import="java.util.List" %>
<%@taglib prefix="p" uri="http://java.sun.com/jsp/jstl/core"%>
<p:set var="pb" value="${requestScope.PageBean }"/>

<%@ page buffer="100kb" %>
<%String root = request.getContextPath();%>
<!DOCTYPE html>

    <title>qna.jsp</title>  

  <header>
 	<jsp:include page = "/template/header.jsp"/>
  </header>
 <style>
 	div.bt{
 		padding-left: 83%;
 		padding-top: 1%;
 	}
 </style>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>

$(function(){

	
	$('.pagination a').click(function(){
		console.log("asdf");
		var page;
		if($(this).text() == '«'){
			page=${pb.startPage}-1;
		}else if($(this).text() =='»'){
			page=${pb.endPage}+1;	
		}else{
			page=$(this).text();
		}		
		$.ajax({
			url:"boardlist.bt",
			method:'get',
			data:'page='+page,
			success:function(data){
				$('#ccc').empty();
				$('#ccc').html(data);
			}
		});
		return false;
	});
	//# -> id, . -> class , 'div' -> 태그
	$('.pagination a').each(function(index, element){
		if($(element).text() == '${pb.currentPage}'){
			$(element).addClass('active');
		}	
	});
	$("button.btn btn-default").click(function(){
		$ajax({
			url:'qna_write.jsp',
			success:function(data){
				$('section').empty();
				$('section').jsp(data.trim());
				
			}
		});
		return false;
	});
	
});


</script>
<body>

<div class="container" style="margin-top: 10%;" id="ccc">

	<h2>Q&A</h2>
	<br>
	<br>
	
   <div id="list">
  	 <div id="board">
  	  <table class="table table-bordered" style="text-align:center">
      <tr>      	
        <th style="width: 10%; text-align:center"> 번호</th>
        <th style="width: 50%; text-align:center"> 제목</th>
        <th style="width: 20%; text-align:center">등록일</th>
        <th style="width: 10%; text-align:center"> 조회</th>		
         
      </tr>
    
    
    <p:set var="list" value="${pb.list}"/>
	<p:forEach var="b" items="${list}">

	
 	 <%-- <p:forEach begin="1" end="${b.level}">▷</p:forEach> --%>
 	 
 	  <tr>      	
        <td>${b.no}</td>
        <td> ${b.title}</td>
        <td>${b.posted}</td>
        <td> ${b.views}</td>		 
      </tr>
      
      </p:forEach>
     </table>
     </div> 
     </div>



  
  <div class="bt" style="margin-left: 10%">
<button type="button" class="btn btn-default"><a href="<%=root%>/board/qna_write.jsp">글쓰기</a></button>  
</div>
  				<!-- END TOP FAQs -->

	<div class="pagination" style="width: 400px;margin-left: 30%;">
		<p:set var="startPage" value="${pb.startPage }"/>
		<p:set var="endPage" value="${pb.endPage }"/>
	
		<p:if test="${startPage > 1 }">
			 <a href="#">&laquo;</a>
		</p:if>
		<!-- 페이지 이동 처리, 클릭 이벤트 처리만 하면 된다. -->
		<p:forEach begin="${startPage}" end="${endPage}" var="i">
			 <a href="#">${i}</a>
		</p:forEach>
		
		<p:if test="${endPage < pb.totalPage }">
			<a href="#">&raquo;</a>
		</p:if>
	</div>

</div>

<!-- FOOTER -->
	<div>
      <footer>
      		<jsp:include page = "/template/footer.jsp"/>
      </footer>
     </div>

</body>





