<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	
	Cookie[] loginArr = request.getCookies();
	
	String id = null;
	
	if (loginArr != null) {
		for (Cookie c : loginArr) {
			if(c.getName().equals("user_id")) {
				id = c.getValue();
			}
		}
	}
	
	if(id == null) {	//쿠키가 만료시
		response.sendRedirect("cookie_login.jsp");
	}

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인 성공!</h2>
	<%=id %>님 환영합니다!
</body>
</html>