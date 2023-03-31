<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<style>
body{
	background: pink;
}
td{
	width: 50px;
	text-align: center;
}
a{
	text-decoration: none;
	 color: black;
}
</style>
</head>
<body>
<h3>전체리스트</h3>
<form action="list5" method="get">
참석여부 <input type='text' name='search' value='true'>
<input type='submit' value='검색'>
</form>

<a href="meeting.jsp" method="get">
	<button type='submit'>메인</button>
</a>


<hr>
<!-- bag.getId()  -->
<%--model의 속성으로 전달받은 bag은 EL로 출력한다. --%>
<!-- EL: 속성으로 지정한 값 꺼내서 출력해주세요.!라는 의미! -->
<!-- 	for (String s : list) {
			
		}
 -->

<!-- 출력용(Expression Language = EL) -->
<table class="table table-bordered table-sm">
<tr class="table-warning">
	<td>RANK</td>
	<td>NAME</td>
	<td>PHONE</td>
	<td>BOOLEAN2</td>
	<td>TIME</td>
</tr>
<c:forEach items="${list}" var="bag" >
<tr class="table-light">
	<td>${bag.rank}</td>
	<td>${bag.name}</td>
	<td>${bag.phone}</td>
	<td><a href="meeting.jsp">${bag.boolean2}</a></td>
	<td>${bag.time}</td>
</tr>
</c:forEach>
</table>
</body>
</html>