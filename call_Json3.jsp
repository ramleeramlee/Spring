<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- content delivery network : CDN >> 외부서버 연결하는 방식  -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#b1').click(function() {
			$('#result').empty()
			$.ajax({
				url: "one22",
				data: {
					no: 2
				},
				dataType : "json",
				success: function(json) {
					no = json.no
					content = json.content
					 $('#result').append(no + " " + content + "<br>") 			
				}
			}) //ajax
		}) //b1
		
			$('#b11').click(function() {
				$('#result').empty()
				$.ajax({
					url: "one22",
					data: {
						no: 2
					},
					dataType : "json",
					success: function(json) {
						no = json.no
						content = json.content
						
						table = "<table><tr><td>항목명</td><td>값</td></tr>" +
						"<tr><td>번호</td><td>" + no +"</td></tr>" +
						"<tr><td>내용</td><td>" + content +"</td></tr></table>"
						
						 $('#result').append(table)			
					}
				}) //ajax
			}) //b11
			
		$('#b2').click(function() {
			$('#result').empty()
			$.ajax({
				url: "list55",
				dataType : "json",
				success: function(json) {
					no1 = json[1].no
					content1 = json[1].content
					
					$('#result').append("json배열 중 2번째 >> " + no1 + " " + content1 + "<br>")
				}
			}) //ajax
		}) //b2
		$('#b3').click(function() {
			$('#result').empty()
			$.ajax({
				url: "json3",
				dataType : "json",
				success: function(json) {
					no = json.no
					title = json.title
					content = json.content 
					writer = json.writer 
					
					table = "<ul><li>" + no +"</li>" +
					"<li>" + title +"</li>" +
					"<li>" + content +"</li>" +
					"<li>" + writer +"</li></ul>"
					
					 $('#result').append(table)		
				}
			}) //ajax
		}) //b3
		$('#b4').click(function() {
			$('#result').empty()
			$.ajax({
				url: "json4",
				dataType : "json",
				success: function(json) {
					no = json[0].no
					title = json[0].title
					content = json[0].content
					writer = json[0].writer
					
					$('#result').append("json배열 중 1번째 >> " + no + " " + title + " " + content + " " + writer + "<br>")
				}
			}) //ajax
		}) //b4
	}) //$

</script>
</head>
<body>
<button id='b1'>컨트롤러에서 bbs JSON(text)을 받아오자</button>
<button id='b11'>컨트롤러에서 bbs JSON(table)을 받아오자</button>
<button id='b2'>컨트롤러에서 bbs JSONArray를 받아오자</button>
<hr>
<button id='b3'>컨트롤러에서 JSON3를 받아오자</button>
<button id='b4'>컨트롤러에서 JSONArray4를 받아오자</button>
<hr>
<div id='result'></div>
</body>
</html>