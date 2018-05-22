<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<title>event.jsp</title>
<style>
.col-lg-12 {
	padding-top: 5%;
}
/* .board {
	padding-top: 10%;
} */
</style>
</head>
<body>
	<div class="menu_bar">
		<div class="row">
			<div class="container-fluid">
				<div class="col-lg-12">
					<header>
						<%@include file="/template/event_header.jsp"%>
					</header>
				</div>
			</div>
		</div>
	</div>
<%-- 	<div class="board">
		<div class="row">
			<div class="container">
				<ol class="breadcrumb link-accent separator-arrow">
					<li><a href="<%=root%>/index.jsp" title="Home"><i
							class="fa fa-home"></i></a></li>
					<li class="active">푸드트럭 소개</li>
					<li><a href="<%=root%>/foodtruck/foodboard.jsp">푸드트럭 등록</a></li>
				</ol>
			</div>
		</div>
	</div> --%>
	<div class="container">
		<div class="page-header">
			<div class="row">
				<div class=col-lg-12">
					<h1 align="center">
						<b>EVENT</b>
					</h1>
					<p align="center">
						<b>BYTRUCK의 다양한 EVENT를 확인하세요.</b>
					</p>
				</div>
			</div>
		</div>
		<!-- WRAPPER -->
		<!-- 		END BREADCRUMBS
		END PAGE CONTENT
		<div class="page-content">
			<div class="container"> -->
		<!-- ITEM FILTERS -->
		<!-- 				<ul class="list-inline portfolio-item-filters">
					<li><a class="active" href="#" data-filter="*">ALL</a></li>
					<li><a href="#" data-filter=".design">DESIGN</a></li>
					<li><a href="#" data-filter=".photography">PHOTOGRAPHY</a></li>
					<li><a href="#" data-filter=".ui">UI</a></li>
					<li><a href="#" data-filter=".ux">UX</a></li>
				</ul> -->
		<!-- END ITEM FILTERS -->
		<!-- PORTFOLIO ITEM WRAPPER -->
		<div class="wrapper">
			<div class="portfolio-item-wrapper">
				<ul
					class="portfolio-item-list portfolio-isotope portfolio-nospace list-col-3">
					<li class="portfolio-item design">
						<div class="overlay"></div>
						<div class="info">
							<h4 class="title">이벤트1</h4>
							<a href="<%=root%>/event/eventdetail.jsp" class="btn">자세히 보기</a>
						</div>
						<div class="media-wrapper">
							<img src="<%=root%>/images/event1.PNG" height="300" width="250">
						</div>
					</li>
					<li class="portfolio-item ux">
						<div class="overlay"></div>
						<div class="info">
							<h4 class="title">이벤트2</h4>
							<a href="<%=root%>/event/eventdetail.jsp" class="btn">자세히 보기</a>
						</div>
						<div class="media-wrapper">
							<img src="<%=root%>/images/event2.PNG" height="300" width="250">
						</div>
					</li>
					<li class="portfolio-item photography">
						<div class="overlay"></div>
						<div class="info">
							<h4 class="title">이벤트3</h4>
							<a href="<%=root%>/event/eventdetail.jsp" class="btn">자세히 보기</a>
						</div>
						<div class="media-wrapper">
							<img src="<%=root%>/images/event3.PNG" height="300" width="250">
						</div>
					</li>
					<li class="portfolio-item photography ui">
						<div class="overlay"></div>
						<div class="info">
							<h4 class="title">이벤트4</h4>
							<a href="<%=root%>/event/eventdetail.jsp" class="btn">자세히 보기</a>
						</div>
						<div class="media-wrapper">
							<img src="<%=root%>/images/event3.PNG" height="300" width="250">
						</div>
					</li>
					<li class="portfolio-item photography">
						<div class="overlay"></div>
						<div class="info">
							<h4 class="title">이벤트5</h4>
							<a href="<%=root%>/event/eventdetail.jsp" class="btn">자세히 보기</a>
						</div>
						<div class="media-wrapper">
							<img src="<%=root%>/images/event1.PNG" height="300" width="250">
						</div>
					</li>
					<li class="portfolio-item ux">
						<div class="overlay"></div>
						<div class="info">
							<h4 class="title">이벤트6</h4>
							<a href="<%=root%>/event/eventdetail.jsp" class="btn">자세히 보기</a>
						</div>
						<div class="media-wrapper">
							<img src="<%=root%>/images/event2.PNG" height="300" width="250">
						</div>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- PAGINATION -->
	<div class="text-center">
		<ul class="pagination">
			<li class="active"><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
		</ul>
	</div>
	<!-- END WRAPPER -->
	<!-- JAVASCRIPTS -->
	<!-- 	<script src="js/jquery-2.1.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/isotope.pkgd.js"></script>
	<script src="js/jquery.bootstrap-autohidingnavbar.min.js"></script>
	<script src="js/repute-scripts.js"></script> -->
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