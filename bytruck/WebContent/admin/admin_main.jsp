<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String root = request.getContextPath();
%>
</head>	
</head>
<style>
.content {
	padding-top: 50%;
}

footer {
	margin-top: 10%;
}
</style>
<body>
	<!-- Bread crumb -->
<div class="row">
		<div class="container-fluid">
			<div class="col-lg-12">
				<header>
					<jsp:include page ="/template/header.jsp"/>
				</header>
			</div>
		</div>
		</div>
	<div class="aside">
		<jsp:include page ="/template/admin_aside.jsp"/>
	</div>
		<div class="content">
			<p>"관리자 페이지입니다."</p>
		</div>
	<footer>
		<jsp:include page ="/template/footer.jsp"/>
	</footer>
</body>
</html>