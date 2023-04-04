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
			$('#result').empty()
			$.ajax({
				url: "list5",
				success: function(x) {
					$('#result').append(x)
				}
			}) //ajax
		}) // b1
		$('#b2').click(function() {
			$('#result').empty()
			$.ajax({
				url: "list6",
				data:{
					bbsno: 2
				},
				success: function(x) {
					$('#result').append(x)
				}
			}) //ajax
		}) // b2
		$('#b3').click(function() {
			$('#result').empty()
			$.ajax({
				url: "list6",
				data:{
					bbsno: 19
				},
				success: function(x) {
					$('#result').append(x)
				}
			}) //ajax
		}) // b3
		$('#b4').click(function() {
			$('#result').empty()
			$.ajax({
				url: "one5",
				data:{
					id: "apple"
				},
				success: function(x) {
					$('#result').append(x)
				}
			}) //ajax
		}) // b4
		$('#b5').click(function() {
			$('#result').empty()
			$.ajax({
				url: "one6",
				data:{
					no: "2"
				},
				success: function(x) {
					$('#result').append(x)
				}
			}) //ajax
		}) // b5
		$('#b6').click(function() {
			$('#result').empty()
			$.ajax({
				url: "list7",
				success: function(x) {
					$('#result').append(x)
				}
			}) //ajax
		}) // b6
	}) //$
</script>
</head>
<body>
<button id='b1'>bbs리스트 가져오기</button>
<button id='b2'>bbs번호 2번 reply리스트 가져오기</button> <br>
<button id='b3'>bbs번호 19번 reply리스트 가져오기</button>
<button id='b4'>member id가 apple인 사람의 정보 가져오기</button><br>
<button id='b5'>bbs no가 2인 게시물의 상세 정보 가져오기</button>
<button id='b6'>member의 모든 리스트 가져오기</button>
<hr>
<div id='result' style='background: pink'></div>
</body>
</html>