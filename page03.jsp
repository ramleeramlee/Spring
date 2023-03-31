<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	session.setAttribute("count", 100);
	// 세션의 값으로는 아무 타입이나 다 넣어도 됨
	// 주차장 생각!! car면 다 됨
	// car(큰) <- 트럭, 승용차, 버스,,,,,(작)
	// 타입변환(형변환), 자동형변환
	
%>
<hr>서버에 세션 속성등록
<a href="page04.jsp">session속성 가지고오기</a>
</body>
</html>

