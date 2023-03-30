<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
if(session == null){
	out.println("아무도 방문하지 않았습니다");
}else{
	out.println("오늘 방문횟수는 " + session.getAttribute("count") + "번");
}
%><br>

오늘 방문횟수는 <%=session.getAttribute("count") %>번


</body>
</html>