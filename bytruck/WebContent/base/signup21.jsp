<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title>signup21.jsp</title>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("a.tos").click(
				function() {
					window.open("http://localhost:8080/TEST/base/tos.jsp",
							"바이트럭 이용약관",
							"width=700, height=600, scrollbars=yes");
				});
	})
</script>
</head>
<body>
	<header>
		<%@include file="/template/header.jsp"%>
	</header>
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="<%=root%>/images/main_illu.jpg" alt="First slide">
				<div class="container"></div>
			</div>
			<div class="item">
				<img src="<%=root%>/images/main_bike.jpg" alt="Second slide">
				<div class="container"></div>
			</div>
			<div class="item">
				<img src="<%=root%>/images/main_truck.jpg" alt="Third slide">
				<div class="container"></div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<!-- /.carousel -->
	<div class="shop-main register">
		<div class="container">
			<!-- BREADCRUMBS -->
			<ol class="breadcrumb link-accent separator-arrow">
				<li><a href="<%=root%>/index.jsp" title="Home"><i
						class="fa fa-home"></i></a></li>
				<li><a href="<%=root%>/base/signupcover.jsp" title="Home">회원가입</a></li>
				<li><a href="<%=root%>/base/signup2.jsp" title="Home">사업자
						인증</a></li>
				<li class="active">사업자 회원가입</li>
			</ol>
			<!-- END BREADCRUMBS -->

			<!-- REGISTER BOX -->
			<div class="col-sm-offset-2 col-sm-8 col-sm-offset-2">
				<div class="account-box register-box">
					<h3>회원가입(사업자)</h3>
					<p>회원정보를 입력해주세요. 모두 입력하셔야 가입이 가능해집니다.</p>
					<hr>
					<form class="form-horizontal" role="form">
						<div class="form-group">
							<label for="id" class="control-label sr-only">ID</label>
							<div class="col-sm-8 col-sm-offset-2">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-heart"></i></span>
									<text type="text" class="form-control" id="username"
										readonly="readonly">사업자번호 받아온거 넣기</text>
								</div>
							</div>

						</div>
						<div class="form-group">
							<label for="id" class="control-label sr-only">ID</label>
							<div class="col-sm-8 col-sm-offset-2">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-globe"></i></span>
									<input type="text" class="form-control" id="username"
										placeholder="ID">
								</div>
							</div>
							<button style="align-content: left;">아이디중복확인</button>

						</div>
						<div class="form-group">
							<label for="username" class="control-label sr-only">Username</label>
							<div class="col-sm-8 col-sm-offset-2">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-user"></i></span>
									<input type="text" class="form-control" id="email"
										placeholder="Username">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="password" class="control-label sr-only">Password</label>
							<div class="col-sm-8 col-sm-offset-2">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock"></i></span>
									<input type="password" class="form-control" id="password"
										placeholder="Password">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="password2" class="control-label sr-only">Repeat
								Password</label>
							<div class="col-sm-8 col-sm-offset-2">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-lock"></i></span>
									<input type="password" class="form-control" id="password2"
										placeholder="Repeat Password">
								</div>
							</div>
						</div>
						<div class="form-group">
							<label for="email" class="control-label sr-only">Email</label>
							<div class="col-sm-8 col-sm-offset-2">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-envelope"></i></span> <input type="email"
										class="form-control" id="email" placeholder="Email">
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="birthday" class="control-label sr-only">Birthday</label>
							<div class="col-sm-8 col-sm-offset-2">
								<div class="input-group">
									<span class="input-group-addon"><i
										class="fa fa-calendar"></i></span> <input type="date"
										class="form-control" id="bitrhday"
										placeholder="Birthday(ex.YYYY/MM/DD)">
								</div>
							</div>
						</div>

						<div class="form-group">
							<label for="tel" class="control-label sr-only">Tel</label>
							<div class="col-sm-8 col-sm-offset-2">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-phone"></i></span>
									<input type="tel" class="form-control" id="tel"
										placeholder="Tel(ex.000-0000-0000)">
								</div>
							</div>
						</div>
						<div class="form-group">
							<div class="col-sm-8 col-sm-offset-2">
								<label class="fancy-checkbox"> <input type="checkbox">
									<span>본인은 <a class="tos" href="#">이용약관</a></span>에 동의 합니다.
								</label>
							</div>
						</div>
						<hr>
						<h4>
							<strong>상호및 상품등록</strong>
						</h4>
						<p>상호 및 상품 정보를 정확히 기입해 주세요. 정확한 기입을 하셔야 원할한 서비스가 제공됩니다.</p>
						<form class="form-horizontal" role="form">
							<div class="form-group">
								<label for="storename" class="control-label sr-only">상호명</label>
								<div class="col-sm-8 col-sm-offset-2">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-group"></i></span>
										<input type="text" class="form-control" id="storename"
											placeholder="상호명">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="ptype" class="control-label sr-only">상품종류</label>
								<div class="col-sm-8 col-sm-offset-2">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-cloud"></i></span>
										<select class="form-control">
											<option value="drink">음료</option>
											<option value="hotdog">핫도그</option>
											<option value="cupbab">컵밥</option>
										</select>
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="product" class="control-label sr-only">대표상품명</label>
								<div class="col-sm-8 col-sm-offset-2">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-bullhorn"></i></span> <input type="text"
											class="form-control" id="product" placeholder="대표상품명을 기입해주세요">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="price" class="control-label sr-only">상품가격</label>
								<div class="col-sm-8 col-sm-offset-2">
									<div class="input-group">
										<span class="input-group-addon"><i
											class="fa fa-barcode"></i></span> <input type="number"
											class="form-control" id="price" placeholder="상품가격대를 기입해주세요">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="detail" class="control-label sr-only">상세설명</label>
								<div class="col-sm-8 col-sm-offset-2">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-edit"></i></span>
										<textarea type="text" class="form-control" id="detail"
											placeholder="푸드트럭의 간단한 소개말이나 상세 메뉴 설명을 기입해주세요."></textarea>
									</div>
								</div>
							</div>

							<div class="form-group">
								<div class="col-sm-8 col-sm-offset-2">
									<a type="submit" class="btn btn-success btn-block"
										href="<%=root%>/base/signupSuccess.jsp"> <i
										class="fa fa-check-circle"></i> Create Account
									</a>
								</div>
							</div>
						</form>
						<hr>
						<p>
							<em>이미 회원이신가요?</em> <a href="<%=root%>/base/loginform.jsp"><strong>로그인</strong></a>
						</p>
				</div>
			</div>
			<!-- END REGISTER BOX -->
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
</body>
</html>