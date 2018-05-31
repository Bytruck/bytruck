<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title>makecourse.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</head>
<style>
.board {
	padding-top: 10%;
}

.board .page-header {
	margin-top: 0;
}
</style>
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
				<ol class="breadcrumb link-accent separator-arrow">
					<li><a href="<%=root%>/index.jsp" title="Home"><i
							class="fa fa-home"></i></a></li>
					<li><a href="<%=root%>/course/viewcourse.jsp" title="Home">코스소개</a></li>
					<li><a href="<%=root%>/course/makecourse.jsp" title="Home">코스짜기</a></li>
					<li><a href="<%=root%>/course/reviewboard.jsp" title="Home">코스후기</a></li>
					<li class="active">코스후기 등록</li>
				</ol>
				<div class="page-header">
					<div class="row">
						<div class=col-lg-12">
							<h1 align="center">
								<b>COURCE</b>
							</h1>
							<p align="center">
								<b>특별한 여행후기를 공유하세요.</b>
							</p>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-sm-2 sidenav">
							<h5>지역을 선택해주세요</h5>
				<div class="dropdown">
					<button class="btn btn-default dropdown-toggle" type="button"
						data-toggle="dropdown">
						지역 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li><a href="#">서울</a></li>
						<li><a href="#">경기도</a></li>
						<li><a href="#">강원도</a></li>
						<li><a href="#">충청도</a></li>
						<li><a href="#">경상도</a></li>
						<li><a href="#">전라도</a></li>
					</ul>
				</div>
				<h5>출발일을 선택해 주세요</h5>
				<div class="dropdown">
					<button class="btn btn-default dropdown-toggle" type="button"
						data-toggle="dropdown">
						지역 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li><a href="#">서울</a></li>
						<li><a href="#">경기도</a></li>
						<li><a href="#">강원도</a></li>
						<li><a href="#">충청도</a></li>
						<li><a href="#">경상도</a></li>
						<li><a href="#">전라도</a></li>
					</ul>
				</div>
				<h5>마지막일을 선택해 주세요</h5>
				<div class="dropdown">
					<button class="btn btn-default dropdown-toggle" type="button"
						data-toggle="dropdown">
						지역 <span class="caret"></span>
					</button>
					<ul class="dropdown-menu">
						<li><a href="#">서울</a></li>
						<li><a href="#">경기도</a></li>
						<li><a href="#">강원도</a></li>
						<li><a href="#">충청도</a></li>
						<li><a href="#">경상도</a></li>
						<li><a href="#">전라도</a></li>
					</ul>
				</div>
						</div>
						<div class="col-sm-10">
							<div class="col-md-9">
								<%@include file="naver.html"%><br>
								<label>제목 :</label>&nbsp;&nbsp;<input type="text"
									class="form-control" required><br> <label>일정
									:</label><br>
								<textarea class="form-control" rows="8	"></textarea>
								<br> <label><input type="radio" name="optradio">나만보기</label>
								<label><input type="radio" name="optradio">전체공개</label><br>
								<button type="submit" class="btn btn-default"
									style="margin: 10px auto 0; display: block; width: 150px; font-weight: bold; padding: 0; line-height: 32px;">후기등록</button>
							</div>
							<div class="col-md-3">
								<img src="<%=root%>/images/weather.png" alt="Weather" width="200"
									height="250"><br> <br>
								<%@include file="/template/top123.jsp"%>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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