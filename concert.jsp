<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>공연사이트</h3>
<hr>
등록 페이지<br>
<form action='insert4' method='get'>
title : <input type='text' name='title' value='캣츠'><br>
genre : <input type='text' name='genre' value='뮤지컬'><br>
place : <input type='text' name='place' value='계명아트센터'>
<input type='submit' value='전송'>
</form>
<hr>
수정 페이지<br>
<form action='update4' method='get'>
title : <input type='text' name='title' value='캣츠'><br>
place : <input type='text' name='place' value='대구계명아트센터'>
<input type='submit' value='전송'>
</form>
<hr>
삭제 페이지<br>
<form action='delete4' method='get'>
title : <input type='text' name='title' value='캣츠'>
<input type='submit' value='전송'>
</form>
<hr>
검색 페이지<br>
<form action='one4' method='get'>
title : <input type='text' name='title' value='데스노트'>
<input type='submit' value='전송'>
</form>
<hr>
<form action='list4' method='get'>
<button type="submit">전체리스트</button>
</form>
</body>
</html>