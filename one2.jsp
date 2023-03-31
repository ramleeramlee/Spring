<%@page import="com.multi.mvc01.BbsVO_w"%>
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
검색완료<br>
<a href = 'bbs.jsp'>첫 페이지로</a><br>
<a href = 'list2'>게시물 전체목록</a><br>
<hr>
<%
// 세션에서 값을 꺼내는 방법
	String id = (String)session.getAttribute("id");
// 모델에서 값을 꺼내는 방법
// model.addAttribute("bag", bag);
	BbsVO_w bag =(BbsVO_w)request.getAttribute("bag");
	String writer = bag.getWriter();
	if(id != null){
	if(id.equals(writer)){ %>
<a href="">
	<button style="background: pink;" >수정</button>
</a>
<a href="delete2.multi?no=${bag.no}">
	<button style="background: pink;" >삭제</button>
</a>
<br>
<hr>
<%}} %>

</body>
</html>