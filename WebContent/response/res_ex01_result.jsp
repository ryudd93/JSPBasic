<%@page import="sun.security.provider.certpath.ResponderId"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String name = request.getParameter("name"); 
	String a = request.getParameter("age");
	
	//age에 따라 다른 결과 페이지를 보여주고 싶다면??
	int age = Integer.parseInt(a);
	
	if (age >= 20) {
		response.sendRedirect("res_ex02_ok.jsp");	//보여줄 URL주소
	} else {
		response.sendRedirect("res_ex02_no.jsp");
	}
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	


</body>
</html>