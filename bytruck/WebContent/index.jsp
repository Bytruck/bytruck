<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<body>
	<header>
		<%@include file="template/header.jsp"%>
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
				<img src="images/main_illu.jpg" alt="First slide">
				<div class="container"></div>
			</div>
			<div class="item">
				<img src="images/main_bike.jpg" alt="Second slide">
				<div class="container"></div>
			</div>
			<div class="item">
				<img src="images/main_truck.jpg" alt="Third slide">
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"
			style="top: 50%; margin-top: -25px; background: none"> <span
			class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> <span
			class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"
			style="top: 50%; margin-top: -25px; background: none"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
	<div class="container marketing">
		<div class="row">
			<div class="col-lg-4">
				<img class="img-circle" src="<%=root%>/images/event3.PNG"
					alt="Generic placeholder image"
					style="width: 230px; height: 230px;">
				<h2>맥주 이벤트</h2>
				<p>
					생맥주 무제한 무료!<br> 시원한 맥주 공짜로 쏩니다!!!!<br> 만 19세 미만 청소년은 이용
					불가
				</p>
				<p>
					<a class="btn btn-default" href="<%=root%>/event/eventdetail.jsp"
						role="button">자세히 보기 &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="<%=root%>/images/event1.PNG"
					alt="Generic placeholder image"
					style="width: 230px; height: 230px;">
				<h2>졸업생 이벤트</h2>
				<p>
					여러분의 새로운 출발을 응원합니다!<br> 졸업생 20% 할인 이벤트입니당<br> 많이 와쥬세여어어어
				</p>
				<p>
					<a class="btn btn-default" href="<%=root%>/event/eventdetail.jsp"
						role="button">자세히 보기 &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<img class="img-circle" src="<%=root%>/images/event2.PNG"
					alt="Generic placeholder image"
					style="width: 230px; height: 230px;">
				<h2>할무니 이벤트</h2>
				<p>
					저희 푸드트럭에서 건강하게 식사하세요!<br> 60세 이상 고객 방문 시 할인해드립니당<br> 신분증
					확인 필수~~^0^
				</p>
				<p>
					<a class="btn btn-default" href="<%=root%>/event/eventdetail.jsp"
						role="button">자세히 보기 &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<hr class="featurette-divider">
		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					First featurette heading. <span class="text-muted">It'll
						blow your mind.</span>
				</h2>
				<p class="lead">Donec ullamcorper nulla non metus auctor
					fringilla. Vestibulum id ligula porta felis euismod semper.
					Praesent commodo cursus magna, vel scelerisque nisl consectetur.
					Fusce dapibus, tellus ac cursus commodo.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive"
					data-src="holder.js/500x500/auto" alt="Generic placeholder image">
			</div>
		</div>
		<hr class="featurette-divider">
		<div class="row featurette">
			<div class="col-md-5">
				<img class="featurette-image img-responsive"
					data-src="holder.js/500x500/auto" alt="Generic placeholder image">
			</div>
			<div class="col-md-7">
				<h2 class="featurette-heading">
					Oh yeah, it's that good. <span class="text-muted">See for
						yourself.</span>
				</h2>
				<p class="lead">Donec ullamcorper nulla non metus auctor
					fringilla. Vestibulum id ligula porta felis euismod semper.
					Praesent commodo cursus magna, vel scelerisque nisl consectetur.
					Fusce dapibus, tellus ac cursus commodo.</p>
			</div>
		</div>
		<hr class="featurette-divider">
		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					And lastly, this one. <span class="text-muted">Checkmate.</span>
				</h2>
				<p class="lead">Donec ullamcorper nulla non metus auctor
					fringilla. Vestibulum id ligula porta felis euismod semper.
					Praesent commodo cursus magna, vel scelerisque nisl consectetur.
					Fusce dapibus, tellus ac cursus commodo.</p>
			</div>
			<div class="col-md-5">
				<img class="featurette-image img-responsive"
					data-src="holder.js/500x500/auto" alt="Generic placeholder image">
			</div>
		</div>
		<hr class="featurette-divider">
	</div>
	<!-- /END THE FEATURETTES -->
	<!-- FOOTER -->
	<div class="foot">
		<div class="row">
			<div class="container-fluid">
				<div class="col-lg-12">
					<footer>
						<%@include file="template/footer.jsp"%>
					</footer>
				</div>
			</div>
		</div>
	</div>
	<!-- /.container -->
</body>
</html>