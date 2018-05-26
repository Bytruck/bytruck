<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="vo.board" %>
<%@page import="vo.PageBean" %>

<%@page import="java.util.List" %>
<%@taglib prefix="p" uri="http://java.sun.com/jsp/jstl/core"%>
<p:set var="pb" value="${requestSocpe.PageBean }"/>
<%String root = request.getContextPath();%>
<!DOCTYPE html>

    <title>qna.jsp</title>  

  <header>
 	<jsp:include page = "/template/header.jsp"/>
  </header>
 <style>
 	div.bt{
 		padding-left: 83%;
 		padding-top: 1%;
 	}
<%@page import="dao.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="vo.board" %>
<%@ page import="java.util.List" %>
<%@ page import="dao.BoardDAO"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="pb" value="${requestScope.pagebean}"/><!-- 선언 필수 -->
<%String root = request.getContextPath();%>
<!DOCTYPE html>


<title>qna.jsp</title>
  <header>
 	<jsp:include page = "/template/header.jsp"/>
  </header>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>

</script>
<body>

<div class="contatiner" style="margin-top: 10%; margin-left: 10%;margin-right: 10%;">
	<h2>QnA</h2>
	<div id="list">
	<div id="board">
	<table class="table table-bordered" style="text-align:center" >
		
	  <tr>      	
        <th style="width: 10%; text-align:center"> 번호</th>
        <th style="width: 50%; text-align:center"> 제목</th>
        <th style="width: 20%; text-align:center">등록일</th>
        <th style="width: 10%; text-align:center"> 조회</th>		    
      </tr>
      
	<c:set var="list" value="${pb.list}"/>
	<c:forEach var="board" items="${list}">
	 	<tr>
	 		<td>${board.no}</td>
	 		<td>${board.title}</td>
	 		<td>${board.posted}</td>
	 		<td>${board.views}</td>
	 	</tr>
	</c:forEach>
	
	</table>
	</div>

</div>
	</div>
	<div class="pagination" style="margin-top: 5%;margin-left: 50%;">
 <c:set var="startPage" value="${pb.startPage}"/>
 <c:set var="endPage" value="${pb.endPage}"/>
 <c:if test="${startPage > 1}">  
  <a href="#">&laquo;</a>  
 </c:if>
 <c:forEach begin="${startPage}" end="${endPage}" var="i" >  
  <a href="#">${i}</a>	  
 </c:forEach> 
 <c:if test="${endPage < pb.totalPage}" >  
  <a href="#">&raquo;</a>  
 </c:if>
</div>
	
	
	
	


<footer>
  <jsp:include page = "/template/footer.jsp"/>
</footer>
</body>
