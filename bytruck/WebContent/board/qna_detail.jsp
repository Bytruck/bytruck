<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%String root = request.getContextPath();%>
<!DOCTYPE html>

<title>qna_detail</title>



<header>
	<jsp:include page = "/template/header.jsp"/>
</header>

<style>
	div.board{
		padding-top:5%;
		padding-left: 10%;
		padding-right: 10%;
	}
	div.btt{
		padding-left: 40%;
	}
	div.h2{
		padding-left: 5%;
	}
	div.push-right{
		font-size:12px;		
	}
	div.QA{
		padding-left: 20%;
		padding-top: 10%;
	}
</style>
<body>
<div class="QA">
		<h1>Q&A</h1>
	</div>

	<div class="container">
	
	<div class="board">
	
	<div class="h2">
	<h2>바이트럭 이용가이드 # 여행계획편</h2>
	</div>
	<form class="form-horizontal" action="/action_page.php">
		<div class="push-right">
			<label class="control-label col-sm-2" >등록일</label>
			<div class="col-sm-10">
				<p class="form-control-static">2018.05.10</p>
			</div>
		</div>
		<br>
		<br>
		<div class="excerpt">
			<p>안녕하세요. 바이트럭 팀 입니다.</p>
			<p>서울=뉴시스】 장윤희 기자 = 청와대는 10일 북한에 억류된 우리 국민 6명의 송환에 최선을 다하고 있다는
				입장을 밝혔다. 이들은 대부분 북한과 중국 접경 지역에서 선교 활동을 하다 억류된 것으로 알려졌다. 지난 9일 방북한
				마이크 폼페이오 미국 국무장관이 한국계 미국인 억류자 3명과 귀국하면서 우리 국민 송환에 대한 기대감도 커지고 있다.

				청와대 핵심관계자는 이날 기자들과 만나 '한국인 억류자 문제에 진척은 없나' 물음에 "드러나지는 않지만 최선을 다하고
				있다"고 말했다. 이 관계자는 한국계 미국인 억류자 3명이 석방된 것 관련 "북미 정상회담에 임하는 김정은 위원장의 자세를
				보여주는 한 단면"이라고 해석했다. 문재인 대통령은 지난달 27일 김 위원장과의 남북 정상회담에서 북한에 억류 중인 우리
				국민 6명의 조속한 송환을 요청한 바 있다. 청와대는 지난 9일 북한이 미국인 억류자 3명을 송환키로 조치한 것에 환영의
				입장을 밝히면서 우리 억류자의 조속한 송환을 기대했다. 윤영찬 국민소통수석은 입장문에서 "남북 간의 화해와 한반도에 불기
				시작한 평화의 봄기운을 더욱 확산시키는 의미에서 우리 억류자의 조속한 송환이 이뤄지길 바란다"고 기대했다. 한편 청와대는
				지난 9일 일본 도쿄에서 열린 제7차 한중일 정상회의 결과를 두고 문 대통령과 김 위원장이 핫라인 통화할 가능성은 희박하게
				봤다. 청와대 핵심 관계자는 "(한중일 정상회의는) 거의 공개된 회의였다"고 말했다. 한중일 정상회의 결과가 핫라인
				의제로는 부족하다는 의미로 풀이된다. 이 관계자는 '북미 정상회담 날짜와 장소가 정해지면 남북 정상이 핫라인 통화를
				하느냐'는 물음에는 "(통화 시기가) 조금 빨라질 수 있다"고 답했다. 지난 9일 밤 채택된 한중일 정상회의 공동성명에는
				3국이 북한의 일본인 납치자 문제에 대한 조속한 해결을 바란다는 문구가 담겼다. 유엔 안전보장이사회 관련 결의에 따라
				국제적인 협력과 포괄적인 해결을 통해서만 북한의 밝은 미래가 열릴 것이란 내용도 들어갔다.</p>
			<blockquote>
				<p></p>
			</blockquote>

		</div>
		<div class="btt">
			<button type="button" class="btn btn-default">
				<a href="<%=root%>/qna.jsp">수정</a>
			</button>		
			<button type="button" class="btn btn-default" id="btd" style="margin-left: 20px;">
				<a href="<%=root%>/qna.jsp">삭제</a>
			</button>
		</div>
		</div>
		<div class="comment" style="margin-left: 10%; margin-top: 10%">
		<article class="comments">
			<h3 class="section-heading">Comments (3)</h3>
			<ul class="media-list">
				<li class="media"><a href="#" class="media-left"> 
				</a>
					<div class="media-body">
						<h4 class="media-heading comment-author">
							<a href="#">John 1</a>
						</h4>
						<span class="timestamp text-muted">2018.05.06 18:40 PM</span>
						<p>안녕하세요</p>
						<p>
							<a href="#"><i class="fa fa-reply"></i> Reply</a>
						</p>
						<hr>
						<div class="media comment-by-author">
							<a href="#" class="media-left">
							</a>
							<div class="media-body">
								<h4 class="media-heading comment-author">
									<a href="#">Antonius</a>
								</h4>
								<span class="timestamp text-muted">2018.05.06 21:40 PM</span>
								<p>네~ 안녕하세요~</p>
								<p>
									<a href="#"><i class="fa fa-reply"></i> Reply</a>
								</p>
								<hr>
							</div>
						</div>
					</div>
					<div class="media child">
						<a href="#" class="media-left"> <span class="avatar anonymous"><i
								class="fa fa-user"></i></span>
						</a>
						<div class="media-body">
							<h4 class="media-heading comment-author">
								<a href="#">Anonymous</a>
							</h4>
							<span class="timestamp text-muted">2018.05.06 23:40 PM</span>
							<p>새로운 글을 등록했습니다.</p>
							<p>
								<a href="#"><i class="fa fa-reply"></i> Reply</a>
							</p>
						</div>
					</div></li>
			</ul>
		</article>
		</div>
	</form>
	</div>
	

	<footer>
		<jsp:include page = "/template/footer.jsp"/>
	</footer>

</body>
</html>






