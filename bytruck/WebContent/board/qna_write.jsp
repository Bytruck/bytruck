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
<title>qna_write.jsp</title>
</head>
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
				<br>
				<!-- END BREADCRUMBS -->
				<!-- BASIC INPUT -->
				<div class="page-header">
					<div class="row">
						<div class=col-lg-12">
							<h1 align="center">
								<b>Q&A</b>
							</h1>
							<p align="center">
								<b>Q&A를 작성하세요.</b>
							</p>
						</div>
					</div>
				</div>
				<div class="panel panel-default">
					<div class="panel-heading">
						<h2 class="panel-title section-heading no-margin">Q&A 작성</h2>
					</div>
					<div class="panel-body">
						<form id="formwrite">
							<div class="form-horizontal">
								<div class="form-group">
								<label class="col-md-1 control-label">분류</label>
									<div class="col-md-11">
									<select class="form-control"
										id="sel1" style="width: auto;">
										<option>관리자</option>
										<option>여행자</option>
										<option>푸드트럭</option>
									</select>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-1 control-label">제목</label>
									<div class="col-md-11">
										<input type="text" class="form-control" name="title"
											placeholder="제목을 입력하세요">
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-1 control-label">내용</label>
									<div class="col-md-11">
										<textarea class="form-control" name="detail"
											placeholder="내용을 입력하세요" rows="15"></textarea>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-1 control-label">공개여부</label>
									<div class="col-md-11">
									<div class="checkbox">
										<label><input type="checkbox" value="">공개</label>&nbsp;&nbsp; <label><input
											type="checkbox" value="">비공개</label>
									</div>
									</div>
								</div>
							</div>
							<div class="button-group col-lg-offset-2 col-lg-8">
								<!-- <input type="submit" class="btn btn-success col-lg-4 col-lg-offset-1" value="글쓰기"> -->
								 <a class="btn btn-success col-lg-4 col-lg-offset-1"
									id="register" href="<%=root%>/board/qna.jsp">등록</a> <a
									class="btn btn-danger col-lg-4 col-lg-offset-1" id="cancel"
									href="<%=root%>/board/qna.jsp">취소</a> 
							</div>
						</form>
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