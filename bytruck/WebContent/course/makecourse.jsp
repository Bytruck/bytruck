<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<head>
<title>makecourse.jsp</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</head>
<style>
.board {
	padding-top: 10%;
}

.board .page-header {
	margin-top: 0;
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
	<script>
	 $(function(){
		 $('button.btnapply').click(function(){
			 console.log("일정등록 클릭확인");
 				$.ajax({
					method:'POST',
					url:'<%=root%>/boarddetail.bt',
					data:{num:'2'},
					success: function(data){
						alert("성공");
						$('.board').html(data);
					}
				});	 
		});
	});
	</script>
	<div class="board">
		<div class="row">
			<div class="container">
				<ol class="breadcrumb link-accent separator-arrow">
					<li><a href="<%= request.getContextPath() %>/index.jsp" title="Home"><i
							class="fa fa-home"></i></a></li>
					<li><a href="<%= request.getContextPath() %>/course/viewcourse.jsp" title="Home">코스소개</a></li>
					<li class="active">코스짜기</li>
					<li><a href="<%= request.getContextPath() %>/course/reviewboard.jsp" title="Home">코스후기</a></li>
				</ol>
				<div class="page-header">
					<div class="row">
						<div class=col-lg-12">
							<h1 align="center">
								<b>COURCE</b>
							</h1>
							<p align="center">
								<b>나만의 여행코스를 계획하세요.</b>
							</p>
						</div>
					</div>
				</div>
				<div class="container">
					<div class="row">
						<div class="col-sm-2 sidenav">
							<div class="trip">
								<h5>지역을 선택해주세요</h5>
								<select class="form-control">
									<option value="SU">서울시</option>
									<option value="GG">경기도</option>
									<option value="GY">강원도</option>
									<option value="CC">충청도</option>
									<option value="JL">전라도</option>
									<option value="KS">경상도</option>
									<option value="JJ">제주도</option>
								</select><br>
								<div class="result"></div>
								<h5>출발일을 선택해 주세요</h5>
								<div class="dropdown">
									<span class="input-group-addon"><i
										class="fa fa-calendar"></i></span> <input type="date"
										class="form-control" name="opendate" id="opendate"
										placeholder="Openday(ex.YYYY/MM/DD)">
								</div>
							</div>
							<div class="option">
								<h3>
									<b>세부옵션사항</b>
								</h3>
									<label><input type="radio" name="withradio" value="solo">나만보기</label><br>
									<label><input type="radio" name="withradio" value="couple">동행가능</label>
							</div>
						</div>
						<div class="col-sm-10">
							<div class="col-md-9">
								<%@include file="naver.html"%><br>
								<label>제목 :</label>&nbsp;&nbsp;<input type="text"
									class="form-control" required><br> <label>일정
									:</label><br>
								<textarea class="form-control" rows="8   "></textarea>
								<br> <label><input type="radio" name="optradio">나만보기</label>
								<label><input type="radio" name="optradio">전체공개</label><br>
								<button type="submit" class="btnapply"
									style="margin: 10px auto 0; display: block; width: 150px; font-weight: bold; padding: 0; line-height: 32px;">
									일정등록</button>
							</div>
							<div class="col-md-3">
								<img src="<%=root%>/images/weather.png" alt="Weather"
									width="200" height="250"><br> <br>
								<%@include file="/template/top123.jsp"%>
							</div>
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