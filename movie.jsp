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
		$('#b1').click(function() {
			$.ajax({
				url: 'movie',
				data: { //보내는 역할
					name: $('#name').val(),
					money: $('#money').val()
				},
				success: function(res) {
					alert('movie 요청성공')
					$('#result').append(res + "<br>")
					
				},
				error : function() {
					alert('computer 요청 실패')
				} 
			}) //ajax
		}) //b1
		
		$('#b2').click(function() {
			$.ajax({
				url: 'fruit',
				success: function(res) {
					alert('fruit 요청성공')
					$('#result').append(res + "<br>")
					
				},
				error : function() {
					alert('fruit 요청 실패')
				} 
			}) //ajax
		}) //b1
		
		$('#b3').click(function() {
			$.ajax({
				url: 'tour',
				success: function(res) {
					alert('tour 요청성공')
					$('#result').append(res + "<br>")
					
				},
				error : function() {
					alert('tour 요청 실패')
				} 
			}) //ajax
		}) //b1
	}) //$

</script>
</head>
<body>
영화제목: <input id='name' value='테넷'><br>
영화관람료: <input id='money' value='10000'><br>
<input id='b1' type=button value='영화예매확인'><br>

<input id='b2' type=button value='과일목록 가지고 오기'><br>
<input id='b3' type=button value='여행목록 가지고 오기'><br>
<hr color='red'>
<div id='result'></div>
</body>
</html>