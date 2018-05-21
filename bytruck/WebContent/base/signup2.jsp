<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title>signup2.jsp</title>

<!-- NAVBAR
================================================== -->
<body>
	<header>
		<%@include file="/template/header.jsp"%>
	</header>
	<!-- Carousel
    ================================================== -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img src="<%=root %>/images/top1.png" alt="First slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>환영합니다.</h1>
						<p>바이트럭입니다.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Sign
								up today</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="<%=root %>/images/top2.jpg" alt="Second slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Another example headline.</h1>
						<p>Cras justo odio, dapibus ac facilisis in, egestas eget
							quam. Donec id elit non mi porta gravida at eget metus. Nullam id
							dolor id nibh ultricies vehicula ut id elit.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Learn
								more</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img src="<%=root %>/images/top3.jpg" alt="Third slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>One more for good measure.</h1>
						<p>Cras justo odio, dapibus ac facilisis in, egestas eget
							quam. Donec id elit non mi porta gravida at eget metus. Nullam id
							dolor id nibh ultricies vehicula ut id elit.</p>
						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Browse
								gallery</a>
						</p>
					</div>
				</div>
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
				<li><a href="<%=root %>/index.jsp" title="Home"><i class="fa fa-home"></i></a></li>
				<li><a href="<%=root %>/base/signupcover.jsp" title="Home">회원가입</a></li>
				<li class="active">사업자 인증</li>
			</ol>
			<!-- END BREADCRUMBS -->

			<!-- REGISTER BOX -->
			<div class="col-sm-offset-2 col-sm-8 col-sm-offset-2">
				<h2>
					<strong>회원가입(사업자)</strong>
				</h2>
				<p>
					사업자 등록번호를 입력해주세요.<strong>사업자 등록번호가 인증되어야 가입이 가능합니다.</strong>
				</p>
				<hr>
				<div class="jumbotron">
					<div class="container">
						<div class="col-sm-8 col-sm-offset-2">
							<div align="center">
								<h3>사업자 등록 번호</h3>
								<br> <input type="text" class="form-control"
									id="inputfdnumber" placeholder="사업자 등록번호 10자리(ex.000-00-00000)"><br>
								<a type="button" class="btn btn-warning" align="center"
									href="<%=root %>/base/signup21.jsp">인 증 하 기</a>
							</div>
						</div>
					</div>
				</div>
				<p>
					일반 <strong>개인회원</strong>은 간단한 가입이 가능합니다.&nbsp;&nbsp; <a
						type="button" class="btn btn-success" href="<%=root %>/base/signup.jsp">개인회원
						회원가입</a>
				</p>
				<p>
					<em>이미 회원이신가요?</em> <a href="<%=root %>/base/loginform.jsp"><strong>로그인</strong></a>
				</p>
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
	</div>
	<!-- /.container -->
</body>
</html>