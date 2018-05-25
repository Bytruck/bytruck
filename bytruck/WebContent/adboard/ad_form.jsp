<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String root = request.getContextPath();
%>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(function() {
		$('a[id=cancel]').click(function() {
			alert("취소하시면 작성하신 글이 사라지게 됩니다. \n 정말 작성 취소하시겠습니까?");

		});
	});
</script>
</head>
<style>
.board {
	padding-top: 10%;
}

.board .page-header {
	margin-top: 0;
}

#cancel, #register {
	margin-right: 10px;
}
</style>
<body>
	<div class="row">
		<div class="container-fluid">
			<div class="col-lg-12">
				<header>
					<jsp:include page="/template/header.jsp" />
				</header>
			</div>
		</div>
	</div>
	<div class="board">
		<div class="row">
			<div class="container">
				<!-- BREADCRUMBS -->
				<ol class="breadcrumb link-accent separator-arrow">
					<li><a href="<%=root%>>/index.jsp" title="Home"><i
							class="fa fa-home"></i></a></li>
					<li><a href="<%=root%>/event/event.jsp">이벤트 소개</a></li>
					<li><a href="<%=root%>/adboard/normal_ad.jsp">배너광고 신청</a></li>
					<li class="active">광고신청 글 작성</li>
				</ol>
				<!-- END BREADCRUMBS -->
				<!-- BASIC INPUT -->
				<div class="page-header">
					<div class="row">
						<div class=col-lg-12">
							<h1 align="center">
								<b>배너광고 신청</b>
							</h1>
							<p align="center">
								<b>배너광고 신청 글을 작성해주세요.</b>
							</p>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h2 class="panel-title section-heading no-margin">광고신청 글 작성</h2>
					</div>
					<div class="panel-body">
						<div class="form-horizontal">
							<div class="form-group">
								<label class="col-md-1 control-label">제목</label>
								<div class="col-md-11">
									<input type="text" class="form-control" placeholder="제목을 입력하세요">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-1 control-label">비밀번호</label>
								<div class="col-md-10">
									<input type="password" class="form-control" value="asecret">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-1 control-label">내용</label>
								<div class="col-md-11">
									<textarea class="form-control" placeholder="내용을 입력하세요"
										rows="15"></textarea>
								</div>
							</div>
							<div class="form-group">
								<label for="exampleInputFile" class="col-md-1 control-label">첨부파일</label>
								<div class="col-md-10">
									<input type="file" id="exampleInputFile">
									<p class="help-block">
										<em>첨부파일을 선택하세요.</em>
									</p>
								</div>
							</div>
						</div>
						<div class="button-group col-lg-offset-2 col-lg-8">
							<a class="btn btn-success col-lg-4 col-lg-offset-1" id="register"
								href="<%=root%>/adboard/normal_ad.jsp">등록</a> <a
								class="btn btn-danger col-lg-4 col-lg-offset-1" id="cancel"
								href="<%=root%>/adboard/normal_ad.jsp">취소</a>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<div class="foot">
		<div class="row">
			<div class="container-fluid">
				<div class="col-lg-12">
					<footer>
						<jsp:include page="/template/footer.jsp" />
					</footer>
				</div>
			</div>
		</div>
	</div>
</body>
</html>