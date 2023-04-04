<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="resources/js/jquery-3.6.4.js"></script>
<script type="text/javascript">
	$(function() {
		$.ajax({
			url: "list5",
			success: function(x) {
				$('#result').append(x)
			}
		}) //ajax
		
		$('#b1').click(function() {
			$.ajax({
				url: "update_test2",
				data: {
					no: $('#no').val(),
					content: $('#content').val()	
				},
				success: function() {
					alert('수정완료!!')
					location.href="ajax_test2.jsp"
				}
			}) //ajax
		}) // b1
		$('#b2').click(function() {
			$.ajax({
				url: "delete_test2",
				data: {
					no: $('#no2').val()
				},
				success: function() {
					location.href="ajax_test2.jsp"
				}
			}) //ajax
		}) // b2
	}) //$
</script>
</head>
<body>
<br>
no <input id='no'>
content <input id='content'>
<button id='b1'>수정</button>
<hr>
no <input id='no2'>
<button id='b2'>삭제</button>
<hr>
<div id='result'></div>
</body>
</html>