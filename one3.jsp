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
검색완료
<hr>
<!-- 출력용(Expression Language = EL) -->
ID >> ${bag.id}<br>
NAME >> ${bag.name}<br>
URL >> ${bag.url}<br>
IMG >> <br>
<img src='resources/img/${bag.img}' width='300' height='100'>

</body>
</html>