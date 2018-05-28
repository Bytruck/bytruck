<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="vo.Board" %>
<%@page import="vo.PageBean" %>

<%@page import="java.util.List" %>
<%@taglib prefix="p" uri="http://java.sun.com/jsp/jstl/core"%>
<p:set var="pb" value="${requestSocpe.PageBean }"/>
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
		var page;
		if($(this).text() == '«'){
			page=${pb.startPage}-1;
		}else if($(this).text() =='»'){
			page=${pb.endPage}+1;
		}else{
			page=$(this).text();
		}
		$.ajax({
			url:"boardlist.do",
			method:'get',
			data:'page='+page,
			success:function(data){
				$('qna.jsp').empty();
				$('qna.jsp').jsp(data.trim());
			}
		});
		return false;
	});
	$('.pagination a').each(function(index, element){
		if($(element).text() == '${pb.currentPage}'){
			$(element).addClass('active');
		}	
	});
	$("button.btn btn-default").click(function(){
		$ajax({
			url:'qna_write.jsp',
			success:function(data){
				$('qna.jsp').empty();
				$('qna_write.jsp').jsp(data.trim());
			}
		});
		return false;
	});
	
});
</script>
<body>
<br>
<br>
<br>
<br>
<br>
<div class="container">
	<h2>Q&A</h2>
	<br>
	<br>

  <table class="table table-bordered" style="text-align:center">
  
    <board>
    <div class="board">
      <tr>      	
        <th style="width: 10%; text-align:center"> 번호</th>
        <th style="width: 50%; text-align:center"> 제목</th>
        <th style="width: 20%; text-align:center">등록일</th>
        <th style="width: 10%; text-align:center"> 조회</th>		    
      </tr>
     </div>
    </board>
    <p:set var="list" value="${pb.list }"/>
	<p:forEach items="${list}" var="b">
	 <board>
    <div class="board">
 	 <p:forEach begin="1" end="${b.level }">▷</p:forEach>
 	 ${b.board_seq}
 	  <tr>      	
        <th style="width: 10%; text-align:center">${b.no }</th>
        <th style="width: 50%; text-align:center"> ${b.title }</th>
        <th style="width: 20%; text-align:center">${b.date }</th>
        <th style="width: 10%; text-align:center"> ${b.views }</th>
		    
      </tr>
 	 </div>
 	 
    
  </table>
  </p:forEach>
  <div class="bt" style="margin-left: 10%">
<button type="button" class="btn btn-default"><a href="<%=root%>/board/qna_write.jsp">글쓰기</a></button>  
</div>
  				<!-- END TOP FAQs -->
<div class="row">
		<div class="pagination" style="width: 400px;margin-left: 30%;">
	<p:set var="startPage" value="${pb.startPage }"/>
	<p:set var="endPage" value="${pb.endPage }"/>
	<p:if test="${startPage > 1 }">
		 <li class="active"><a href="qna.jsp">1</a></li>
	</p:if>
	<p:forEach begin="${startPage }" end="${endPage }" var="i">
		 <li><a href="#">${i }</a></li>
	</p:forEach>
	<p:if test="${endPage < pb.totalPage }">
		<li><a href="#">&raquo;</a></li>
	</p:if>
		</div>	
</div>
</div>
<!-- FOOTER -->
	<div>
      <footer>
      		<jsp:include page = "/template/footer.jsp"/>
      </footer>
     </div>

</body>








