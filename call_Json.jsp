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
				url: "json.jsp",
				dataType : "json",
				success: function(json) {
					name = json.name
					age = json.age
					id = json.id 
					 $('#result').append(name + " " + age + " " + id + "<br>") 			
				}
			}) //ajax
		}) //b1
		$('#b2').click(function() {
			$('#result').empty()
			$.ajax({
				url: "json2.jsp",
				dataType : "json",
				success: function(json) {
					name = json[1].name
					age = json[1].age
					id = json[1].id
					$('#result').append(name + " " + age + " " + id + "<br>")
				}
			}) //ajax
		}) //b2
		$('#b3').click(function() {
			$('#result').empty()
			$.ajax({
				url: "json3.jsp",
				dataType : "json",
				success: function(json) {
					today = json.today
					temp = json.temp
					humidity = json.humidity
					$('#result').append(today + " " + temp + " " + humidity + "<br>")
					if (today == 'rain') {
						$('#result').append("<img src=resources/img/날씨.png><br>")
					} else if(today == 'sun'){
						$('#result').append("<img src=resources/img/sun.png><br>")
					}
				}
			}) //ajax
		}) //b3
		$('#b4').click(function() {
			$('#result').empty()
			$.ajax({
				url: "json4.jsp",
				dataType : "json",
				success: function(json) {
					high1 = json[0].high
					low1 = json[0].low
					end1 = json[0].end
					
					high2 = json[1].high
					low2 = json[1].low
					end2 = json[1].end
					$('#result').append("어제 주가: " + high1 + " " + low1 + " " + end1 + "<br>")
					$('#result').append("오늘 주가: " + high2 + " " + low2 + " " + end2 + "<br>")
				}
			}) //ajax
		}) //b4
	}) //$

</script>
</head>
<body>
<button id='b1'>JSON을 받아오자</button>
<button id='b2'>JSONArray를 받아오자</button>
<button id='b3'>JSON3를 받아오자</button>
<button id='b4'>JSONArray4를 받아오자</button>
<hr>
<div id='result'></div>
</body>
</html>