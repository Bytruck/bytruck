<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.board {
	padding-top: 10%;
}
</style>
<title>mypageBussiness.jsp</title>
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
						<h4>
							<strong>개인 정보</strong>
						</h4>
						<form class="form-horizontal" role="form">
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
						<hr>
						<h4>
							<strong>푸드트럭 정보</strong>
						</h4>
						<form class="form-horizontal" role="form">
							<div class="form-group">
								<label for="storename" class="control-label sr-only">상호명</label>
								<div class="col-sm-8 col-sm-offset-2">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-group"></i></span>
										<text type="text" class="form-control" id="storename"
											readonly="readonly">동대문엽기덕복희</text>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="ptype" class="control-label sr-only">상품종류</label>
								<div class="col-sm-8 col-sm-offset-2">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa  fa-gift"></i></span>
										<text type="text" class="form-control" id="product_type"
											readonly="readonly">분식</text>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="product" class="control-label sr-only">대표상품명</label>
								<div class="col-sm-8 col-sm-offset-2">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-bullhorn"></i></span>
										<text type="text" class="form-control" id="product"
											readonly="readonly">덕복희</text>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="price" class="control-label sr-only">상품가격</label>
								<div class="col-sm-8 col-sm-offset-2">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-barcode"></i></span>
										<text type="text" class="form-control" id="price"
											readonly="readonly">3,000원대</text>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="detail" class="control-label sr-only">상세설명</label>
								<div class="col-sm-8 col-sm-offset-2">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-edit"></i></span>
										<textarea type="text" class="form-control" id="detail"
											readonly="readonly"
											placeholder="푸드트럭의 간단한 소개말이나 상세 메뉴 설명을 기입해주세요."></textarea>
									</div>
								</div>
							</div>
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