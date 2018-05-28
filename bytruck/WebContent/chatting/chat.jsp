<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.board {
	padding-top: 10%;
}

.board .page-header {
	margin-top: 0;
}
.posted {
	padding-top: 10%;
}

.form-group {
	width: 40%;
}

.content {
	width: 60%;
}

.bt {
	padding-top: 2%;
}
 @media ( max-width : 768px) {
	.chat_list .list-group-item {
		min-height: inherit;
	}
}

.chat_list .list-group-item-text {
	word-wrap: break-word;
	display: flex;
	overflow: auto;
}

.chat_list .pull-left {
	/* width: 55px; */
	text-align: center;
}

.chat_list {
	/* padding-top : 10%; */
	margin-top:10%;
	width: 500px; 
	height: 200px;
	overflow:auto;
} 
.page{
	margin-top:10%;
}
</style>
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
			<ol class="breadcrumb link-accent separator-arrow">
					<li><a href="<%=root%>/index.jsp" title="Home"><i
							class="fa fa-home"></i></a></li>
					<li><a href="<%=root%>/board/qna.jsp" title="Home">Q&A</a></li>
					<li><a href="<%=root%>/board/faq.jsp" title="Home">FAQ</a></li>
					<li class="active">타임라인</li>
				</ol>
				<div class="page-header">
					<div class="row">
						<div class=col-lg-12">
							<h1 align="center">
								<b>타임라인</b>
							</h1>
							<p align="center">
								<b>자유롭게 이야기를 나누는 공간입니다.</b>
							</p>
						</div>
					</div>
				</div>
			 <div class="col-lg-offset-3 col-lg-6 col-lg-offset-3"> 
				<form action="chat.jsp" method="post" encType="multiplart/form-data">
					<div class="id">
						<div class="form-group">
							<label>아이디</label> <input type="text" class="form-control"
								readonly>
						</div>
					</div>
					<div class="content">
						<textarea cols="20" placeholder="내용을 입력하세요. " name="content"
							class="form-control"></textarea>
					</div>
					<div class="bt">
						<a class="btn btn-primary pull-left" href="chat.jsp">등록</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	</div>
	<div class="container">
		<div class= "row">
		<div class="col-lg-offset-3 col-lg-6 col-lg-offset-3"> 
				<div class="chat_list">
					<ul class="list-group">
						<li class="list-group-item">
								<div>
									<label>User1</label>
								</div>
							<small class="text">10.12.2014 in 12:56</small>
							<div>
								<small class="list-group-item-heading text-muted text-primary">User1</small>
								<p class="list-group-item-text">Hi! this message is FOR you.
								</p>
							</div>
						</li>
						<li class="list-group-item">
								<div>
									<label>User2</label>
								</div>
								<small class="text">10.12.2014 in 12:57</small>
							<div>
								<small class="list-group-item-heading text-muted">You</small>
								<p class="list-group-item-text">This response message FROM
									you.</p>
							</div>
						</li>
						<li class="list-group-item">
								<div>
									<label>User3</label>
								</div>
							<small class="text">10.12.2014 in 12:58</small>
							<div>
								<small class="list-group-item-heading text-muted text-primary">User2</small>
								<p class="list-group-item-text">Very long text. He correctly
									displayed. Very long text. He correctly displayed. Very long
									text. He correctly displayed. Very long text. He correctly
									displayed. Very long text. He correctly displayed. Very long
									text. He correctly displayed. Very long text. He correctly
									displayed. Very long text. He correctly displayed.</p>
							</div>
						</li>
						<li class="list-group-item">
								<div>
									<label>User3</label>
								</div>
								<small class="pull-right text-muted">10.12.2014 in 12:58</small>
							<div>
								<small class="list-group-item-heading text-muted text-primary">User2</small>
								<p class="list-group-item-text">Very long text. He correctly
									displayed. Very long text. He correctly displayed. Very long
									text. He correctly displayed. Very long text. He correctly
									displayed. Very long text. He correctly displayed. Very long
									text. He correctly displayed. Very long text. He correctly
									displayed. Very long text. He correctly displayed.</p>
							</div>
						</li>
						<li class="list-group-item">
								<div>
									<label>User3</label>
								</div>
								 <small class="pull-right text-muted">10.12.2014 in 12:58</small>
							<div>
								<small class="list-group-item-heading text-muted text-primary">User2</small>
								<p class="list-group-item-text">Very long text. He correctly
									displayed. Very long text. He correctly displayed. Very long
									text. He correctly displayed. Very long text. He correctly
									displayed. Very long text. He correctly displayed. Very long
									text. He correctly displayed. Very long text. He correctly
									displayed. Very long text. He correctly displayed.</p>
							</div>
						</li>
						<li class="list-group-item">
								<div>
									<label>User3</label>
								</div>
							<small class="pull-right text-muted">10.12.2014 in 12:58</small>
							<div>
								<small class="list-group-item-heading text-muted text-primary">User2</small>
								<p class="list-group-item-text">Very long text. He correctly
									displayed. Very long text. He correctly displayed. Very long
									text. He correctly displayed. Very long text. He correctly
									displayed. Very long text. He correctly displayed. Very long
									text. He correctly displayed. Very long text. He correctly
									displayed. Very long text. He correctly displayed.</p>
							</div>
						</li>
						<li class="list-group-item">
								<div>
									<label>User3</label>
								</div>
							 	<small class="pull-right text-muted">10.12.2014 in 12:58</small>
							<div>
								<small class="list-group-item-heading text-muted text-primary">User2</small>
								<p class="list-group-item-text">Very long text. He correctly
									displayed. Very long text. He correctly displayed. Very long
									text. He correctly displayed. Very long text. He correctly
									displayed. Very long text. He correctly displayed. Very long
									text. He correctly displayed. Very long text. He correctly
									displayed. Very long text. He correctly displayed.</p>
							</div>
						</li>
					</ul>
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
</body>
</html>