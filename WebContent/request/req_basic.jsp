<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// 스크립트릿으로 가장 위쪽에서 필요한 정보를 받습니다.
	String path = request.getContextPath();	//  톰켓이 프로젝트를 구분하는 경로	
	StringBuffer url = request.getRequestURL();	// 전체 주소
	String uri = request.getRequestURI();	//전체주소 - contextPath()
	String addr = request.getRemoteAddr();	//접속IP
	String query = request.getQueryString();	// 주소뒤에 전달되는 문자열...
	String method = request.getMethod();	//요청 방식
	
	System.out.print("접속주소 : " + addr);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	contextPath : <%=path %><br>
	url정보 : <%=url %><br>
	uri정보 : <%=uri %><br>
	접속 ip : <%=addr %><br>
	주소에 담긴 문자열값 : <%=query %><br>
	요청방식 : <%=method %><br>

</body>
</html>