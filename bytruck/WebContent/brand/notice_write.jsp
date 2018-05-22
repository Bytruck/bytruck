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
<title>notice_write.jsp</title>
</head>
<script>
	$(function() {
		$('a[id=cancel]').click(function() {
			alert("취소하시면 작성하신 글이 사라지게 됩니다. \n 정말 작성 취소하시겠습니까?");

		});
		
		$("button#register").click(function() {
			$.ajax({
				url: 'boardwrite.bt',
				method: 'POST',
				success:function(data){
					
				}

			});
		});
	});
</script>
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
					<li><a href="<%=root %>/index.jsp" title="Home"><i
							class="fa fa-home"></i></a></li>
					<li><a href="<%=root %>/brand/summary.jsp" title="Home">브랜드</a></li>
					<li><a href="<%=root %>/brand/notice.jsp" title="Home">공지사항</a></li>
					<li class="active">공지사항 작성</li>
				</ol>
				<br>
				<!-- END BREADCRUMBS -->
				<!-- BASIC INPUT -->
				<div class="page-header">
					<div class="row">
						<div class=col-lg-12">
							<h1 align="center">
								<b>공지사항</b>
							</h1>
							<p align="center">
								<b>BYTRUCK의 공지사항을 작성하세요.</b>
							</p>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h2 class="panel-title section-heading no-margin">공지사항 작성</h2>
					</div>
					<div class="panel-body">
						<div class="form-horizontal">
							<div class="form-group">
								<label class="col-md-1 control-label">제목</label>
								<div class="col-md-11">
									<input type="text" class="form-control" name="title" placeholder="제목을 입력하세요">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-1 control-label">내용</label>
								<div class="col-md-11">
									<textarea class="form-control" name="detail" placeholder="내용을 입력하세요"
										rows="15"></textarea>
								</div>
							</div>
						</div>
						<div class="button-group col-lg-offset-2 col-lg-8">
							<input type="submit" class="btn btn-success col-lg-4 col-lg-offset-1" value="글쓰기">
							<a class="btn btn-success col-lg-4 col-lg-offset-1" id="register"
								href="<%=root %>/brand/notice.jsp">등록</a> <a
								class="btn btn-danger col-lg-4 col-lg-offset-1" id="cancel"
								href="<%=root %>/brand/notice.jsp">취소</a>
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
						<%@include file="/template/footer.jsp"%>
					</footer>
				</div>
			</div>
		</div>
	</div>
</body>
</html>