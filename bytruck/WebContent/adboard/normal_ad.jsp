<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%
String root = request.getContextPath();
%>
<style>
.board {
   padding-top: 10%;
}
</style>
<body>
   <div class="row">
      <div class="container-fluid">
         <div class="col-lg-12">
            <header>
                <jsp:include page ="/template/header.jsp"/>
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
               <li class="active">배너광고 신청</li>
            </ol>
            <div class="col-lg-offset-1 col-lg-10 col-lg-offset-1">
               <div class="col-lg-10 col-lg-offset-1">
                  <h3>배너광고 신청</h3>
                  <p>해당 광고신청시, 로그인할 때 광고가 보여집니다.</p>
                  <hr>
                  <div align="left" class="col-lg-offset-6 col-lg-6" >
                     <select class="col-lg-3 col-lg-offset-1" id="type">
                        <option value="">검색</option>
                        <option value="title">제목</option>
                        <option value="detail">내용</option>
                     </select>
                     <input type="text" class="col-lg-6">
                     <button class="col-lg-2 btn btn-info">검색</button>
                  </div>
                  <table class="table table-hover table-condensed">
                     <thead>
                        <tr>
                           <th>글번호</th>
                           <th>글제목</th>
                           <th>아이디</th>
                           <th>게시일</th>
                           <th>조회수</th>
                        </tr>
                     </thead>
                     <tbody>
                        <tr>
                           <td>10</td>
                           <td><a href="#">바이트럭 홈페이지 리뉴얼</a></td>
                           <td>관리자</td>
                           <td>2018.05.11</td>
                           <td>1</td>
                        </tr>
                        <tr>
                           <td>9</td>
                           <td><a href="#">욕설/비방 할시 계정 삭제가 될 수 있으니 유의바랍니다.</a></td>
                           <td>관리자</td>
                           <td>2018.05.10</td>
                           <td>11</td>
                        </tr>
                        <tr>
                           <td>8</td>
                           <td><a href="#">좋아요 기능 많은 이용 부탁드립니다.</a></td>
                           <td>관리자</td>
                           <td>2018.05.09</td>
                           <td>29</td>
                        </tr>
                        <tr>
                           <td>7</td>
                           <td><a href="#">관심코스 (찜)기능이 추가 되었습니다.</a></td>
                           <td>관리자</td>
                           <td>2018.05.08</td>
                           <td>18</td>
                        </tr>
                        <tr>
                           <td>6</td>
                           <td><a href="#">어린이날 맞이 당일치기 여행 어떠신가요~</a></td>
                           <td>관리자</td>
                           <td>2018.05.05</td>
                           <td>52</td>
                        </tr>
                        <tr>
                           <td>5</td>
                           <td><a href="#">Best여행코스 선정 방법 입니다.</a></td>
                           <td>관리자</td>
                           <td>2018.05.04</td>
                           <td>58</td>
                        </tr>
                        <tr>
                           <td>4</td>
                           <td><a href="#">푸드트럭 사업자님들 필독해주세요.</a></td>
                           <td>관리자</td>
                           <td>2018.05.03</td>
                           <td>32</td>
                        </tr>
                        <tr>
                           <td>3</td>
                           <td><a href="#">광고문의 방법 입니다.</a></td>
                           <td>관리자</td>
                           <td>2018.05.02</td>
                           <td>67</td>
                        </tr>
                        <tr>
                           <td>2</td>
                           <td><a href="#">바이트럭 주요 기능설명입니다.</a></td>
                           <td>관리자</td>
                           <td>2018.05.02</td>
                           <td>180</td>
                        </tr>
                        <tr>
                           <td>1</td>
                           <td><a href="#">반갑습니다. 바이트럭관리자 입니다.</a></td>
                           <td>관리자</td>
                           <td>2018.05.01</td>
                           <td>152</td>
                        </tr>
                     </tbody>
                  </table>
                  <a class="btn btn-success pull-right" href="ad_form.jsp">글쓰기</a>
               </div>
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
     <div class="foot">
      <div class="row">
         <div class="container-fluid">
            <div class="col-lg-12">
               <footer>
                  <jsp:include page ="/template/footer.jsp"/>
               </footer>
            </div>
         </div>
      </div>
   </div>
</body>
</html>