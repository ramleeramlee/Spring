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
				url: "json1",
				dataType : "json",
				success: function(json) {
					id = json.id
					pw = json.pw
					name = json.name 
					tel = json.tel 
					 $('#result').append(id + " " + pw + " " + name + " " + tel + "<br>") 			
				}
			}) //ajax
		}) //b1
		
			$('#b11').click(function() {
				$('#result').empty()
				$.ajax({
					url: "json1",
					dataType : "json",
					success: function(json) {
						id = json.id
						pw = json.pw
						name = json.name 
						tel = json.tel 
						
						table = "<table><tr><td>항목명</td><td>값</td></tr>" +
						"<tr><td>아이디</td><td>" + id +"</td></tr>" +
						"<tr><td>패스워드</td><td>" + pw +"</td></tr>" +
						"<tr><td>이름</td><td>" + name +"</td></tr>" +
						"<tr><td>전화번호</td><td>" + tel +"</td></tr></table>"
						
						 $('#result').append(table)			
					}
				}) //ajax
			}) //b11
			
			$('#b111').click(function() {
				$('#result').empty()
				$.ajax({
					url: "json1",
					dataType : "json",
					success: function(json) {
						id = json.id
						pw = json.pw
						name = json.name 
						tel = json.tel 
						
						table = "<ul><li>" + id +"</li>" +
						"<li>" + pw +"</li>" +
						"<li>" + name +"</li>" +
						"<li>" + tel +"</li></ul>"
						
						 $('#result').append(table)			
					}
				}) //ajax
			}) //b111
			
		$('#b2').click(function() {
			$('#result').empty()
			$.ajax({
				url: "json2",
				dataType : "json",
				success: function(json) {
					id1 = json[1].id
					name1 = json[1].name
					
					$('#result').append("json배열 중 2번째 >> " + id1 + " " + name1 + "<br>")
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
<button id='b1'>컨트롤러에서 JSON(텍스트)을 받아오자</button>
<button id='b11'>컨트롤러에서 JSON(table)을 받아오자</button>
<button id='b111'>컨트롤러에서 JSON(li)을 받아오자</button>
<hr>
<button id='b2'>컨트롤러에서 JSONArray를 받아오자</button>
<hr>
<button id='b3'>컨트롤러에서 JSON3를 받아오자</button>
<button id='b4'>컨트롤러에서 JSONArray4를 받아오자</button>
<hr>
<div id='result'></div>
</body>
</html>