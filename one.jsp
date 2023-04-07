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
PW >> ${bag.pw}<br>
NAME >> ${bag.name}<br>
TEL >> ${bag.tel}

</body>
</html>