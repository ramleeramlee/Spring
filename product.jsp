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
				url: "one8",
				data: {
					id: "106"
				},
				success: function(res) {
					$('#result').append(res)
				}
			}) //ajax
		}) //b1
		$('#b2').click(function() {
			$('#result').empty()
			$.ajax({
				url: "list8",
				success: function(res) {
					$('#result').append(res)
				}
			}) //ajax
		}) //b2
	}) //$
</script>
</head>
<body>
<button id ='b1'>id 106번 상세정보 불러오기 </button><br>
<button id='b2'>product 전체 리스트 불러오기 </button><br>
<hr>
<div id='result'></div>
</body>
</html>