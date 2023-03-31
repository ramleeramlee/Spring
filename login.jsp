<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 세션이 null이면 로그인 화면창이 뜨게하고 -->
<% if(session.getAttribute("id") == null){ %> 
<h3>로그인 화면입니다.</h3>
<hr color="red">
<form action='login' method='get'>
	id  <input name='id' ><br>
	pw  <input name='pw' ><br>
<button type='submit'>전송</button>
</form>
<!-- 세션이 있으면(아이디 비번 정보가 남아있으면) 로그인 된 화면으로 뜨게하기 -->
<%} else{ %>
<hr color="blue">
${id}님 로그인 중입니다
<a href="bbs.jsp">
	<button style="background: pink;" >게시판 화면으로</button>
</a>
<a href="news.jsp">
	<button style="background: pink;" >뉴스사이트</button>
</a>
<a href="cafe.jsp">
	<button style="background: pink;" >카페사이트</button>
</a>
<%} %>
</body>
</html>