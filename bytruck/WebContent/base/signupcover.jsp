<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title>signupcover.jsp</title>
</head>
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
	<!-- MAIN -->
	<div class="page-content">
		<div class="container">
			<!-- BREADCRUMBS -->
			<ol class="breadcrumb link-accent separator-arrow">
				<li><a href="<%=root %>/index.jsp" title="Home"><i class="fa fa-home"></i></a></li>
				<li class="active">회원가입</li>
			</ol>
			<!-- END BREADCRUMBS -->


			<section id="portfolio">
				<div class="container">
					<div class="col-sm-offset-2 col-sm-8 col-sm-offset-2">
						<div class="heading-center">
							<h2>
								<strong>가입 유형을 선택해주세요</strong>
							</h2>
							<p>회원 가입 후 바이트럭의 다양한 서비스를 만나보세요.</p>
						</div>
						<hr>
						<!-- 	<div class="clearfix"></div> -->
						<div class="portfolio-static">
							<div class="row">
								<div class="col-md-4 col-md-offset-1">
									<div class="portfolio-item">
										<div class="overlay"></div>
										<div class="info">
											<h4 class="title">일반 회원</h4>
											<p class="brief-description">여행자용 회원가입입니다.</p>
											<a href="<%=root %>/base/signup.jsp" class="btn">일반회원용 회원가입</a>
										</div>
										<div class="media-wrapper" align="middle">
											<img src="<%=root %>/images/customer1.gif" alt="" />
										</div>
									</div>
								</div>
								<div class="col-md-4 col-md-offset-1">
									<div class="portfolio-item">
										<div class="overlay"></div>
										<div class="info">
											<h4 class="title">사업자 회원</h4>
											<p class="brief-description">사업자(푸드트럭)용 회원가입입니다.</p>
											<a href="<%=root %>/base/signup2.jsp" class="btn">사업자용 회원가입</a>
										</div>
										<div class="media-wrapper" align="middle">
											<img src="<%=root %>/images/customer2.gif" alt="" />
										</div>
									</div>
								</div>

							</div>

						</div>
					</div>
					<!-- END MAIN -->


				</div>
			</section>
		</div>
	</div>

	<!-- /.container -->
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