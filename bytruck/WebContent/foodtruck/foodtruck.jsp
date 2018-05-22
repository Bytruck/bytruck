<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title>foodtruck.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<style>
.board {
	padding-top: 10%;
}

.board .page-header {
	margin-top: 0;
}
</style>
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
	<div class="board">
		<div class="row">
			<div class="container">
				<ol class="breadcrumb link-accent separator-arrow">
					<li><a href="<%=root%>/index.jsp" title="Home"><i
							class="fa fa-home"></i></a></li>
					<li class="active">푸드트럭 소개</li>
					<li><a href="<%=root %>/foodtruck/foodboard.jsp">푸드트럭 등록</a></li>
				</ol>
				<div class="page-header">
					<div class="row">
						<div class=col-lg-12">
							<h1 align="center">
								<b>FOOD TRUCK</b>
							</h1>
							<p align="center">
								<b>이런 푸드트럭은 어때요?</b>
							</p>
						</div>
					</div>
				</div>
				<!-- Wrapper for slides -->
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
						<li data-target="#myCarousel" data-slide-to="1"></li>
						<li data-target="#myCarousel" data-slide-to="2"></li>
					</ol>
					<div class="carousel-inner">
						<div class="item active">
							<img src="<%=root%>/images/foodtruck1.PNG">
							<div class="carousel-caption">
								<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><h3>덕복희</h3></a>
							</div>
						</div>
						<div class="item">
							<img src="<%=root%>/images/foodtruck2.PNG">
							<div class="carousel-caption">
								<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><h3>돈까쑤</h3></a>
							</div>
						</div>
						<div class="item">
							<img src="<%=root%>/images/foodtruck3.PNG">
							<div class="carousel-caption">
								<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><h3>핏짜아</h3></a>
							</div>
						</div>
					</div>
				</div>
				<!-- tab Header -->
				<div class="row">
					<div class="container-fluid">
						<div class="foodtype">
							<ul class="nav nav-tabs" role="tablist">
								<li class="active"><a href="#main" role="tab"
									data-toggle="tab">식사류</a></li>
								<li><a href="#desert" role="tab" data-toggle="tab">간식류</a></li>
								<li><a href="#drink" role="tab" data-toggle="tab">음료류</a></li>
								<li class="dropdown"><a href="#" id="myTabDrop1"
									class="dropdown-toggle" data-toggle="dropdown">지역별 보기 <b
										class="caret"></b></a>
									<ul class="dropdown-menu" role="menu"
										aria-labelledby="myTabDrop1">
										<li><a href="#dropdown1" tabindex="-1" data-toggle="tab">서울</a></li>
										<li><a href="#dropdown2" tabindex="-1" data-toggle="tab">경기도</a></li>
										<li><a href="#dropdown3" tabindex="-1" data-toggle="tab">대구</a></li>
										<li><a href="#dropdown4" tabindex="-1" data-toggle="tab">부산</a></li>
									</ul></li>
							</ul>
						</div>
					</div>
				</div>
				<!-- end tab Header -->
				<!-- tab-content -->
				<div class="tab-content">
					<div class="tab-pane fade in active" id="main">
						<div class="row">
							<div class="col-lg-3">
								<div class="product-item">
									<a href="foodtruckdetail.jsp"><img
										src="<%=root%>/images/food.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">덕복희</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/food1.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">햄벅한 버거</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/food.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">큐브
												스테이크</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/food1.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">그릴드 치킨</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/food1.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">덕복희</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/food.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">덕복희</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/food1.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">덕복희</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/food.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">덕복희</a>
										</h3>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="desert">
						<div class="row">
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/desert1.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">츄파츄러스</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/desert1.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">츄파츄러스</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/desert1.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">츄파츄러스</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/desert1.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">츄파츄러스</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/desert2.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">와플플러스</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/desert2.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">와플플러스</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/desert2.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">와플플러스</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/desert2.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">와플플러스</a>
										</h3>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade" id="drink">
						<div class="row">
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/drink2.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">레몬에이드</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/drink2.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">레몬에이드</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/drink2.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">레몬에이드</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/drink2.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">레몬에이드</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/drink1.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">아이스
												아메리카노</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/drink1.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">아이스
												아메리카노</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/drink1.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">아이스
												아메리카노</a>
										</h3>
									</div>
								</div>
							</div>
							<div class="col-lg-3">
								<div class="product-item">
									<a href="<%=root%>/foodtruck/foodtruckdetail.jsp"><img
										src="<%=root%>/images/drink1.PNG" class="img-rounded"
										alt="Product Item" height="220" width="250"></a>
									<div class="info">
										<h3 class="title">
											<a href="<%=root%>/foodtruck/foodtruckdetail.jsp">아이스
												아메리카노</a>
										</h3>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="tab-pane fade in" id="dropdown1">
						<h4>서울</h4>
						<p>서울에서 파는 음식들입니당</p>
					</div>
					<div class="tab-pane fade in" id="dropdown2">
						<h4>경기도</h4>
						<p>경기도에서 파는 음식들입니당</p>
					</div>
					<div class="tab-pane fade in" id="dropdown3">
						<h4>대구</h4>
						<p>대구에서 파는 음식들입니당</p>
					</div>
					<div class="tab-pane fade in" id="dropdown4">
						<h4>부산</h4>
						<p>부산에서 파는 음식들입니당</p>
					</div>
				</div>
				<!-- end tab-content -->
			</div>
			<div class="col=lg-2 col-lg-offset-5">
				<ul class="pagination">
					<li><a href="#">1</a></li>
					<li><a href="#">2</a></li>
					<li><a href="#">3</a></li>
					<li><a href="#">4</a></li>
					<li><a href="#">5</a></li>
				</ul>
			</div>
		</div>
	</div>
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