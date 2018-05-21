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
				<div class="trip">
					<button class="btn btn-primary">출발일 수정</button>
					<button class="btn btn-primary">일정추가+</button>
					<button class="btn btn-primary">전체일정삭제</button>
				</div>
				<div class="option">
					<h3>세부옵션사항</h3>
					<label><input type="radio" name="openradio">나만보기</label><br>
					<label><input type="radio" name="withradio">동행가능</label>
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
					<button type="submit" class="btn btn-default">일정저장</button>
				</div>
				<div class="col-md-3">
					<img src="../images/weather.png" alt="Weather" width="200"
						height="250"><br>
					<br>
					<%@include file="/template/top123.jsp"%>
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