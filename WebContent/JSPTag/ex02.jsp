<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%!
	int total = 0;
	Random random = new Random();
%>

<%
	int num = random.nextInt(8) + 2; // 2~9
	total++;

%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<p>
		<%=total %>번째 방문자입니다. <br>
		<% if (total % 10 == 0) { %>
				당첨되었습니다.
		<%	} %>
	</p>

	<hr/>
	
	<p>
	<h2>램덤 구구단  <%=num %>단</h2>
	<% for(int i = 1; i < 10; i++){ %>
			<%= num%> * <%= i %> = <%= num * i %> <br> 
	<% } %>
	
	
</body>
</html>