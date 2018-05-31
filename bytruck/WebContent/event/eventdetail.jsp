<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title>eventdetail.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<style>
.board {
	padding-top: 10%;
}

.board .page-header {
	margin-top: 0;
}

a:hover {
	background-color: pink;
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
					<li><a href="<%=root%>/index.jsp" title="Home"><i
							class="fa fa-home"></i></a></li>
					<li><a href="<%=root%>/event/event.jsp">이벤트 소개</a></li>
					<li><a href="<%=root%>/adboard/normal_ad.jsp">배너광고 신청</a></li>
				</ol>
				<br>
				<!-- END BREADCRUMBS -->
				<!-- BASIC INPUT -->
				<div class="page-header">
					<div class="row">
						<div class=col-lg-12">
							<h1 align="center">
								<b>EVENT</b>
							</h1>
							<p align="center">
								<b>EVENT를 자세히 살펴보세요.</b>
							</p>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h2 class="panel-title section-heading no-margin">이벤트 제목</h2>
					</div>
					<div class="panel-heading">
						<h2 class="panel-title section-heading no-margin">이벤트 기간</h2>
					</div>
					<div class="panel-body">
						<div class="form-horizontal">
							<div class="form-group">
								<div class="col-md-12" align="center">
									<img src="<%=root%>/images/detail.jpg">
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-12" align="center">
									<p>상세설명</p>
								</div>
							</div>
							<div class="form-group">
								<div class="col-md-12" align="center">
									<h2>
										<a href="<%=root%>/event/event_location.jsp">위치가
											궁금하신가요?</a>
									</h2>
								</div>
							</div>
						</div>
						<div class="button-group col-lg-offset-4 col-lg-4 col-lg-offset-4"
							align="center">
							<a class="btn btn-success" id="register"
								href="<%=root%>/event/event.jsp">목록</a>
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