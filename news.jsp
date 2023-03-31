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
<h3>뉴스 페이지</h3>
<hr>
<img src="resources/img/2023-03-31 16 33 28.jpg" width='500' height='500'>


<% if(session.getAttribute("id") != null){ %>
<hr>
<form action="aaa">
	댓글 : <input name = "reply"><button>댓글달기</button>
</form>
<hr>
<%}%>
	
</body>
</html>