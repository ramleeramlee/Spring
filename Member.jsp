<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>로그인 화면입니다.</h3>
<hr color="red">
<form action='login' method='get'>
	id  <input name='id' value='apple'><br>
	pw  <input name='pw' value='1234'><br>
<button type='submit'>전송</button>
</form>
<hr color="blue">

<h3>회원가입 화면입니다.</h3>
<hr color="red">
<form action='insert.multi' method='get'>
	id  <input name='id' value='apple'><br>
	pw  <input name='pw' value='1234'><br>
	name  <input name='name' value='park'><br>
	tel  <input name='tel' value='011'><br>
<button type='submit'>전송</button>
</form>
<hr color="blue">

<h3>회원수정 화면입니다.</h3>
<hr color="red">
<form action='update' method='get'>
	id  <input name='id' value='apple'><br>
	tel  <input name='tel' value='011'><br>
<button type='submit'>전송</button>
</form>
<hr color="blue">

<h3>회원탈퇴 화면입니다.</h3>
<hr color="red">
<form action='delete' method='get'>
	id  <input name='id' value='apple'><br>

<button type='submit'>전송</button>
</form>
<hr color="blue">

<h3>회원검색 화면입니다.</h3>
<hr color="red">
<a href='list'>모든회원 정보</a>
<form action='one' method='get'>
	id  <input name='id' value='apple'><br>

<button type='submit'>전송</button>
</form>

</body>
</html>