<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//id_check쿠키를 확인하고, 아이디 테그에 value옵션에 값을 넣기
	
	Cookie[] checkId = request.getCookies();

	String rememId = "";
	
	if (checkId != null) {
		for (Cookie c : checkId) {
			if (c.getName().equals("id_remember")) {
				rememId = c.getValue();
			}
		}
	}
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>쿠키연습</h2>
	
	<form action="cookie_login_ok.jsp" method="post">
	
		아이디 : <input type="text" name="id" value="<%=rememId %>" required><br>
		비밀번호 : <input type="text" name="pw" required><br>
		<input type="submit" value="로그인">
		<input type="checkbox" value="idCheck" value="y"> 아이디 기억하기
	
	
	</form>

</body>
</html>