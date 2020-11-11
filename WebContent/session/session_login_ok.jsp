<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 
	1. 아이디, 비밀번호, 닉네임을 받음
	2. 아이디와 비밀번호가 동일하면 아이디정보, 닉네임 정보를 저장하는 세션을 생성
		session_welcome페이지로 이동해서 id(이름)님 환영합니다.
	3. 틀리는 경우는 로그인 페이지로 이동
	 */
	 
	response.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("nick");
	 
	 
	
	if(id.equals(pw)) {
		session.setAttribute("id", id);
		session.setAttribute("nick", nick);
		
		response.sendRedirect("session_welcome.jsp");
		
	} else {
		%>
		<script>
			alert("아이디 / 비밀번호를 확인하세요");
			location.href = "session_login.jsp";
		</script>
		
		<%
		//response.sendRedirect("session_login.jsp");
	}
	 
	 
	 
	 
	 
%>