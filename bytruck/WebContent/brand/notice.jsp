<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<style>
.board {
	padding-top: 10%;
}
.board .page-header {
	margin-top: 0;
}
</style>
<script>
	$(function(){
		$('.btn delete').click(function(){
			$.ajax({
				method:'GET',
				url:'boarddelete.bt',
				data:{'no':$('1')},
				success:function(data){
					data=data.trim();	
				}
			});
		)};
	});
</script>
</head>
<title>notice.jsp</title>
<body>
	<div class="row">
		<div class="container-fluid">
			<div class="col-lg-12">
				<header>
					<%@include file="/template/header.jsp"%>
				</header>
			</div>
		</div>
	</div>
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
							<thead>
								<tr>
									<th>글번호</th>
									<th>글제목</th>
									<th>아이디</th>
									<th>게시일</th>
									<th>조회수</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>10</td>
									<td><a href="#">바이트럭 홈페이지 리뉴얼</a></td>
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
								<tr>
									<td>7</td>
									<td><a href="#">관심코스 (찜)기능이 추가 되었습니다.</a></td>
									<td>관리자</td>
									<td>2018.05.08</td>
									<td>18</td>
								</tr>
								<tr>
									<td>6</td>
									<td><a href="#">어린이날 맞이 당일치기 여행 어떠신가요~</a></td>
									<td>관리자</td>
									<td>2018.05.05</td>
									<td>52</td>
								</tr>
								<tr>
									<td>5</td>
									<td><a href="#">Best여행코스 선정 방법 입니다.</a></td>
									<td>관리자</td>
									<td>2018.05.04</td>
									<td>58</td>
								</tr>
								<tr>
									<td>4</td>
									<td><a href="#">푸드트럭 사업자님들 필독해주세요.</a></td>
									<td>관리자</td>
									<td>2018.05.03</td>
									<td>32</td>
								</tr>
								<tr>
									<td>3</td>
									<td><a href="#">광고문의 방법 입니다.</a></td>
									<td>관리자</td>
									<td>2018.05.02</td>
									<td>67</td>
								</tr>
								<tr>
									<td>2</td>
									<td><a href="#">바이트럭 주요 기능설명입니다.</a></td>
									<td>관리자</td>
									<td>2018.05.02</td>
									<td>180</td>
								</tr>
								<tr>
									<td>1</td>
									<td><a href="#">반갑습니다. 바이트럭관리자 입니다.</a></td>
									<td>관리자</td>
									<td>2018.05.01</td>
									<td>152</td>
								</tr>
							</tbody>
						</table>
						<a class="btn btn-success pull-right"
							href="<%=root%>/brand/notice_write.jsp">글쓰기</a>
						<a class='btn_delete' href="boarddelete.bt?no=2">삭제</a>
					</div>
				</div>
			</div>
	<div class="text-center">
		<ul class="pagination">
			<li class="active"><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
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