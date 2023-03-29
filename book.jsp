<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>북마크</h3>
<hr>
등록 페이지<br>
<form action='insert3.multi' method='get'>
name : <input type='text' name='name' value='유투브'><br>
url : <input type='text' name='url' value='https://www.youtube.com'><br>
img : <input type='text' name='img' value='youtube.png'>
<input type='submit' value='전송'>
</form>
<hr>
수정 페이지<br>
<form action='update3.multi' method='get'>
id : <input type='text' name='id'><br>
name : <input type='text' name='name' value='youtube'>
<input type='submit' value='전송'>
</form>
<hr>
삭제 페이지<br>
<form action='delete3.multi' method='get'>
name : <input type='text' name='name' value='youtube'>
<input type='submit' value='전송'>
</form>
<hr>
검색 페이지<br>
<form action='one3.multi' method='get'>
id : <input type='text' name='id' value='1'>
<input type='submit' value='전송'>
</form>
<hr>
<form action='list3.multi' method='get'>
<button type="submit">전체리스트</button>
</form>
</body>
</html>