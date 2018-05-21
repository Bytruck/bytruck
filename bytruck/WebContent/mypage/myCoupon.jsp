<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.board {
	padding-top: 10%;
}
</style>

<title>myCoupon.jsp</title>
<!-- NAVBAR
================================================== -->
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
	<!-- Carousel
    ================================================== -->
	<div class="board">
		<div class="row">
			<div class="container">
				<!-- BREADCRUMBS -->
				<ol class="breadcrumb link-accent separator-arrow">
					<li><a href="<%=root %>/index.jsp" title="Home"><i
							class="fa fa-home"></i></a></li>
					<li><a href="<%=root %>/mypage/mypage.jsp" title="Home">마이페이지</a></li>
					<li class="active">내 쿠폰</li>
				</ol>
				<!-- END BREADCRUMBS -->
				<div class="col-lg-offset-1 col-lg-10 col-lg-offset-1">
					<div class="col-lg-10 col-lg-offset-1">
						<h3>내가 보유한 쿠폰</h3>
						<p>내가 보유한 쿠폰 내역을 볼 수 있습니다.</p>
						<hr>
						<div class="jumbotron "
							style="text-align: center; background-color: skyblue; color: black; height: 10px">
							<p>
								<strong>현재 보유한 쿠폰 : 3장</strong>
							</p>
						</div>
						<table class="table table-hover table-condensed">
							<thead>
								<tr>
									<th>번호</th>
									<th>쿠폰명</th>
									<th>쿠폰번호</th>
									<th>쿠폰사용가능 시작일</th>
									<th>쿠폰사용가능 종료일</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>6</td>
									<td>특별이벤트쿠폰</td>
									<td>2237894</td>
									<td>2018.05.11</td>
									<td>2018.05.11</td>
								</tr>
								<tr>
									<td>5</td>
									<td>생일쿠폰</td>
									<td>7894694</td>
									<td>2018.05.10</td>
									<td>2018.06.10</td>
								</tr>
								<tr>
									<td>4</td>
									<td>이원일쿠폰</td>
									<td>9852141</td>
									<td>2018.05.09</td>
									<td>2018.11.11</td>
								</tr>
								<tr>
									<td>3</td>
									<td>이연복쿠폰</td>
									<td>6578522</td>
									<td>2018.05.08</td>
									<td>2018.06.30</td>
								</tr>
								<tr>
									<td>2</td>
									<td>샘킴쿠폰</td>
									<td>8524785</td>
									<td>2018.05.05</td>
									<td>2018.05.17</td>
								</tr>
								<tr>
									<td>1</td>
									<td>가입쿠폰</td>
									<td>3452185</td>
									<td>2018.01.01</td>
									<td>2018.12.31</td>
								</tr>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="text-center">
		<ul class="pagination">
			<li class="active"><a href="#">1</a></li>
			<li><a href="#">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
		</ul>
	</div>
	<!-- END MAIN -->
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
	<!-- /.container -->
</body>
</html>