<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<link rel="icon" href="favicon.ico">
<link
	href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link
	href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/carousel.css" rel="stylesheet">

<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="bootstrap.min.js"></script>
<script src="docs.min.js"></script>
<script src="ie10-viewport-bug-workaround.js"></script>
<script src="ie-emulation-modes-warning.js"></script>

<style>
.board {
	padding-top: 10%;
}
</style>

<title>memberInfo.jsp</title>
</head>
<body>
	<div class="row">
		<div class="container-fluid">
			<div class="col-lg-12">
				<header>
					<%@include file="template/header.jsp"%>
				</header>
			</div>
		</div>
	</div>
	<div class="board">
		<div class="row">
			<div class="container">
				<!-- BREADCRUMBS -->
				<ol class="breadcrumb link-accent separator-arrow">
					<li><a href="index.html" title="Home"><i
							class="fa fa-home"></i></a></li>
					<li class="active">회원정보</li>
				</ol>
				<!-- END BREADCRUMBS -->
				<div class="page-header">
					<div class="row">
						<div class=col-lg-12">
							<h1 align="center">
								<b>회원정보 조회</b>
							</h1>
							<p align="center">
								<b>BYTRUCK의 회원목록입니다.</b>
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
							<th>분류</th>
							<th>아이디</th>
							<th>이름</th>
							<th>생년월일</th>
							<th>휴대번호</th>
							<th>이메일</th>
							<th>상호명</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>사업자</td>
							<td>kitri123</td>
							<td>김명섭</td>
							<td>1980.12.11</td>
							<td>010-1678-5874</td>
							<td>kmssss@google.com</td>
							<td>김칫국한사발</td>
						</tr>
						<tr>
							<td>사업자</td>
							<td>kitri123</td>
							<td>김명섭</td>
							<td>1980.11.12</td>
							<td>010-1234-2344</td>
							<td>kmddds@google.com</td>
							<td>차돌된장국드세요</td>
						</tr>
						<tr>
							<td>일반</td>
							<td>kitri123</td>
							<td>김명섭</td>
							<td>1980.11.11</td>
							<td>010-1234-5874</td>
							<td>kms@google.com</td>
							<td></td>
						</tr>
						<tr>
							<td>사업자</td>
							<td>kitri123</td>
							<td>김명선</td>
							<td>1944.11.11</td>
							<td>010-1244-5874</td>
							<td>km123s@google.com</td>
							<td>단무지</td>
						</tr>
						<tr>
							<td>일반</td>
							<td>kitri123</td>
							<td>김명섭</td>
							<td>1980.11.11</td>
							<td>010-1234-5874</td>
							<td>kms@google.com</td>
							<td></td>
						</tr>
						<tr>
							<td>일반</td>
							<td>kitri123</td>
							<td>김명식</td>
							<td>1950.11.11</td>
							<td>010-1664-5074</td>
							<td>kmsik@hanmail.net</td>
							<td></td>
						</tr>
						<tr>
							<td>일반</td>
							<td>kitri123</td>
							<td>김명성</td>
							<td>1960.11.11</td>
							<td>010-1234-2344</td>
							<td>kms234@naver.com</td>
							<td></td>
						</tr>
						<tr>
							<td>사업자</td>
							<td>kitri1</td>
							<td>김명숙</td>
							<td>1970.11.11</td>
							<td>010-1111-5874</td>
							<td>kmsuk@google.com</td>
							<td>한신닭발</td>
						</tr>
						<tr>
							<td>사업자</td>
							<td>kitri333</td>
							<td>김명석</td>
							<td>1977.11.11</td>
							<td>010-4444-5874</td>
							<td>kms2222@google.com</td>
							<td>엽기덕복희</td>
						</tr>
						<tr>
							<td>일반</td>
							<td>kitri133</td>
							<td>김명순</td>
							<td>1980.11.12</td>
							<td>010-1324-3474</td>
							<td>km123s@google.com</td>
							<td></td>
						</tr>
					</tbody>
				</table>

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
						<%@include file="template/footer.jsp"%>
					</footer>
				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->
</body>
</html>