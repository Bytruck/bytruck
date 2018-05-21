<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title>viewcourse.jsp</title>
<head>
<meta charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</head>
<body>
	<div>
		<header>
			<%@include file="../template/header.jsp"%>
		</header>
	</div>

	<hr class="featurette-divider">

	<div class="container">
		<div class="row">
			<div class="col-md-8 col-md-offset-2">
				<%@include file="../template/top123.jsp"%>
			</div>
		</div>
	</div>


	<div class="container">
		<div class="page-header">
			<h1>여행코스 보기</h1>
		</div>
		<div class="row">
			<div class="col-lg-3">
				<div class="product-item">
					<a href="#"><img src="../images/with1.jpg" class="img-rounded"
						alt="Product Item" height="220" width="250"></a>
					<div class="info">
						<h3 class="title">
							<a href="naver.html" title="Colorful Abstract Cushion">제주도
								꽃길2박3일</a>
						</h3>
						<img src="../images/good.png" height="10" width="10"> <label>31</label>
					</div>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="product-item">
					<a href="#"><img src="../images/with2.jpg" class="img-rounded"
						alt="Product Item" height="220" width="250"></a>
					<div class="info">
						<h3 class="title">
							<a href="single-product-page.html" title="Reading Table Sets">경복궁길</a>
						</h3>
						<img src="../images/good.png" height="10" width="10"> <label>27</label>
					</div>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="product-item">
					<a href="#"><img src="../images/with3.jpg" class="img-rounded"
						alt="Product Item" height="220" width="250"></a>
					<div class="info">
						<h3 class="title">
							<a href="single-product-page.html" title="Wooden Working Desk">경로1</a>
						</h3>
						<img src="../images/good.png" height="10" width="10"> <label>23</label>
					</div>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="product-item">
					<a href="#"><img src="../images/with4.jpg" class="img-rounded"
						alt="Product Item" height="220" width="250"></a>
					<div class="info">
						<h3 class="title">
							<a href="single-product-page.html" title="Elegant Sofa (White)">경로2</a>
						</h3>
						<img src="../images/good.png" height="10" width="10"> <label>19</label>
					</div>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="product-item">
					<a href="#"><img src="../images/with4.jpg" class="img-rounded"
						alt="Product Item" height="220" width="250"></a>
					<div class="info">
						<h3 class="title">
							<a href="single-product-page.html" title="Elegant Sofa (White)">경로2</a>
						</h3>
						<img src="../images/good.png" height="10" width="10"> <label>16</label>
					</div>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="product-item">
					<a href="#"><img src="../images/with4.jpg" class="img-rounded"
						alt="Product Item" height="220" width="250"></a>
					<div class="info">
						<h3 class="title">
							<a href="single-product-page.html" title="Elegant Sofa (White)">경로2</a>
						</h3>
						<img src="../images/good.png" height="10" width="10"> <label>14</label>
					</div>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="product-item">
					<a href="#"><img src="../images/with4.jpg" class="img-rounded"
						alt="Product Item" height="220" width="250"></a>
					<div class="info">
						<h3 class="title">
							<a href="single-product-page.html" title="Elegant Sofa (White)">경로2</a>
						</h3>
						<img src="../images/good.png" height="10" width="10"> <label>9</label>
					</div>
				</div>
			</div>
			<div class="col-lg-3">
				<div class="product-item">
					<a href="#"><img src="../images/with4.jpg" class="img-rounded"
						alt="Product Item" height="220" width="250"></a>
					<div class="info">
						<h3 class="title">
							<a href="single-product-page.html" title="Elegant Sofa (White)">경로2</a>
						</h3>
						<img src="../images/good.png" height="10" width="10"> <label>3</label>
					</div>
				</div>
			</div>
		</div>
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

	<div class="foot">
		<div class="row">
			<div class="container-fluid">
				<div class="col-lg-12">
					<footer>
						<%@include file="../template/footer.jsp"%>
					</footer>
				</div>
			</div>
		</div>
	</div>
</body>
</html>