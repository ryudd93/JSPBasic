<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 올바른 인증값을 적은 경우는 reverse.jsp로 이동
		올바른 인증값을 적은 경우는 authYN이름으로 인증 성공 세션을 생성
	2. 올바르지 않은 경우 다시 인증 페이지로 이동
	*/
	request.setCharacterEncoding("UTF-8");
	
	
	String code = request.getParameter("code");
	String auth = (String)session.getAttribute("auth");
	
	if (auth.equals(code)) {
		//인증의 성공 세션
		session.setAttribute("authYN", "y");
		response.sendRedirect("reverse.jsp");
		
	} else {
		%>
			<script>
				alert("잘못 된 인증 번호 입니다.");	
				location.href = "auth.jsp";
			</script>
		<%
	}
	

	

%>
