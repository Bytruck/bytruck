<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="vo.Tripcourse"%>
<%@page import="java.util.List"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

[
<c:forEach var="i" items="${requestScope.location}" varStatus="status">
<c:if test="${status.index > 0}">,</c:if>
   {
     "xlocation":"${i.xlocation}",
     "ylocation":"${i.ylocation}"  
   }
</c:forEach>
]
