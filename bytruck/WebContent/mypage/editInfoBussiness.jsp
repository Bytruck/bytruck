<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
.board {
	padding-top: 10%;
}
</style>
<title>editInfoBussiness.jsp</title>

<!-- NAVBAR
================================================== -->
<script>
	$(function() {
		$('div>div>input[type=radio]').click(function() {
			if ($('div>div>input[id=r_pn1]').prop('checked')) {
				$('div>div[id=div_private]').css('display', 'block');
				$('div>div[id=div_foodtruck]').css('display', 'none');
			} else if ($('div>div>input[id=r_pn2]').prop('checked')) {
				$('div>div[id=div_private]').css('display', 'none');
				$('div>div[id=div_foodtruck]').css('display', 'block');
			}
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
	<!-- Carousel
    ================================================== -->
	<div class="board">
		<div class="row">
			<div class="container">
				<!-- BREADCRUMBS -->
				<ol class="breadcrumb link-accent separator-arrow">
					<li><a href="<%=root %>/index.jsp" title="Home"><i
							class="fa fa-home"></i></a></li>
					<li><a href="<%=root %>/mypage/mypage_bussiness.jsp" title="Home">마이페이지</a></li>
					<li class="active">정보 수정</li>
				</ol>
				<!-- END BREADCRUMBS -->
				<div class="col-lg-offset-1 col-lg-10 col-lg-offset-1">
					<div class="col-lg-10 col-lg-offset-1">
						<h3>정보 수정</h3>
						<p>회원님의 정보를 수정하실 수 있습니다.(개인정보, 푸드트럭정보)</p>
						<hr>
						<div class="section section_find">
							<!-- [D] 선택시 selected 클래스 추가 -->
							<div class="col-md-6" align="center">
								<input type="radio" id="r_pn1" class="input_rd"
									name="certification" checked="checked" value="private">
								<label for="r_pn1" class="label_rd">개인 정보 수정</label>
							</div>
							<div class="col-md-6" align="center">
								<input type="radio" id="r_pn2" class="input_rd"
									name="certification" value="foodtruck"> <label
									for="r_pn2" class="label_rd">푸드트럭 정보 수정</label>
							</div>
							<br> <br>
							<!-- 개인 정보 영역 -->
							<div id="div_private" class="box_inn jumbotron">
								<div class="box_inn_sub">
									<form class="form-horizontal" role="form">
										<div class="form-group">
											<label for="id" class="control-label sr-only">ID</label>
											<div class="col-sm-8 col-sm-offset-2">
												<div class="input-group">
													<span class="input-group-addon" type="readonly"><i
														class="fa fa-globe"></i></span>
													<text type="text" class="form-control" id="id"
														readonly="readonly">사용자 id 넣기</text>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="username" class="control-label sr-only">Username</label>
											<div class="col-sm-8 col-sm-offset-2">
												<div class="input-group">
													<span class="input-group-addon"><i
														class="fa fa-user"></i></span>
													<text type="text" class="form-control" id="username"
														readonly="readonly">사용자 이름 넣기</text>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="password" class="control-label sr-only">Password</label>
											<div class="col-sm-8 col-sm-offset-2">
												<div class="input-group">
													<span class="input-group-addon"><i
														class="fa fa-lock"></i></span> <input type="password"
														class="form-control" id="password" placeholder="Password">
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="password2" class="control-label sr-only">Repeat
												Password</label>
											<div class="col-sm-8 col-sm-offset-2">
												<div class="input-group">
													<span class="input-group-addon"><i
														class="fa fa-lock"></i></span> <input type="password"
														class="form-control" id="password2"
														placeholder="Repeat Password">
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="email" class="control-label sr-only">Email</label>
											<div class="col-sm-8 col-sm-offset-2">
												<div class="input-group">
													<span class="input-group-addon"><i
														class="fa fa-envelope"></i></span> <input type="email"
														class="form-control" id="email" placeholder="Email">
													<!-- null값이면 원래 이메일 넣기 -->
												</div>
											</div>
										</div>

										<div class="form-group">
											<label for="birthday" class="control-label sr-only">Birthday</label>
											<div class="col-sm-8 col-sm-offset-2">
												<div class="input-group">
													<span class="input-group-addon"><i
														class="fa fa-calendar"></i></span>
													<text type="date" class="form-control" id="birthday"
														readonly="readonly">사용자 생년월일 넣기</text>
												</div>
											</div>
										</div>

										<div class="form-group">
											<label for="tel" class="control-label sr-only">Tel</label>
											<div class="col-sm-8 col-sm-offset-2">
												<div class="input-group">
													<span class="input-group-addon"><i
														class="fa fa-phone"></i></span> <input type="tel"
														class="form-control" id="tel"
														placeholder="Tel(ex.000-0000-0000)">
												</div>
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-8 col-sm-offset-2">
												<a type="submit" class="btn btn-success btn-block"
													href="mypageBussiness.jsp"> <i
													class="fa fa-check-circle"></i> 수 정 완 료
												</a>
											</div>
										</div>
									</form>
								</div>
							</div>

							<!-- 푸드트럭 정보 영역 -->
							<div id="div_foodtruck" class="box_inn jumbotron"
								style="display: none;">
								<div class="box_inn_sub">
									<form class="form-horizontal" role="form">
										<div class="form-group">
											<label for="storename" class="control-label sr-only">상호명</label>
											<div class="col-sm-8 col-sm-offset-2">
												<div class="input-group">
													<span class="input-group-addon"><i
														class="fa fa-group"></i></span> <input type="text"
														class="form-control" id="storename" placeholder="동대문엽기덕복희">
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="ptype" class="control-label sr-only">상품종류</label>
											<div class="col-sm-8 col-sm-offset-2">
												<div class="input-group">
													<span class="input-group-addon"><i
														class="fa fa-cloud"></i></span> <select class="form-control">
														<option value="drink">음료</option>
														<option value="hotdog">핫도그</option>
														<option value="cupbab">컵밥</option>
													</select>
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="product" class="control-label sr-only">대표상품명</label>
											<div class="col-sm-8 col-sm-offset-2">
												<div class="input-group">
													<span class="input-group-addon"><i
														class="fa fa-bullhorn"></i></span> <input type="text"
														class="form-control" id="product" placeholder="덕복희">
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="price" class="control-label sr-only">상품가격</label>
											<div class="col-sm-8 col-sm-offset-2">
												<div class="input-group">
													<span class="input-group-addon"><i
														class="fa fa-barcode"></i></span> <input type="number"
														class="form-control" id="price" placeholder="3,000원대">
												</div>
											</div>
										</div>
										<div class="form-group">
											<label for="detail" class="control-label sr-only">상세설명</label>
											<div class="col-sm-8 col-sm-offset-2">
												<div class="input-group">
													<span class="input-group-addon"><i
														class="fa fa-edit"></i></span>
													<textarea type="text" class="form-control" id="detail"
														placeholder="푸드트럭의 간단한 소개말이나 상세 메뉴 설명을 기입해주세요."></textarea>
												</div>
											</div>
										</div>
										<div class="form-group">
											<div class="col-sm-8 col-sm-offset-2">
												<a type="submit" class="btn btn-success btn-block"
													href="<%=root %>/mypage/mypageBussiness.jsp"> <i
													class="fa fa-check-circle"></i> 수 정 완 료
												</a>
											</div>
										</div>
									</form>
								</div>
							</div>
							<!-- 푸드트럭 정보 영역 -->
						</div>
					</div>
				</div>
			</div>
		</div>
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