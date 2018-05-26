<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
String root = request.getContextPath();
%>
<head>
<!-- include libraries(jQuery, bootstrap) --> 
	<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
	<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<!-- include summernote-ko-KR --> 
<%-- <script src="<%=root%>/dist/lang/summernote-ko-KR.js"></script> --%>
<!-- include summernote css/js-->
<link href="<%=root%>/dist/summernote.css" rel="stylesheet">
<script src="<%=root%>/dist/summernote.js"></script>
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
<script>
            $(document).ready(function() {
                $('.summernote').summernote({ // summernote를 사용하기 위한 선언
                    height: 400,
					callbacks: { // 콜백을 사용
                        // 이미지를 업로드할 경우 이벤트를 발생
					    onImageUpload: function(files, editor, welEditable) {
						    sendFile(files[0], this);
						}
					}
				});       
            /* summernote에서 이미지 업로드시 실행할 함수 */
    	 	function sendFile(file, editor) {
                // 파일 전송을 위한 폼생성
    	 		data = new FormData();
    	 	    data.append("uploadFile", file);
    	 	   // alert(data);
    	 	    $.ajax({ // ajax를 통해 파일 업로드 처리
    	 	        data : data,
    	 	        type : "POST",
    	 	        url : "<%=root%>/adboard/summernote_imageUpload.jsp",
    	 	        cache : false,
    	 	        contentType : false,
    	 	        processData : false,
    	 	        success : function(data) { // 처리가 성공할 경우
                        // 에디터에 이미지 출력
                        alert("성공????")	;
    	 	        	$(editor).summernote('editor.insertImage', data.url);
    	 	        }, 
    	 	        error : function(e) {alert("에러!" + e);}
    	 	    });
    	 	}
          }); 
 </script>
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