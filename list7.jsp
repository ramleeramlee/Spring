<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table class="table table-bordered table-sm">
	<tr class="table-warning">
		<td>ID</td>
		<td>PW</td>
		<td>NAME</td>
		<td>TEL</td>
	</tr>
	<c:forEach items="${list}" var="bag">
		<tr class="table-light">
			<td>${bag.id}</td>
			<td>${bag.pw}</td>
			<td>${bag.name}</td>
			<td>${bag.tel}</td>
		</tr>
	</c:forEach>
</table>
