<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>

<table class="table table-bordered table-sm" style="text-align: center">
	<tr class="table-warning">
		<td>ID</td>
		<td>NAME</td>
		<td>CONTENT</td>
		<td>PRICE</td>
		<td>COMPANY</td>
		<td>IMG</td>
	</tr>
	<c:forEach items="${list}" var="bag">
		<tr class="table-light">
			<td>${bag.id}</td>
			<td>${bag.name}</td>
			<td>${bag.content}</td>
			<td>${bag.price}</td>
			<td>${bag.company}</td>
			<td><img src="resources/img/${bag.img}" width='100' height='40'></td>
		</tr>
	</c:forEach>
</table>
