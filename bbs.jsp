<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>작성 화면입니다.</h3>
<hr color="red">
<form action='insert2.multi' method='get'>
	no  <input name='no' value='1'><br>
	title  <input name='title' value='가나다'><br>
	content  <input name='content' value='한글'><br>
	writer  <input name='writer' value='apple'><br>
<button type='submit'>전송</button>
</form>
<hr color="blue">

<h3>수정 화면입니다.</h3>
<hr color="red">
<form action='update2.multi' method='get'>
	no  <input name='no' value='1'><br>
	content  <input name='content' value='한글'><br>
<button type='submit'>전송</button>
</form>
<hr color="blue">

<h3>삭제 화면입니다.</h3>
<hr color="red">
<form action='delete2.multi' method='get'>
	no  <input name='no' value='1'><br>

<button type='submit'>전송</button>
</form>
<hr color="blue">

<h3>검색 화면입니다.</h3>
<hr color="red">
<form action='one2.multi' method='get'>
	no  <input name='no' value='1'><br>

<button type='submit'>전송</button>
</form>
<hr color="blue">
</body>
</html>