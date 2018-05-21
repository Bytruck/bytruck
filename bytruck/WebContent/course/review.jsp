<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title>index.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</head>

<body>
	<div>
		<header>
			<%@include file="/template/header.jsp"%>
		</header>
	</div>

	<hr class="featurette-divider">

	<div class="container">
		<div class="row">
			<div class="col-sm-2 sidenav">
				<h6>지역을 선택해주세요</h6>
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
				<h6>출발일을 선택해 주세요</h6>
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
				<h6>마지막일을 선택해 주세요</h6>
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
					<%@include file="naver.html"%><br> <label>제목
						:</label>&nbsp;&nbsp;<input type="text" class="form-control" required><br>
					<label>일정 :</label><br>
					<textarea class="form-control" rows="8	"></textarea>
					<br> <label><input type="radio" name="optradio">나만보기</label>
					<label><input type="radio" name="optradio">전체공개</label><br>
					<button type="submit" class="btn btn-default">후기저장</button>
				</div>
				<div class="col-md-3">
					<img src="../images/weather.png" alt="Weather" width="220"
						height="250"><br>
					<br>
					<%@include file="../template/top123.jsp"%>
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