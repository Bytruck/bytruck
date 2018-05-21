<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
</style>
<body>
	<div class="posted">
		<div class="container-flud">
			<div class="col-lg-offset-2 col-lg-8 col-lg-offset-2">
				<form action="chat.jsp" method="post" encType="multiplart/form-data">
					<div class="id">
						<div class="form-group">
							<label>아이디</label> <input type="text" class="form-control"
								readonly>
						</div>
					</div>
					<div class="content">
						<textarea cols="10" placeholder="내용을 입력하세요. " name="content"
							class="form-control"></textarea>
					</div>
					<div class="bt">
						<a class="btn btn-primary pull-left" href="chat.jsp">등록</a>
					</div>
				</form>
			</div>
		</div>
	</div>
	<div class="comments">
		<div class="container-flud">
			<div class="col-lg-offset-2 col-lg-8 col-lg-offset-2">
				<div class="chat_list">
					<ul class="list-group">
						<li class="list-group-item">
							<div>
								<label>User1</label>
							</div> <small class="pull-right text-muted">10.12.2014 in 12:56</small>
							<div>
								<small class="list-group-item-heading text-muted text-primary">User1</small>
								<p class="list-group-item-text">Hi! this message is FOR you.
								</p>
							</div>
						</li>
						<li class="list-group-item">
							<div>
								<label>User2</label>
							</div> <small class="pull-right text-muted">10.12.2014 in 12:57</small>
							<div>
								<small class="list-group-item-heading text-muted">You</small>
								<p class="list-group-item-text">This response message FROM
									you.</p>
							</div>
						</li>
						<li class="list-group-item">
							<div>
								<label>User3</label>
							</div> <small class="pull-right text-muted">10.12.2014 in 12:58</small>
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
							</div> <small class="pull-right text-muted">10.12.2014 in 12:58</small>
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
							</div> <small class="pull-right text-muted">10.12.2014 in 12:58</small>
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
							<div class="pull-left hidden-xs">
								<div>
									<label>User3</label>
								</div>
							</div> <small class="pull-right text-muted">10.12.2014 in 12:58</small>
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
							<div class="pull-left hidden-xs">
								<div>
									<label>User3</label>
								</div>
							</div> <small class="pull-right text-muted">10.12.2014 in 12:58</small>
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
</body>
</html>
