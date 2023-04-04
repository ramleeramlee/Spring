<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table class="table table-bordered table-sm">
	<tr class="table-warning">
		<td>NO</td>
		<td>bbsno</td>
		<td>CONTENT</td>
		<td>WRITER</td>
	</tr>
	<c:forEach items="${list}" var="bag">
		<tr class="table-light">
			<td>${bag.no}</td>
			<td>${bag.bbsno}</td>
			<td>${bag.content}</td>
			<td>${bag.writer}</td>
		</tr>
	</c:forEach>
</table>
