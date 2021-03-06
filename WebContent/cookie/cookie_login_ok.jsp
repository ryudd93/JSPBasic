<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

	/*
	1. 아이디, 비밀번호를 받습니다.
	2. ID = abc / pw=1234라면 로그인 성공이라고 간주(user_id, id)를 저장하는 쿠키 생성,
		cookie_welcome페이지로 리다이렉트 
	3. 만약에 id와 pw가 다르다면 다시 로그인 페이지로 리다이렉트
	4. welcome페이지에서는 쿠키값을 꺼내서  "id님 환영합니다"를 출력
	*/
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String idCheck = request.getParameter("idCheck");	//id기억하기

	if(id.equals("abc") && pw.equals("1234")) {
		Cookie loginCoo = new Cookie("user_id", id);
		loginCoo.setMaxAge(30);
		response.addCookie(loginCoo); 
		
		//idCheck값이 y라면 기억하기에 대한 쿠키 생성
		if(idCheck != null && idCheck.equals("y")) {	//널값이 경우 널포인트 익셉션 에러가 발생하기 떄문에
			Cookie cookie2 = new Cookie("id_remember", id);
			cookie2.setMaxAge(60 * 60 * 24);
			response.addCookie(cookie2);
		}
		
		response.sendRedirect("cookie_welcome.jsp");
	} else {
		response.sendRedirect("cookie_login.jsp");
	}
	
%>