<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");	

	String name = request.getParameter("name");
	String korean = request.getParameter("korean");
	String english = request.getParameter("english");
	String math = request.getParameter("math");
	
	int total = Integer.parseInt(korean) + Integer.parseInt(english) + Integer.parseInt(math);
	double avg = total / 3.0;

	String result = String.format("%.2f", avg);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>req_quiz의 값</h2>
	
	이름 : <%=name %><br>
	국어 : <%=korean %>점<br>
	영어 : <%=english %>점<br>
	수학 : <%=math %>점<br>
	<hr width = "150" align="left">
	합계 : <%=total %>점<br>
	평균 : <%=result %>점<br>
	결과 : <% if(avg >= 80) { %>
			고득점
		<% } else if (avg >= 60) { %>
			중간
		<% } else { %>
			저득점
		<% } %>


</body>

</html>