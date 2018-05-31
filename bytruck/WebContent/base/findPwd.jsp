<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<title>findPwd.jsp</title>
<head>
<style>
.board {
	padding-top: 0;
}

.board .page-header {
	margin-top: 0;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("a[id=find]").click(function() {
			$("div>div[id=findid]").css('display', 'block');
			$("a[id=find]").css('display', 'none');
			$("a[id=home]").css('display', 'block');
		})

	});
</script>
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
	<div class="board">
		<div class="row">
		<div class="container">
			<!-- BREADCRUMBS -->
			<ol class="breadcrumb link-accent separator-arrow">
				<li><a href="<%=root %>/index.jsp" title="Home"><i class="fa fa-home"></i></a></li>
				<li class="active">비밀번호 찾기</li>
			</ol>
			<!-- END BREADCRUMBS -->
			<!-- CONTENTS -->
			<div class="col-lg-12">
					<div class="page-header">
						<div class="row">
							<div class=col-lg-12">
								<h1 align="center">
									<b>비밀번호 찾기</b>
								</h1>
								<p align="center">
									<b>회원님의 이름, 아이디, 휴대폰 번호를 기입해 주시기 바랍니다.</b>
								</p>
							</div>
						</div>
					</div>
				<!-- 비밀번호 찾기 영역 -->
				<div class="box_inn_sub jumbotron">
					<form class="form-horizontal" role="form">
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
							<label for="id" class="control-label sr-only">ID</label>
							<div class="col-sm-8 col-sm-offset-2">
								<div class="input-group">
									<span class="input-group-addon"><i class="fa fa-globe"></i></span>
									<input type="text" class="form-control" id="id"
										placeholder="ID">
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
					</form>
				</div>
				<br>
				<div class=jumbotron id="findid" style="display: none;">
					<div align="center">
						<span> 고객님의 비밀번호는는 <strong>password1234</strong> 입니다.<br>
							보안상 안전을 위해 로그인 후 비밀번호 변경을 해주시기 바랍니다.
						</span>
					</div>
				</div>
				<div align="center">
					<a id="find" class="btn btn-success col-sm-4 col-sm-offset-4">비밀번호
						찾기</a> <a id="home" class="btn btn-success col-sm-4 col-sm-offset-4"
						style="display: none;" href="<%=root %>/index.jsp">홈으로 가기</a>
				</div>
			</div>
		</div>
		<br>
		<br>
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