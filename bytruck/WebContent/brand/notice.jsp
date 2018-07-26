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
<%-- <script>
 $(function(){
	 $.ajax({
			method:"post",
			url:"<%=request.getContextPath()%>/boardlist.bt?type=0",
			success:function(data) {
				console.log(data);
             if(data != null) {
                var $divObj = $('tbody.noticelist');
               $divObj.html(data.trim());
               } 
	        }
		}); 
		return false;
});
</script> --%>
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
						<div class="boardsearch">
							<jsp:include page="noticesearch.jsp" />
						</div>
<!-- 						<div align="left" class="col-lg-offset-6 col-lg-6"
							style="padding-bottom: 10px">
							<select class="col-lg-3 col-lg-offset-1" id="type"
								style="height: 25px; vertical-align: top;">
								<option value="">검색</option>
								<option value="title">제목</option>
								<option value="detail">내용</option>
							</select> <input type="text" class="col-lg-6">
							<button class="col-lg-2 btn btn-info"
								style="height: 26px; line-height: 26px; padding: 0 15px;">검색</button>
						</div> -->
						<table class="table table-hover table-condensed">
							<thead>
								<tr>
									<th>글번호</th>
									<th>글제목</th>
									<th>작성자</th>
									<th>게시일</th>
								</tr>
							</thead>	
							<tbody class="noticelist">

							</tbody>
						</table>
							<%userInfo = (String) session.getAttribute("loginInfo_type");
                  if(userInfo==null) userInfo="X";
                        if(userInfo.equals("AD")){%>
                     <a class="btn btn-success pull-right" href="<%=root%>/brand/notice_write.jsp">글쓰기</a><%} %>
					</div>
				</div>
			</div>
	<div class="text-center">
		<ul class="pagination">

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