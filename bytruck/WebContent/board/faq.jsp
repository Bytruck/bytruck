<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%String root = request.getContextPath();%>
<!DOCTYPE html>

  <header>
 	<jsp:include page = "/template/header.jsp"/>
  </header>

<style>
div.container {
	padding-right: 20%;
}

div.panel-group {
	padding-left: 10%;
}

div.head {
	padding-left: 10%;
}
</style>
<body>
	<!-- TOP FAQs -->

	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container">
		<div class="head">
			<h2>자주 묻는 질문</h2>
		</div>
		<div class="panel-group">
			<br>
			<div class="container">
				<!-- TOP FAQs -->
				<h2>Top 5 </h2>
				
				<div class="panel-group panel-group-faq top-faq">									
					<div class="panel panel-minimal">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="<%=root%>/top-faq2" class="collapsed">바이트럭 이용가이드 # 여행계획편</a>
							</h4>
						</div>
						<div id="top-faq2" class="panel-collapse collapse"
							style="height: 0px;">
							<div class="panel-body">
								<p>dsaasdasd</p>
							
							</div>
						</div>
					</div>															
					
					
					<div class="panel panel-minimal">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="<%=root%>/top-faq2" class="collapsed">바이트럭 이용가이드 # 푸드트럭 등록방법</a>
							</h4>
						</div>
						<div id="top-faq2" class="panel-collapse collapse"
							style="height: 0px;">
							<div class="panel-body">
								<p>dsaasdasd</p>
							
							</div>
						</div>
					</div>
					<div class="panel panel-minimal">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="<%=root%>/top-faq3" class="collapsed">바이트럭 이용가이드 # 랭킹은 어떻게 정해지나요?</a>
							</h4>
						</div>
						<div id="top-faq3" class="panel-collapse collapse"
							style="height: 0px;">
							<div class="panel-body">
								<p>dsaasdasd</p>
							
							</div>
						</div>
					</div>
					<div class="panel panel-minimal">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="<%=root%>/top-faq4" class="collapsed">바이트럭 이용가이드 # 광고를 하려면 어떻게 해야 하죠?</a>
							</h4>
						</div>
						<div id="top-faq4" class="panel-collapse collapse"
							style="height: 0px;">
							<div class="panel-body">
								<p>dsaasdasd</p>
							
							</div>
						</div>
					</div>
					<div class="panel panel-minimal">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="<%=root%>/top-faq5" class="collapsed">바이트럭 이용가이드 # 스타 쉐프는 누구누구 있나요?</a>
							</h4>
						</div>
						<div id="top-faq5" class="panel-collapse collapse"
							style="height: 0px;">
							<div class="panel-body">
								<p>dsaasdasd</p>
							
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="bt" style="margin-left: 100%;margin-top: 5%;">
				<button type="button" class="btn btn-default"><a href="<%=root%>/faq_write.jsp">글쓰기</a></button>  
			</div>
		</div>
	</div>

	<!-- END TOP FAQs -->
	<div class="center-block" style="width: 300px; padding: 15px;">
		<ul class="pagination pagination-lg">
			<li class="active"><a href="faq.jsp">1</a></li>
			<li><a href="faq2.jsp">2</a></li>
			<li><a href="#">3</a></li>
			<li><a href="#">4</a></li>
			<li><a href="#">5</a></li>
		</ul>
	</div>


	<!-- FOOTER -->
	<footer>
		<div">
			<jsp:include page = "/template/footer.jsp"/>
		</div>
	</footer>
	</div>

</body>