<%@page import="com.session.User"%>
<%@page import="com.session.UserRepository"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	if(session.getAttribute("login") == null) {
		response.sendRedirect("login.jsp");
	}

	User user = (User)session.getAttribute("login");
	
	UserRepository.delUser(user.getId());
	
	session.invalidate();
	
	%>
		<script>
			alert("탈퇴되었습니다.")
			location.href = "login01.jsp";
		</script>
	
	<%
	
	response.sendRedirect("login01.jsp");
%>