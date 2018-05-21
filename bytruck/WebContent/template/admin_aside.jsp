<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String root = request.getContextPath();%>	
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<title>Bytruck</title>
<link rel="icon" href="favicon.ico">
<link href="<%= root%>/css/helper.css" rel="stylesheet">
<link href="<%= root%>/css/style.css" rel="stylesheet">
<link
   href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css"
   rel="stylesheet" id="bootstrap-css">
<link
   href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
   rel="stylesheet">
   <link href="<%= root%>/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="<%= root%>/css/carousel.css" rel="stylesheet">
<script
   src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="<%= root%>/js/bootstrap.min.js"></script>
<script src="<%= root%>/js/docs.min.js"></script>
<script src="<%= root%>/js/ie10-viewport-bug-workaround.js"></script>
<script src="<%= root%>/js/ie-emulation-modes-warning.js"></script>
</head>
<style>
.left-sidebar {
	padding-top: 5%;
}
</style>
<body>
		<div class="left-sidebar">
		<!-- Sidebar scroll-->
		<div class="scroll-sidebar">
			<!-- Sidebar navigation-->
			<nav class="sidebar-nav">
				<ul id="sidebarnav">
					<li class="nav-label">회원관리</li>
					<li><a class="has-arrow  " href="#"
						aria-expanded="false"><i class="fa fa-bar-chart"></i><span
							class="hide-menu">회원목록</span></a>
				</ul>
				<ul id="sidebarnav">
					<li class="nav-label">분석</li>
					<li><a class="has-arrow  " href="<%=root%>/admin/admin_charts.jsp"
						aria-expanded="false"><i class="fa fa-bar-chart"></i><span
							class="hide-menu">통계</span></a>
					<li><a class="has-arrow  " href="<%=root%>/admin/admin_likes.jsp"
						aria-expanded="false"><i class="fa fa-bar-chart"></i><span
							class="hide-menu">좋아요 순위</span></a>
					<li class="nav-label">광고관리</li>
					<li><a class="has-arrow  " href="<%=root%>/admin/admin_plink.jsp"
						aria-expanded="false"><i class="fa fa-table"></i><span
							class="hide-menu"> 파워링크</span></a>
					<li><a class="has-arrow  " href="<%=root%>/admin/admin_promotion.jsp"
						aria-expanded="false"><i class="fa fa-table"></i><span
							class="hide-menu"> 홍보</span></a>
					<li><a class="has-arrow  " href="<%=root%>/admin/admin_normal_ad.jsp"
						aria-expanded="false"><i class="fa fa-table"></i><span
							class="hide-menu"> 일반광고</span></a>
				</ul>
			</nav>
		</div>
	</div>	
</body>
</html>