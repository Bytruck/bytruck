<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String root = request.getContextPath();%>
<!DOCTYPE html>


<header> 
	<jsp:include page = "/template/header.jsp"/>
</header>

<body>

	<div class="container">
		<div class="coupon_mag" style="margin-top: 15%;margin-left: 10%;">
				<h2>쿠폰 관리</h2>
		</div>
		<div class="row" style="margin-left: 10%;">
			<div class="col-lg-6" style="margin-top: 5%;">
				<div class="coupon_type">
						<label>쿠폰종류</label> <select class="form-control">
						<option>여름 쿠폰(10%)</option>
						<option>생일 쿠폰(10%)</option>
						<option>새우푸드트럭이 맛있어요(5%)</option>
						<option>날씨가 좋아(20%)</option>
					</select>
				</div>
				<div class="Receive" style="padding-top: 4%;">
						<label>받는 사람</label><br>
						<input type="text" class="b" placeholder="Search" name="search">
							<button class="btn btn-default btn pull-right" type="submit" style="margin-right: 55%;">
								<i class="glyphicon glyphicon-search"></i>								
							</button>
							
				</div>
					<div class="coupon_add" style="padding-top: 3%;">
						<label>쿠폰 이름 추가</label>						
						<br>
						<input type="text" placeholder="감바사 푸드트럭">&nbsp;&nbsp;
						<button>추가</button>
						<br>
						<label style="padding-top: 3%;">할인율</label>
							<select class="form-control" style="width:100px;">
								<option>5%</option>
								<option>10%</option>
								<option>15%</option>
								<option>20%</option>
								<option>25%</option>
								<option>30%</option>
							</select>
					</div>
					<div style="margin-top: 3%">
					<label style="padding-top: 3%;">쿠폰을 만들까요?</label>
					<br>
					<input type="text" placeholder="감바사 푸드트럭 10%">
					<button>쿠폰 만들기</button>
					</div>
					<div class="message" style="padding-top: 3%;">
		    			<label for="inputsm">메시지</label>
							<textarea class="form-control" placeholder="전달할 메시지 입력하세요" rows="5" id="comment"
								style="height: 100px; width: 400px;">
						    </textarea>					
		    		</div>
			</div><!-- end-left-col  -->
			<div class="col-lg-6" style="margin-top: %;">
				<div class="h2" style="margin-left: 10%;">
				<h2>받을 사람 목록</h2>
				</div>
				<div class="table" style="margin-left:10%; border: 3px solid gray; width:250px;height:500px;">
					<ul class=”list-group“>
						<li class=”list-group-item“>
							<span class=”badge“>1</span>
							친구1
						</li>
						<li class=”list-group-item“>
							<span class=”badge“>2</span>
							친구2
						</li>
						<li class=”list-group-item“>
							<span class=”badge“>3</span>
							친구3
						</li>
						<li class=”list-group-item“>
							<span class=”badge“>4</span>
							친구4
						</li>
						<li class=”list-group-item“>
							<span class=”badge“>5</span>
							친구5
						</li>
						<li class=”list-group-item“>
							<span class=”badge“>6</span>
							친구6
						</li>
					</ul>
				</div>	
					<button type="button" class="btn btn-default" style="width:100px;height:40px; margin-left: 25%;">
						<a href="<%=root%>/board/coupon.jsp">전송</a>
					</button>	
			</div>
		</div>
	</div>
	<div style="margin-top: 5%;">
      <footer>
      		<jsp:include page = "/template/footer.jsp"/>
      </footer>
     </div>
</body>
</html>









