<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%String root = request.getContextPath(); %>
<title>findId.jsp</title>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
<script type="text/javascript">
	$(function() {
		$('div>div>input[type=radio]').click(function() {
			if ($('div>div>input[id=r_pn1]').prop('checked')) {
				$('div>div[id=div_phone]').css('display', 'block');
				$('div>div[id=div_email]').css('display', 'none');
			} else if ($('div>div>input[id=r_pn2]').prop('checked')) {
				$('div>div[id=div_phone]').css('display', 'none');
				$('div>div[id=div_email]').css('display', 'block');
			}
		});
		$("a[id=find]").click(function() {
			$("div>div[id=findid]").css('display', 'block');
			$("a[id=find]").css('display', 'none');
			$("a[id=home]").css('display', 'block');
		})
	});
</script>
</head>
<!-- NAVBAR
================================================== -->
<body>
	<header>
		<jsp:include page="/template/header.jsp" />
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
				<img src="<%=root%>/images/top1.png" alt="First slide">
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
				<img src="<%=root%>/images/top2.jpg" alt="Second slide">
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
				<img src="<%=root%>/images/top3.jpg" alt="Third slide">
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
				<li><a href="<%=root%>/index.jsp" title="Home"><i
						class="fa fa-home"></i></a></li>
				<li class="active">아이디 찾기</li>
			</ol>
			<!-- END BREADCRUMBS -->
			<!-- CONTENTS -->

			<div class="col-sm-offset-2 col-sm-8 col-sm-offset-2">
				<div class="content_header">
					<h1>
						<strong>아이디 찾기</strong>
					</h1>
				</div>
				<p class="content_summary">아이디 찾는 방법을 선택해 주세요.</p>
				<hr>
				<div class="section section_find">
					<!-- [D] 선택시 selected 클래스 추가 -->
					<div class="col-md-6" align="center">
						<input type="radio" id="r_pn1" class="input_rd"
							name="certification" checked="checked" value="phone"> <label
							for="r_pn1" class="label_rd">휴대전화로 찾기</label>
					</div>
					<div class="col-md-6" align="center">
						<input type="radio" id="r_pn2" class="input_rd"
							name="certification" value="email"> <label for="r_pn2"
							class="label_rd">이메일로 찾기</label>
					</div>
					<br> <br>
					<!-- 휴대전화 영역 -->
					<div id="div_phone" class="box_inn jumbotron">
						<div class="box_inn_sub">
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
					</div>

					<!-- 이메일 영역 -->
					<div id="div_email" class="box_inn jumbotron"
						style="display: none;">
						<div class="box_inn_sub">
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
									<label for="email" class="control-label sr-only">Email</label>
									<div class="col-sm-8 col-sm-offset-2">
										<div class="input-group">
											<span class="input-group-addon"><i
												class="fa fa-envelope"></i></span> <input type="email"
												class="form-control" id="email" placeholder="Email">
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
					<!-- 이메일 영역 -->
				</div>
				<br>
				<div class=jumbotron id="findid" style="display: none;">
					<div align="center">
						<span> 고객님의 아이디는 <strong>kitri12</strong> 입니다.
						</span>
					</div>
				</div>
				<br>
				<div align="center">
					<a id="find" class="btn btn-success col-sm-4 col-sm-offset-4">아이디
						찾기</a> <a id="home" class="btn btn-success col-sm-4 col-sm-offset-4"
						style="display: none;" href="<%=root%>/index.jsp">홈으로 가기</a>
				</div>
			</div>
		</div>
		<br> <br>
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