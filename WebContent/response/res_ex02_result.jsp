<%@page import="org.apache.jasper.tagplugins.jstl.core.If"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%
 	/*
 		1. ID, PW를 받아서 처리
 		2. ID가 abc1234 / 비밀번호가 xxx123이라면 로그인 성공! res_ex02_welcome.jsp 리다이렉트
 		3. id가 틀린경우, res_ex02_id_fail로 리다이렉트
 		4. pw가 틀린경우, res_ex02_pw_fail로 리다이렉트
  	*/
  	request.setCharacterEncoding("utf-8");
  	
 	String id = request.getParameter("id");
 	String pw = request.getParameter("pw");
 
 	
 	if (id.equals("abc1234") && pw.equals("xxx123")) {
 		response.sendRedirect("res_ex02_welcome.jsp");
 	} else if (!id.equals("abc1234") && !pw.equals("xxx123")) {
 		response.sendRedirect("res_ex02_idpw_fail.jsp");
 	} else if (id.equals("abc1234") || pw.equals("xxx123")) {
 		if (id.equals("abc1234")) {
 		response.sendRedirect("res_ex02_pw_fail.jsp");
 		} else if (pw.equals("xxx123")){
 		response.sendRedirect("res_ex02_id_fail.jsp");
 		}
 	}
 
 
 %>