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
<a href = 'bbs.jsp'>첫 페이지로</a>
<a href = 'list2'>게시물 전체목록</a>
<hr>
NO >> ${bag.no}<br>
TITLE >> ${bag.title}<br>
CONTENT >> ${bag.content}<br>
WRITER >> ${bag.writer}
</body>
</html>