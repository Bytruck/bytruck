<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title>promotion.jsp</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<style>
.col-lg-12 {
	padding-top: 50px;
}
</style>
</head>
<body>
	<div class="menu_bar">
		<div class="row">
			<div class="container-fluid">
				<div class="col-lg-12">
					<header>
						<%@include file="/template/header.jsp"%>
					</header>
				</div>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="page-header">
			<div class="row">
				<div class=col-lg-12">
					<h1 align="center">
						<b>PROMOTION</b>
					</h1>
					<p align="center">
						<b>이달의 PROMOTION을 소개합니다.</b>
					</p>
				</div>
			</div>
		</div>
		<div class="blog medium-thumbnail margin-bottom-30px">
			<!-- blog post -->
			<article class="entry-post">
				<h2 class="entry-title">
					<p>
						<b>전세미&한주희의 "원더트럭"</b>
					</p>
				</h2>
				<div class="entry-content clearfix">
					<div class="row">
						<div class="col-sm-5">
							<figure class="featured-image">
								<img src="<%=root %>/images/promotion1.PNG"
									class="img-responsive" alt="featured-image" />
							</figure>
						</div>
						<div class="col-sm-7">
							<div class="excerpt">
								<br>
								<p>원더트럭의 콘셉트가 궁금하다. 푸드 트럭은 고된 노동을 하기 때문에 여성보다 남성이 주로 운영했다.
									씩씩하고 활기찬 여성의 이미지를 담고 싶었다. 마릴린 먼로 등 다양한 여성이 생각났지만 그중 원더우먼이 우리가
									원하는 당찬 여성상에 부합해 원더트럭이라 이름 붙였다.</p>
								<p class="read-more">
									<a href="<%=root %>/promotion/promotiondetail.jsp" class="btn btn-primary">자세히
										보기<i class="fa fa-long-arrow-right"></i>
									</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</article>
			<hr>
			<article class="entry-post">
				<h2 class="entry-title">
					<p>
						<b>니콜라 캉포&하미란의 "프랑스 분식"</b>
					</p>
				</h2>
				<div class="entry-content clearfix">
					<div class="row">
						<div class="col-sm-5">
							<figure class="featured-image">
								<img src="<%=root %>/images/promotion2.PNG" class="img-responsive"
									alt="featured-image" />
							</figure>
						</div>
						<div class="col-sm-7">
							<div class="excerpt">
								<br>
								<p>왜 크레페인가. 시어머니가 프랑스 크레페의 본고장인 브르타뉴 출신이다. 어머니께 배운 레시피인데
									크레페라는 메뉴가 프랑스에선 굉장히 흔한 음식이다. 한국의 떡볶이 같은 느낌이랄까. 분식집을 찾는 것처럼 우리
									가게도 부담 없이 찾아왔으면 좋겠다는 생각에 크레페로 정했다.</p>
								<p class="read-more">
									<a href="<%=root %>/promotion/promotiondetail.jsp" class="btn btn-primary">자세히
										보기<i class="fa fa-long-arrow-right"></i>
									</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</article>
			<hr />
			<ul class="pager">
				<li><a href="#">이전</a></li>
				<li><a href="#">다음</a></li>
			</ul>
		</div>
	</div>
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