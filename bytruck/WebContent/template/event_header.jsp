<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<% String root = request.getContextPath(); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Responsive Multipurpose Bootstrap Theme">
<meta name="author" content="The Develovers">
<!-- CSS -->
<link href="<%=root %>/css/bootstrap.css" rel="stylesheet" type="text/css">
<link href="<%=root %>/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="<%=root %>/css/main.css" rel="stylesheet" type="text/css">
<link href="<%=root %>/css/my-custom-styles.css" rel="stylesheet" type="text/css">
<!-- GOOGLE FONTS -->
<!-- <link
	href='http://fonts.googleapis.com/css?family=Open+Sans:300,400italic,400,600,700'
	rel='stylesheet' type='text/css'>
<link
	href='http://fonts.googleapis.com/css?family=Roboto+Condensed:300,300italic,400italic,700,400,300'
	rel='stylesheet' type='text/css'> -->
<!-- FAVICONS -->
<!-- <link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="../assets/ico/repute144x144.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="../assets/ico/repute114x114.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="../assets/ico/repute72x72.png">
<link rel="apple-touch-icon-precomposed"
	href="../assets/ico/repute57x57.png">
<link rel="shortcut icon" href="../assets/ico/favicon.png">
<link rel="icon" href="../favicon.ico">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link href="<%=root %>/css/bootstrap.min.css" rel="stylesheet">
<script src="<%=root %>/js/ie-emulation-modes-warning.js"></script>
<link href="<%=root %>/css/carousel.css" rel="stylesheet">
<script src="<%=root %>/js/jquery-2.1.1.min.js"></script>
<script src="<%=root %>/js/bootstrap.min.js"></script>
<script src="<%=root %>/js/isotope.pkgd.js"></script>
<script src="<%=root %>/js/jquery.bootstrap-autohidingnavbar.min.js"></script>
<script src="<%=root %>/js/repute-scripts.js"></script>
<!-- 	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="bootstrap.min.js"></script>
    <script src="docs.min.js"></script>
    IE10 viewport hack for Surface/desktop Windows 8 bug
    <script src="ie10-viewport-bug-workaround.js"></script>  -->
<div class="navbar-wrapper">
	<div class="container">
		<nav class="navbar navbar-inverse navbar-static-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="<%=root %>/index.jsp">Bytruck</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">BRAND
								<span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">개요</a></li>
								<li><a href="#">공지사항</a></li>

							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">COURCE<span
								class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">코스소개</a></li>
								<li><a href="#">코스짜기</a></li>
								<li><a href="#">후기</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">FOODTRUCK<span
								class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="<%=root %>/foodtruck/foodtruck.jsp">푸드트럭 소개</a></li>
								<li><a href="<%=root %>/foodtruck/foodboard.jsp">푸드트럭 등록</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">EVENT<span
								class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="<%=root %>/event/event.jsp">이벤트</a></li>
								<li><a href="<%=root %>/promotion/promotion.jsp">프로모션</a></li>
								<li><a href="#">배너광고신청</a></li>
							</ul>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">BOARD<span
								class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="#">Q&A</a></li>
								<li><a href="#">FAQ</a></li>
								<li><a href="#">채팅</a></li>
							</ul></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li id="nav-signup-btn"><a href="#">SignUp</a></li>
						<li id="nav-login-btn"><a href="#">Login</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
</div>