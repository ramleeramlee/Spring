<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>


<table class="table table-bordered table-sm" style="text-align: center">
	<tr class="table-warning">
		<td>NO</td>
		<td>TITLE</td>
		<td>CONTENT</td>
		<td>WRITER</td>
	</tr>
	<c:forEach items="${list}" var="bag">
		<tr class="table-light">
			<td>${bag.no}</td>
			<td>${bag.title}</td>
			<td>${bag.content}</td>
			<td>${bag.writer}</td>
		</tr>
	</c:forEach>
</table>

