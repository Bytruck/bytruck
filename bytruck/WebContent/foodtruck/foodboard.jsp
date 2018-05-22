<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title>foodboard.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<style>
.board {
	padding-top: 10%;
}
.board .page-header {
	margin-top: 0;
}
</style>
</head>
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
					<li><a href=<%=root %>/index.jsp" title="Home"><i
							class="fa fa-home"></i></a></li>
					<li><a href="<%=root %>/foodtruck/foodtruck.jsp">푸드트럭 소개</a></li>
					<li class="active">푸드트럭 등록</li>
				</ol>
				<!-- END BREADCRUMBS -->
						<div class="page-header">
							<div class="row">
								<div class=col-lg-12">
									<h1 align="center">
										<b>FOOD TRUCK</b>
									</h1>
									<p align="center">
										<b>FOOD TRUCK을 등록해주세요.</b>
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
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>10</td>
									<td><a href="#">안성휴게소 보다 맛있는 소떡소떡</a></td>
									<td>id10</td>
									<td>2018.05.11</td>
								</tr>
								<tr>
									<td>9</td>
									<td><a href="#">새로운 맛의 큐브스테이크</a></td>
									<td>id9</td>
									<td>2018.05.10</td>
								</tr>
								<tr>
									<td>8</td>
									<td><a href="#">속이 꽉 찬 김치만듀</a></td>
									<td>id8</td>
									<td>2018.05.09</td>
								</tr>
								<tr>
									<td>7</td>
									<td><a href="#">아이들이 좋아하는 솜사탕</a></td>
									<td>id7</td>
									<td>2018.05.08</td>
								</tr>
								<tr>
									<td>6</td>
									<td><a href="#">내가 먹고싶은 취킨</a></td>
									<td>id6</td>
									<td>2018.05.05</td>
								</tr>
								<tr>
									<td>5</td>
									<td><a href="#">안 먹으면 후회할 또띠아</a></td>
									<td>id5</td>
									<td>2018.05.04</td>
								</tr>
								<tr>
									<td>4</td>
									<td><a href="#">핏짜 맛있는 피짜아아아</a></td>
									<td>id4</td>
									<td>2018.05.03</td>
								</tr>
								<tr>
									<td>3</td>
									<td><a href="#">시~원한 레몬에이드 한잔 드셔유</a></td>
									<td>id3</td>
									<td>2018.05.02</td>
								</tr>
								<tr>
									<td>2</td>
									<td><a href="#">행복한 푸드트럭입니다앙</a></td>
									<td>id2</td>
									<td>2018.05.02</td>
								</tr>
								<tr>
									<td>1</td>
									<td><a href="#">오늘은 와플 어때요?</a></td>
									<td>id1</td>
									<td>2018.05.01</td>
								</tr>
							</tbody>
						</table>
						<a class="btn btn-success pull-right" href="<%=root %>/foodtruck/foodform.jsp">글쓰기</a>
				
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
</body>
</html>