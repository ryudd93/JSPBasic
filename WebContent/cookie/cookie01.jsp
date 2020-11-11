<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	/*
	1. Date클래스를 이용해서 xxxx년 xx월 xx일
	쿠키 이름은 show쿠키
 	*/
 	
 	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
	
	String now = sdf.format(date);
	
	Cookie coo = new Cookie("show", now);	
	coo.setMaxAge(1000);	
	response.addCookie(coo);
 	
 	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href = "cookie02.jsp">쿠키 사용하기</a>
</body>
</html>