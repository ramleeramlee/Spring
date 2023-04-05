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
				url: "jsonResponse3",
				data: {
					id: "apple5"
				},
				dataType : "json",
				success: function(json) {
					id = json.id
					pw = json.pw
					name = json.name
					tel = json.tel
					
					table = "<table><tr><td>항목명</td><td>값</td></tr>" +
					"<tr><td>아이디</td><td>" + id +"</td></tr>" +
					"<tr><td>비번</td><td>" + pw +"</td></tr>" +
					"<tr><td>이름</td><td>" + name +"</td></tr>" +
					"<tr><td>전화번호</td><td>" + tel +"</td></tr></table>"
					
					 $('#result').append(table)	
				} //success
			}) //ajax
		}) //b1
		
		$('#b2').click(function() {
			$('#result').empty()
			$.ajax({
				url: "jsonResponse4",
				dataType : "json",
				success: function(json) {
					id2 = json[2].id
					pw2 = json[2].pw
					name2 = json[2].name
					tel2 = json[2].tel
					
					table = "<ul><li>" + id2 +"</li>" +
					"<li>" + pw2 +"</li>" +
					"<li>" + name2 +"</li>" +
					"<li>" + tel2 +"</li></ul>"
					
					 $('#result').append(table)	
				}
			}) //ajax
		}) //b2
		
		$('#b3').click(function() {
			$('#result').empty()
			$.ajax({
				url: "jsonResponse4",
				dataType : "json",
				success: function(json) {
					id4 = json[4].id
					pw4 = json[4].pw
					name4 = json[4].name
					tel4 = json[4].tel
					
					table = "<table><tr><td>항목명</td><td>값</td></tr>" +
					"<tr><td>아이디</td><td>" + id4 +"</td></tr>" +
					"<tr><td>비번</td><td>" + pw4 +"</td></tr>" +
					"<tr><td>이름</td><td>" + name4 +"</td></tr>" +
					"<tr><td>전화번호</td><td>" + tel4 +"</td></tr></table>"
					
					 $('#result').append(table)	
				}
			}) //ajax
		}) //b3
	}) //$

</script>
</head>
<body>
<button id='b1'>member JSON(table)</button>
<hr>
<button id='b2'>member JSONArray(list)</button>
<hr>
<button id='b3'>member JSONArray(table)</button>
<hr>
<div id='result'></div>
</body>
</html>