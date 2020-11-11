<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String name = request.getParameter("name");
	double avg = (double)(request.getAttribute("result"));
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h4><%=name %>님 합격입니다.</h4>
	<br/>
	<%=avg %>점
</body>
</html>