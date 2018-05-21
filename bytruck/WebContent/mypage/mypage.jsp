<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.board {
	padding-top: 10%;
}
</style>

<title>mypage.jsp</title>
<!-- NAVBAR
================================================== -->

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
	<!-- Carousel
    ================================================== -->
	<div class="board">
		<div class="row">
			<div class="container">
				<!-- BREADCRUMBS -->
				<ol class="breadcrumb link-accent separator-arrow">
					<li><a href="<%=root %>/index.jsp" title="Home"><i
							class="fa fa-home"></i></a></li>
					<li class="active">마이페이지</li>
				</ol>
				<!-- END BREADCRUMBS -->
				<div class="col-lg-offset-1 col-lg-10 col-lg-offset-1">
					<div class="col-lg-10 col-lg-offset-1">
						<h3>마이페이지</h3>
						<p>회원님의 기본정보를 볼 수 있습니다.</p>
						<hr>
						<form class="form-horizontal" role="form">
							<br>
							<div class="form-group">
								<label for="username" class="control-label sr-only">이름</label>
								<div class="col-sm-8 col-sm-offset-2">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-user"></i></span>
										<text type="text" class="form-control" id="username"
											readonly="readonly">kitri1</text>
									</div>
								</div>
							</div>

							<div class="form-group">
								<label for="username" class="control-label sr-only">이름</label>
								<div class="col-sm-8 col-sm-offset-2">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-user"></i></span>
										<text type="text" class="form-control" id="username"
											readonly="readonly">김명섭</text>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="email" class="control-label sr-only">Email</label>
								<div class="col-sm-8 col-sm-offset-2">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-envelope"></i></span>
										<text type="email" class="form-control" id="email"
											readonly="readonly">kitri25@naver.com</text>

									</div>
								</div>
							</div>

							<div class="form-group">
								<label for="birthday" class="control-label sr-only">생년월일</label>
								<div class="col-sm-8 col-sm-offset-2">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-calendar"></i></span>
										<text type="date" class="form-control" id="birthday"
											readonly="readonly">1999.09.09</text>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="tel" class="control-label sr-only">전화번호</label>
								<div class="col-sm-8 col-sm-offset-2">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-phone"></i></span>
										<text type="tel" class="form-control" id="tel"
											readonly="readonly">010-1234-5678</text>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="coupon" class="control-label sr-only">보유쿠폰</label>
								<div class="col-sm-8 col-sm-offset-2">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-book"></i></span>
										<text type="text" class="form-control" id="username"
											readonly="readonly">3장</text>
									</div>
								</div>
							</div>
							<br>
						</form>
					</div>
				</div>
			</div>
		</div>
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