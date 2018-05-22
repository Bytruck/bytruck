<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String root = request.getContextPath();
%>
<!-- <script>
	$(document).ready(function() {
		var navItems = $('.admin-menu li > a');
		var navListItems = $('.admin-menu li');
		var allWells = $('.admin-content');
		var allWellsExceptFirst = $('.admin-content:not(:first)');

		allWellsExceptFirst.hide();
		navItems.click(function(e) {
			e.preventDefault();
			navListItems.removeClass('active');
			$(this).closest('li').addClass('active');

			allWells.hide();
			var target = $(this).attr('data-target-id');
			$('#' + target).show();
		});
	});
</script> -->
</head>
<style>
.board {
	padding-top: 5%;
}

.board .container {
	padding-left: 90px;
}

footer {
	margin-top: 10%;
}
/* td{
	text-align: center;
} */
</style>
<body>
	<div class="aside">
		<jsp:include page="/template/admin_aside.jsp" />
	</div>
	<div class="board">
		<div class="row">
			<div class="container">
				<!-- Start Page Content -->
				<div class="row">
					<div class="checkbox">
						<label><input type="checkbox" value="">전체선택</label>&nbsp;
						<button class="btn btn-success">승인</button>
					</div>
					<div class="col-6">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">파워링크</h4>
								<table
									class="table table-hover table-condensed text-align=center; ">
									<thead>
										<tr>
											<th></th>
											<th>글번호</th>
											<th>글제목</th>
											<th>아이디</th>
											<th>게시일</th>
											<th>조회수</th>

										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
												<div class="checkbox">
													<label><input type="checkbox" value=""></label>
												</div>
											</td>
											<td>5</td>
											<td>System Architect</td>
											<td>Edinburgh</td>
											<td>2018/05/10</td>
											<td>10</td>
										</tr>
										<tr>
											<td>
												<div class="checkbox">
													<label><input type="checkbox" value=""></label>
												</div>
											</td>
											<td>4</td>
											<td>Accountant</td>
											<td>Tokyo</td>
											<td>2018/05/08</td>
											<td>33</td>
										</tr>
										<tr>
											<td>
												<div class="checkbox">
													<label><input type="checkbox" value=""></label>
												</div>
											</td>
											<td>3</td>
											<td>Integration Specialist</td>
											<td>New York</td>
											<td>2018/05/02</td>
											<td>61</td>
										</tr>
										<tr>
											<td>
												<div class="checkbox">
													<label><input type="checkbox" value=""></label>
												</div>
											</td>
											<td>2</td>
											<td>Sales Assistant</td>
											<td>San Francisco</td>
											<td>2018/05/01</td>
											<td>59</td>
										</tr>
										<tr>
											<td>
												<div class="checkbox">
													<label><input type="checkbox" value=""></label>
												</div>
											</td>
											<td>1</td>
											<td>Integration Specialist</td>
											<td>Tokyo</td>
											<td>2010/10/14</td>
											<td>55</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
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
</body>
</html>