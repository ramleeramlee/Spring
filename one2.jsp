<%@page import="com.multi.mvc200.BbsVO_w"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<a href = 'bbs.jsp'>첫 페이지로</a><br>
<a href = 'list2'>게시물 전체목록</a><br>
<hr color="red">
게시물검색 처리 요청이 완료되었습니다.
<br>
${bag.no}, ${bag.title}, ${bag.content}, ${bag.writer}
<hr color="red">
<div id="result">
	<c:forEach items="${list}" var="bag">
		${bag.no}, ${bag.bbsno}, ${bag.content}, ${bag.writer}<br> 
	</c:forEach>
</div>
<hr color="blue">
댓글달기 <input id="reply"><button id="b1">댓글작성</button><br>
</body>
</html>