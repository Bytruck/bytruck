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
.board .container{
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
					<div class="col-6">
						<div class="card">
							<div class="card-body">
								<h4 class="card-title">회원목록</h4>
								<table
									class="table table-hover table-condensed text-align=center; ">
									<thead>
										<tr>
											<th></th>
											<th>아이디</th>
											<th>이름</th>
											<th>생년월일</th>
											<th>휴대번호</th>
											<th>이메일</th>
											<th>사업자번호</th>
											<th>분류</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>
												<div class="checkbox">
													<label><input type="checkbox" value=""></label>
												</div>
											</td>
											<td>CL</td>
											<td>황채린</td>
											<td>1993.05.12</td>
											<td>010-1234-5678</td>
											<td>abcd@gmail.com</td>
											<td>null</td>
											<td>AD</td>
										</tr>
										<tr>
											<td>
												<div class="checkbox">
													<label><input type="checkbox" value=""></label>
												</div>
											</td>
											<td>SM</td>
											<td>이종민</td>
											<td>1991.01.12</td>
											<td>010-1234-1234</td>
											<td>ddd@naver.com</td>
											<td>null</td>
											<td>TR</td>
										</tr>
										<tr>
											<td>
												<div class="checkbox">
													<label><input type="checkbox" value=""></label>
												</div>
											</td>
											<td>EJ</td>
											<td>이은진</td>
											<td>1992.09.10</td>
											<td>010-1111-2222</td>
											<td>aaa@naver.com</td>
											<td>null</td>
											<td>TR</td>
										</tr>
										<tr>
											<td>
												<div class="checkbox">
													<label><input type="checkbox" value=""></label>
												</div>
											</td>
											<td>SB</td>
											<td>신솔비</td>
											<td>1993.08.02</td>
											<td>010-0000-0000</td>
											<td>bbb@naver.com'</td>
											<td>null</td>
											<td>TR</td>
										</tr>
										<tr>
											<td>
												<div class="checkbox">
													<label><input type="checkbox" value=""></label>
												</div>
											</td>
											<td>MS</td>
											<td>김민수</td>
											<td>1991.01.02</td>
											<td>010-1111-1111</td>
											<td>ccc@naver.com</td>
											<td>null</td>
											<td>TR</td>
										</tr>
											<tr>
											<td>
												<div class="checkbox">
													<label><input type="checkbox" value=""></label>
												</div>
											</td>
											<td>jigak</td>
											<td>또지각</td>
											<td>1998.03.23</td>
											<td>010-2222-2222</td>
											<td>abcd@naver.com</td>
											<td>null</td>
											<td>BK</td>
										</tr>
											<tr>
											<td>
												<div class="checkbox">
													<label><input type="checkbox" value=""></label>
												</div>
											</td>
											<td>saem</td>
											<td>안효인</td>
											<td>1978.10.20</td>
											<td>010-3333-3333</td>
											<td>efgd@naver.com</td>
											<td>null</td>
											<td>TR</td>
										</tr>
											<tr>
											<td>
												<div class="checkbox">
													<label><input type="checkbox" value=""></label>
												</div>
											</td>
											<td>bfgu</td>
											<td>차은우</td>
											<td>1997.03.30</td>
											<td>010-4444-4444</td>
											<td>idol@naver.com</td>
											<td>null</td>
											<td>BK</td>
										</tr>
											<tr>
											<td>
												<div class="checkbox">
													<label><input type="checkbox" value=""></label>
												</div>
											</td>
											<td>taeri</td>
											<td>김태리</td>
											<td>1990.04.24</td>
											<td>010-5555-5555</td>
											<td>taeri@naver.com</td>
											<td>null</td>
											<td>BK</td>
										</tr>
											<tr>
											<td>
												<div class="checkbox">
													<label><input type="checkbox" value=""></label>
												</div>
											</td>
											<td>saem</td>
											<td>김명섭</td>
											<td>1986.03.09</td>
											<td>010-1234-1234</td>
											<td>fff@naver.com</td>
											<td>null</td>
											<td>BK</td>
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