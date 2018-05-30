<%@page import="vo.PageBean"%>
<%@page import="vo.Board"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.board {
	padding-top: 10%;
}
.board .page-header {
	margin-top: 0;
}
</style>
<title>notice.jsp</title>
<body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<div class="row">
		<div class="container-fluid">
			<div class="col-lg-12">
				<header>
					<%@include file="/template/header.jsp"%>
				</header>
			</div>
		</div>
	</div>
<script>
 $(function(){
	 $('#detail').click(function(){
		 console.log("클릭");
			$.ajax({
				method:'POST',
				url:'<%=root%>/boarddetail.bt',
				data:{num:'2'},
				success: function(data){
					alert("성공");
					$('.board').html(data);
				}
			});
	});
});
 $(function(){
     $('button.btndelete').click(function(){
         console.log("aaa");
/*             $.ajax({
             method:'GET',
             url:'boarddelete.bt',
             data:{no:'2'},
             success:function(data){
                 data=data.trim();    
             }
         }); */
     });
 });


</script>
	<div class="board">
		<div class="row">
			<div class="container">
				<!-- BREADCRUMBS -->
				<ol class="breadcrumb link-accent separator-arrow">
					<li><a href="<%=root%>/index.jsp" title="Home"><i
							class="fa fa-home"></i></a></li>
					<li><a href="<%=root%>/brand/summary.jsp" title="Home">개요</a></li>
					<li class="active">공지사항</li>
				</ol>
				<!-- END BREADCRUMBS -->
						<div class="page-header">
							<div class="row">
								<div class=col-lg-12">
									<h1 align="center">
										<b>공지사항</b>
									</h1>
									<p align="center">
										<b>BYTRUCK의 새로운 소식을 받아보세요.</b>
									</p>
								</div>
							</div>
						</div>
						<div align="left" class="col-lg-offset-6 col-lg-6"
							style="padding-bottom: 10px">
							<select class="col-lg-3 col-lg-offset-1" id="type"
								style="height: 25px; vertical-align: top;">
								<option value="">검색</option>
								<option value="title">제목</option>
								<option value="detail">내용</option>
							</select> <input type="text" class="col-lg-6">
							<button class="col-lg-2 btn btn-info"
								style="height: 26px; line-height: 26px; padding: 0 15px;">검색</button>
						</div>
						<table class="table table-hover table-condensed">
							
								<tr>
									<th>글번호</th>
									<th>글제목</th>
									<th>아이디</th>
									<th>게시일</th>
									<th>조회수</th>
								</tr>
								
							<tbody>
							<%-- <%
							 for(int i=0; i < list.size(); i++) {
							 Board blist = list.get(i);
							 int no = blist.getNo();
							 String title = blist.getTitle();
							 Date posted = blist.getPosted();
							 %>
							<tr>
							 	<td><%=no%></td>
							 	<td><%=title%>></td>
							 	<td>관리자</td>
							 	<td><%=posted%></td>
								<td>1</td>
							 </tr>
							 <% } %> --%>
							<tr>
									<td>2</td>
									<td><a href="#" id = detail >바이트럭 홈페이지 리뉴얼</a>
									</td>
									<td>관리자</td>
									<td>2018.05.11</td>
									<td>1</td>
								</tr>
								<tr>
									<td>9</td>
									<td><a href="#">욕설/비방 할시 계정 삭제가 될 수 있으니 유의바랍니다.</a></td>
									<td>관리자</td>
									<td>2018.05.10</td>
									<td>11</td>
								</tr>
								<tr>
									<td>8</td>
									<td><a href="#">좋아요 기능 많은 이용 부탁드립니다.</a></td>
									<td>관리자</td>
									<td>2018.05.09</td>
									<td>29</td>
								</tr>
									<%-- <c:set var="list" value="${pb.list}"/>
									<c:forEach var="board" items="${list}"> --%>
									<%-- <td>${board.no}</td>
									<td><a href="<%=root %>/brand/notice_detail.jsp">${board.title}</a></td>
									<td>관리자</td>
									<td></td> <!-- ${board.posted} -->
									<td>1</td>
								</tr>
								</c:forEach> --%>
							</tbody>
						</table>
						<a class="btn btn-success pull-right"
							href="<%=root%>/brand/notice_write.jsp">글쓰기</a>
							<button class="btndelete">삭제</button>
					</div>
				</div>
			</div>
	<div class="text-center">
		<ul class="pagination">
			<%-- <c:set var="startPage" value="${pb.startPage}"/>
			<c:set var="endPage" value="${pb.endPage}"/>
			<c:if test="${startPage > 1}">
			<a href="#">&laquo;</a>
			</c:if>
			<c:forEach begin="${startPage}" end="${endPage}" var = "i">
				<a href="#">${i}</a>
			</c:forEach>
			<c:if test="${endPage < pb.totalPage}">
				<a href="#">&raquo;</a>
			</c:if>	 --%>
		</ul>
	</div>
	<!-- END MAIN -->
	<!-- FOOTER -->
	<div class="foot">
		<div class="row">
			<div class="container-fluid">
				<div class="col-lg-12">
					<footer>
						<%@include file="/template/footer.jsp"%>
					</footer>
				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->
</body>
</html>