<%@page import="vo.Event"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%String root = request.getContextPath(); %>
<%
String result = (String)request.getAttribute("result");
if(result != null){
%><%=result %>
<%
  return;
}
List<Event>list = (List)request.getAttribute("list");
%>
<ul class="portfolio-item-list portfolio-isotope portfolio-nospace list-col-3">
<%
for(int i=0; i<list.size(); i++){
	Event ev = list.get(i);
	String imgpath = ev.getImgpath();
	String title = ev.getTitle();
	int no = ev.getNo();
	
    if(imgpath != null){
         int lastIndex = imgpath.lastIndexOf("\\");
         imgpath = imgpath.substring(lastIndex+1);
    }  
%>
<li class="portfolio-item design">
	<div class="overlay"></div>
	<div class="info">
		<h4 class="title"><%=title%></h4>
		<a href="<%=root%>/eventdetail.bt?num=<%=no %>" class="btn">자세히 보기</a>
	</div>
	<div class="media-wrapper">
		<img src="<%=root%>/upload/<%=imgpath%>" height="300" width="250" alt="NO IMAGE">
	</div>
</li>
<%
}
 %>
 </ul>