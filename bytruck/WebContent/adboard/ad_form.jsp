<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String root = request.getContextPath();
%>
<head>
<!-- include libraries(jQuery, bootstrap) --> 
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
  <script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<!-- include summernote-ko-KR --> 
<%-- <script src="<%=root%>/dist/lang/summernote-ko-KR.js"></script> --%>
<!-- include summernote css/js-->
<link href="<%=root%>/dist/summernote.css" rel="stylesheet">
<script src="<%=root%>/dist/summernote.js"></script>
</head>
<script>
 $(function() {
	 $('.summernote').summernote({
	      height: 300,          // 기본 높이값
	      minHeight: null,      // 최소 높이값(null은 제한 없음)
	      maxHeight: null,      // 최대 높이값(null은 제한 없음)
	      focus: true,          // 페이지가 열릴때 포커스를 지정함
	      lang: 'ko-KR'         // 한국어 지정(기본값은 en-US)
	      
	    });
	 $('a[id=cancel]').click(function() {
			alert("취소하시면 작성하신 글이 사라지게 됩니다. \n 정말 작성 취소하시겠습니까?");

		}); 
	});
</script>
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
       							 <label for="content" class="col-md-1 control-label">내용</label>
       							 <div class="col-md-11">
         							 <textarea name="content" id="content" class="summernote"></textarea>
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