<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title>signupSuccess.jsp</title>
<style>
.board {
	padding-top: 0;
}

.board .page-header {
	margin-top: 0;
}
</style>
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
				<li><a href="<%=root %>/index.jsp" title="Home"><i
						class="fa fa-home"></i></a></li>
				<li class="active">회원가입 완료</li>
			</ol>
			<!-- END BREADCRUMBS -->

			<!-- REGISTER BOX -->
			<div class="col-lg-12">
				<h1 align="center">
					<b>회원가입 완료</b>
				</h1>
				<hr>
				<div class="jumbotron">
					<div class="container">
						<div class="col-lg-12">
							<div align="center">
								<h1>
									<strong>환영합니다!</strong>
								</h1>
								<br> <span> 고객님의 ID는 <strong>kitri123</strong> 입니다<br>
									추후 정보 변경은 마이페이지에서 가능합니다.<br>
								</span> <br> <a type="button" class="btn btn-success"
									align="center" href="<%=root %>/index.jsp"> 시 작 하 기 </a> <br>
								<br> <a href="<%=root %>/index.jsp" align="center">로그아웃</a>
							</div>
						</div>
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
	</div>
	<!-- /.container -->
</body>
</html>