<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String root = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description"
	content="Responsive Multipurpose Bootstrap Theme">
<meta name="author" content="The Develovers">
<!-- CSS -->
<link href="<%=root%>/css/bootstrap.css" rel="stylesheet"
	type="text/css">
<link href="<%=root%>/css/font-awesome.min.css" rel="stylesheet"
	type="text/css">
<link href="<%=root%>/css/main.css" rel="stylesheet" type="text/css">
<link href="<%=root%>/css/my-custom-styles.css" rel="stylesheet"
	type="text/css">
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
<link href="<%=root%>/css/bootstrap.min.css" rel="stylesheet">
<script src="<%=root%>/js/ie-emulation-modes-warning.js"></script>
<link href="<%=root%>/css/carousel.css" rel="stylesheet">
<script src="<%=root%>/js/jquery-2.1.1.min.js"></script>
<script src="<%=root%>/js/bootstrap.min.js"></script>
<script src="<%=root%>/js/isotope.pkgd.js"></script>
<script src="<%=root%>/js/jquery.bootstrap-autohidingnavbar.min.js"></script>
<script src="<%=root%>/js/repute-scripts.js"></script>
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
					<a class="navbar-brand" href="<%=root%>/index.jsp">BYTRUCK</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">BRAND
								<span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="<%=root%>/brand/summary.jsp">개요</a></li>
								<li><a href="<%=root%>/brand/notice.jsp">공지사항</a></li>

							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">COURCE<span
								class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="<%=root%>/course/viewcourse.jsp">코스소개</a></li>
								<li><a href="<%=root%>/course/makecourse.jsp">코스짜기</a></li>
								<li><a href="<%=root%>/course/reviewboard.jsp">코스후기</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">FOODTRUCK<span
								class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="<%=root%>/foodtruck/foodtruck.jsp">푸드트럭 소개</a></li>
								<li><a href="<%=root%>/foodtruck/foodboard.jsp">푸드트럭
										등록</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">EVENT<span
								class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="<%=root%>/event/event.jsp">이벤트</a></li>
								<li><a href="<%=root%>/adboard/normal_ad.jsp">배너광고신청</a></li>
							</ul></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">BOARD<span
								class="caret"></span></a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="<%=root%>/board/qna.jsp">Q&A</a></li>
								<li><a href="<%=root%>/board/faq.jsp">FAQ</a></li>
								<li><a href="<%=root%>/chatting/chat.jsp">타임라인</a></li>
							</ul></li>
						<li class="admin"><a href="<%=root%>/admin/admin_main.jsp">ADMIN</a></li>
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">ceopage<span
								class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="<%=root%>/memberInfo.jsp">회원정보조회</a></li>
								<li><a href="#">수익통계</a></li>
							</ul></li>

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">FMypage<span
								class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="<%=root%>/mypage/mypageBussiness.jsp">마이페이지</a></li>
								<li><a href="<%=root%>/mypage/writingList.jsp">내가쓴글</a></li>
								<li><a href="<%=root%>/mypage/editInfoBussiness.jsp">정보수정</a></li>
								<li><a href="<%=root%>/mypage/bye.jsp">탈퇴</a></li>
							</ul></li>

						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown" role="button" aria-expanded="false">cusMypage<span
								class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="<%=root%>/mypage/mypage.jsp">마이페이지</a></li>
								<li><a href="<%=root%>/mypage/myCoupon.jsp">내 쿠폰</a></li>
								<li><a href="<%=root%>/mypage/zzimCourse.jsp">관심코스</a></li>
								<li><a href="<%=root%>/mypage/writingList.jsp">내가쓴글</a></li>
								<li><a href="<%=root%>/mypage/editInfoCustom.jsp">정보수정</a></li>
								<li><a href="<%=root%>/mypage/bye.jsp">탈퇴</a></li>
							</ul></li>
						<li id="nav-signup-btn"><a
							href="<%=root%>/base/signupcover.jsp">SignUp</a></li>
						<li class='login' id="nav-login-btn"><a
							href="<%=root%>/base/loginform.jsp">Login</a></li>
						<li class='logout' id="nav-logout-btn"><a
							href="<%=root%>/index.jsp">Logout</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
</div>