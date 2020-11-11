<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	// post방식은  request객체에서 값을 얻을때 인코딩형식을 지정합니다.
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");

%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>get_post_form에서 넘어온 파라미터 값</h2>
	아이디 : <%=id %><br>
	비밀번호 : <%=pw %><br>
</body>
</html>