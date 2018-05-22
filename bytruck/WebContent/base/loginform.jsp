<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title>loginform.html</title>
<style>
@media ( min-width : 768px) {
	.omb_row-sm-offset-3 div:first-child[class*="col-"] {
		margin-left: 25%;
	}
}

.omb_login .omb_authTitle {
	text-align: center;
	line-height: 300%;
}

.omb_login .omb_socialButtons a {
	color: white;
	//
	In
	yourUse
	@body-bg
	opacity
	:
	0.9;
}

.omb_login .omb_socialButtons a:hover {
	color: white;
	opacity: 1;
}

.omb_login .omb_socialButtons .omb_btn-facebook {
	background: #3b5998;
}

.omb_login .omb_socialButtons .omb_btn-twitter {
	background: #00aced;
}

.omb_login .omb_socialButtons .omb_btn-google {
	background: #c32f10;
}

.omb_login .omb_loginOr {
	position: relative;
	font-size: 1.5em;
	color: #aaa;
	margin-top: 1em;
	margin-bottom: 1em;
	padding-top: 0.5em;
	padding-bottom: 0.5em;
}

.omb_login .omb_loginOr .omb_hrOr {
	background-color: #cdcdcd;
	height: 1px;
	margin-top: 0px !important;
	margin-bottom: 0px !important;
}

.omb_login .omb_loginOr .omb_spanOr {
	display: block;
	position: absolute;
	left: 50%;
	top: -0.6em;
	margin-left: -1.5em;
	background-color: white;
	width: 3em;
	text-align: center;
}

.omb_login .omb_loginForm .input-group.i {
	width: 2em;
}

.omb_login .omb_loginForm  .help-block {
	color: red;
}

@media ( min-width : 768px) {
	.omb_login .omb_forgotPwd {
		text-align: right;
		margin-top: 10px;
	}
}
</style>
<script>
	$(function() {
		$("a.ad").click(function() {
			window.open("http://dunkindonuts.co.kr/");
		});
	});
</script>
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
	<!-- MAIN -->
	<div class="login">
		<div class="container">
			<!-- BREADCRUMBS -->
			<ol class="breadcrumb link-accent separator-arrow">
				<li><a href="<%=root%>/index.jsp" title="Home"><i
						class="fa fa-home"></i></a></li>
				<li class="active">로그인</li>
			</ol>
			<!-- END BREADCRUMBS -->

			<!-- LOGIN BOX -->
			<div class="row">
				<form class="form-horizontal" role="form">
					<div class="col-sm-5 col-sm-offset-1 col-lg-4 col-lg-offset-2">
						<br> <br>
						<div class="omb_login">
							<div class="form-group">
								<label for="inputEmail" class="control-label sr-only">Id</label>
								<div class="col-sm-12">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-user"></i></span>
										<input type="email" class="form-control" id="inputId"
											placeholder="아이디를 입력해주세요">
									</div>
								</div>
							</div>
							<div class="form-group">
								<label for="inputPassword" class="control-label sr-only">Password</label>
								<div class="col-sm-12">
									<div class="input-group">
										<span class="input-group-addon"><i class="fa fa-lock"></i></span>
										<input type="password" class="form-control" id="inputPassword"
											placeholder="비밀번호를 입력해주세요">
									</div>
								</div>
							</div>
							<div class="form-group">
								<div class="col-sm-12">
									<label class="fancy-checkbox"> <input type="checkbox">
										<span>아이디 저장</span>
									</label>
								</div>
								<div class="col-sm-12">
									<a type="submit"
										class="btn btn-success btn-block fa fa-sign-in"
										href="index.jsp">Login </a>
								</div>
							</div>
							<div style="text-align: center">
								<a href="<%=root%>/base/findId.jsp">아이디 찾기</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
									href="<%=root%>/base/findPwd.jsp">비밀번호 찾기</a>
							</div>
						</div>
						<p>
							<em>회원이 아니신가요?</em> <a href="<%=root%>/base/signupcover.jsp">&nbsp;<strong>회원가입</strong></a>
						</p>
					</div>
					<div>
						<a class="ad" href="#"><img src="<%=root%>/images/ad.png"></a>
					</div>
				</form>
			</div>
		</div>

	</div>
	<!-- END LOGIN BOX -->
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