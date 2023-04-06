<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- content delivery network : CDN >> 외부서버 연결하는 방식  -->

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=53a01ce69b80a7ef722a6057980c3e9c"></script>

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
		
		$("#b4").click(function() {
			$('#result').empty()
			$.ajax({
				url: "jsonResponse5",
				dataType: "json",
				success: function(json) {
					lat = json.lat
					lon = json.lon
					
					var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
				    mapOption = { 
				        center: new kakao.maps.LatLng(lat, lon), // 지도의 중심좌표
				        level: 3 // 지도의 확대 레벨
				    };

					var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다
	
					// 마커가 표시될 위치입니다 
					var markerPosition  = new kakao.maps.LatLng(lat, lon); 
	
					// 마커를 생성합니다
					var marker = new kakao.maps.Marker({
					    position: markerPosition
					});
	
					// 마커가 지도 위에 표시되도록 설정합니다
					marker.setMap(map);
				}
			})
		}) //b4	
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
<button id='b4'>카카오 맵에 코엑스 좌표 찍어보기 </button>
<hr>
<div id='result'></div>
<div id='map' style='width:100%; height:350px;'></div>
<div id='chart' style='width:900px; height:500px;'></div>

</body>
</html>