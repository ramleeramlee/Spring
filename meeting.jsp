<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>미팅참석여부</h3>
<hr>
등록<br>
<form action='insert4.multi' method='get'>
name : <input type='text' name='name' value='ARam Lee'><br>
phone : <input type='text' name='phone' value='123-456-7890'><br>
boolean2 : <input type='text' name='boolean2' value='true'><br>
time : <input type='text' name='time' value='2:00 PM'>
<input type='submit' value='전송'>
</form>
<hr>
수정<br>
<form action='update4.multi' method='get'>
name : <input type='text' name='name' value='ARam Lee'><br>
boolean2 : <input type='text' name='boolean2' value='false'>
<input type='submit' value='전송'>
</form>
<hr>
삭제<br>
<form action='delete4.multi' method='get'>
name : <input type='text' name='name' value='ARam Lee'>
<input type='submit' value='전송'>
</form>
<hr>
검색<br>
<form action='one4.multi' method='get'>
name : <input type='text' name='name' value='Silvie Derisly'>
<input type='submit' value='전송'>
</form>
<hr>
<form action='list4.multi' method='get'>
<button type="submit">전체리스트</button>
</form>
</body>
</html>