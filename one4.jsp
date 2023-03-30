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
<h3><img src='resources/img/완료.png' width='20' height='20'> 검색완료되었습니다</h3>
<hr>
<!-- 출력용(Expression Language = EL) -->
RANK >> ${bag.rank}<br>
NAME >> ${bag.name}<br>
PHONE >> ${bag.phone}<br>
BOOLEAN2 >> ${bag.boolean2}<br>
TIME >> ${bag.time}<br>

<form action="meeting.jsp" method="get">
<button type='submit'>메인</button>
</form>
</body>
</html>