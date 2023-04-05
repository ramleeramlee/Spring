<%@page import="org.json.simple.JSONArray"%>
<%@page import="org.json.simple.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
// 스크릿트릿
	JSONObject json = new JSONObject();
	json.put("high", "2490"); // {name : hong}
	json.put("low", "2473");
	json.put("end", "2481");
	
	JSONObject json2 = new JSONObject();
	json2.put("high", "2494"); // {name : hong}
	json2.put("low", "2479");
	json2.put("end", "2486");
	
	JSONArray array = new JSONArray();
	array.add(json);
	array.add(json2);
	

%><%= array.toJSONString() %>