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
<h3>검색완료</h3>
<hr>
<!-- 출력용(Expression Language = EL) -->
<img src=resources/img/${bag.title}.jpg width='100' height='100'><br>
NO >> ${bag.no}<br>
TITLE >> ${bag.title}<br>
GENRE >> ${bag.genre}<br>
PLACE >> ${bag.place}<br>

</body>
</html>