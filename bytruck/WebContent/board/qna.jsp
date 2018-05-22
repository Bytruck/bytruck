<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.board {
	padding-top: 10%;
}

.board .page-header {
	margin-top: 0;
}
</style>
<title>qna.jsp</title>
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
	<div class="board">
		<div class="row">
			<div class="container">
				<!-- BREADCRUMBS -->
				<ol class="breadcrumb link-accent separator-arrow">
					<li><a href="<%=root%>/index.jsp" title="Home"><i
							class="fa fa-home"></i></a></li>
					<li class="active">Q&A</li>
					<li><a href="<%=root%>/board/faq.jsp" title="Home">FAQ</a></li>
					<li><a href="<%=root%>/chatting/chat.jsp" title="Home">타임라인</a></li>
				</ol>
				<!-- END BREADCRUMBS -->
				<div class="page-header">
					<div class="row">
						<div class=col-lg-12">
							<h1 align="center">
								<b>Q&A</b>
							</h1>
							<p align="center">
								<b>BYTRUCK은 여러분의 소리에 귀를 기울이고 있습니다.</b>
							</p>
						</div>
					</div>
				</div>
				<div align="left" class="col-lg-offset-6 col-lg-6"
					style="padding-bottom: 10px">
					<select class="col-lg-3 col-lg-offset-1" id="type"
						style="height: 25px; vertical-align: top;">
						<option value="">검색</option>
						<option value="title">제목</option>
						<option value="detail">내용</option>
					</select> <input type="text" class="col-lg-6">
					<button class="col-lg-2 btn btn-info"
						style="height: 26px; line-height: 26px; padding: 0 15px;">검색</button>
				</div>
				<table class="table table-hover table-condensed">
					<thead>
						<tr>
							<th>글번호</th>
							<th>글제목</th>
							<th>게시일</th>
							<th>조회수</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>8</td>
							<td><a href="<%=root%>/qna_detail.jsp">우리집에서 구디까지 의거리는
									얼마나 될까?</a></td>
							<td>2018.05.01</td>
							<td>10</td>
						</tr>
						<tr>
							<td>7</td>
							<td><a href="<%=root%>/qna_detail.jsp">이번주 일요일에 자전거 타고
									여행을 떠날거에요...</a></td>
							<td>2018.05.01</td>
							<td>21</td>
						</tr>
						<tr>
							<td>6</td>
							<td><a href="<%=root%>/qna_detail.jsp">즐거운 일요일 바이트럭
									고마워요!</a></td>
							<td>2018.05.01</td>
							<td>15</td>
						</tr>
						<tr>
							<td>5</td>
							<td><a href="<%=root%>/qna_detail.jsp">새우푸드트럭은 어디에 있나요?</a></td>
							<td>2018.04.28</td>
							<td>33</td>
						</tr>
						<tr>
							<td>4</td>
							<td><a href="<%=root%>/qna_detail.jsp">푸드 트럭은 언제 까지 하나요?</a></td>
							<td>2018.04.28</td>
							<td>109</td>
						</tr>
						<tr>
							<td>3</td>
							<td><a href="<%=root%>/qna_detail.jsp">푸드트럭 이용 시간은
									언제까지일까요?</a></td>
							<td>2018.04.28</td>
							<td>22</td>
						</tr>
						<tr>
							<td>2</td>
							<td><a href="<%=root%>/qna_detail.jsp">동호회를 만들고 싶어요</a></td>
							<td>2018.04.25</td>
							<td>14</td>
						</tr>
						<tr>
							<td>1</td>
							<td><a href="<%=root%>/qna_detail.jsp">3박4일 자전거 코스를
									만들고싶은데 사이트좀 업데이트 해주세요</a></td>
							<td>2018.04.24</td>
							<td>5</td>
						</tr>
					</tbody>
				</table>
				<a class="btn btn-success pull-right"
					href="<%=root%>/board/qna_write.jsp">글쓰기</a>
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