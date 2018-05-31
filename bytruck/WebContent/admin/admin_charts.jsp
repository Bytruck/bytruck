<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	String root = request.getContextPath();
%>
<style>
body {
	padding-top: 5%;
}

#bo-container.container {
	padding-left: 90px;
}

h2, .mem, .likes, .profit {
	margin-bottom: 5%;
}
</style>
<body>
	<div class="aside">
		<jsp:include page="/template/admin_aside.jsp" />
	</div>
	<div class="container" id="bo-container">
		<div class="row">
			<h2>CHART</h2>
			<div class="mem">
				<div class="card-block">
					<h4 class="card-title">MEMBER</h4>
					<img src="<%=root%>/images/mem_money_chart.PNG" alt="member chart">
				</div>
			</div>
			<div class="likes">
				<div class="card-block">
					<h4 class="card-title">LIKES</h4>
					<img src="<%=root%>/images/like_chart.PNG" alt="likes chart">
				</div>
			</div>
			<div class="profit">
				<div class="card-block">
					<h4 class="card-title">PROFIT</h4>
					<img src="<%=root%>/images/mem_money_chart.PNG" alt="profit chart">
				</div>
			</div>
		</div>
	</div>
</body>
</html>