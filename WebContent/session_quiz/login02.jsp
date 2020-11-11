<%@page import="com.session.UserRepository"%>
<%@page import="com.session.User"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	//id가 있다면 user객체 반환, 없다면 null
	User user = UserRepository.getUser(id);

	if (user != null) { //아이디가 있는 경우
		if (user.getPw().equals(pw)) {	//비밀번호가 일치하지 않는 경우
		session.setAttribute("login", user);	//session은 객체 전체 저장이 가능. 쿠키는 불가

		response.sendRedirect("login03.jsp");		
		} else {
			%>
				<script>
				alert("비밀번호를 확인하세요");
				location.href = "login01.jsp";
				</script>
			<%					
			
		}
	} else { // 아이디가 없는 경우
		%>
			<script>
			alert("비밀번호를 확인하세요");
			location.href = "login01.jsp";
			</script>
		<%
		
	}
	
	
	
	
%>