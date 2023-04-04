<%@page import="com.multi.mvc200.BbsVO_w"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			content = $('#reply').val()
			writer = "apple"
			$.ajax({
				url: "insert4",
				data: {
					bbsno: ${bag.no},
					content: content,
					writer: writer
				},
				success: function() {
					alert('댓글 작성완료')
					$('#result').append(writer + "<br>" + content + "<br>")
					$('#reply').val('')
					// val(): 입력한 값을 가지고 온다
					// val('~~'): ~~값을 input의 value에 넣는다
					// 공백으로 ('')표시하면 공백으로 표시 됨
				}
			}) //ajax
		}) //b1
	}) //$

</script>
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
댓글달기 <input id="reply"><button id="b1">댓글작성</button>
<hr color="blue">
<div id="result">
	<c:forEach items="${list}" var="bag">
		${bag.writer} <br> ${bag.content}<br> 
	</c:forEach>
</div>
</body>
</html>