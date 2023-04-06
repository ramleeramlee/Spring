<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
현재 게시물 조회수 ${count}<br>

<h3>작성 화면입니다.</h3>
<hr color="red">
<form action='insert2.multi' method='get'>
	
	title  <input name='title' value='저녁'><br>
	content  <input name='content' value='맛있는거'><br>
	writer  <input name='writer' value='cherry'><br>
<button type='submit'>전송</button>
</form>
<hr color="blue">

<h3>수정 화면입니다.</h3>
<hr color="red">
<form action='update2.multi' method='get'>
	no  <input name='no'><br>
	content  <input name='content'><br>
<button type='submit'>전송</button>
</form>
<hr color="blue">

<h3>삭제 화면입니다.</h3>
<hr color="red">
<form action='delete2.multi' method='get'>
	no  <input name='no'><br>
<button type='submit'>전송</button>
</form>


	<a href="login.jsp">
	<button style="background: pink;" >로그인 해주세요</button>
</a>

<hr color="blue">

<h3>검색 화면입니다.</h3>
<hr color="red">
<a href='list2'>목록</a>
<form action='one2.multi' method='get'>
	no  <input name='no'><br>
<button type='submit'>전송</button>
</form>
<hr color="blue">
</body>
</html>