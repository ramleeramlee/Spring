<%@page import="com.multi.mvc01.BbsVO_w"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body{
	background: pink;
}
</style>
</head>
<body>
<h3>공동구매 제품</h3>
<hr>
<img src="resources/img/스피커.jpg" width='500' height='500'>
<hr>
<% if(session.getAttribute("id") != null){ %>
<a href="bbb">
	<button style="background: pink;" >참여하기</button>
</a>
<%}else{ %>
<a href="login.jsp">
	<button style="background: pink;" >로그인</button>
</a>
<%} %>
</body>
</html>