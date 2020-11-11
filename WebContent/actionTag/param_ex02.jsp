<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- param태그는 request.setAttribute와 같은 기능 -->
<% 
	request.setCharacterEncoding("uft-8");
%>

<jsp:forward page="param_ex03.jsp">
	<jsp:param value="홍길자" name="name"/>
</jsp:forward>