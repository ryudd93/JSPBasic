<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- a태그를 이용해서  req_video페이지로 상대경로, 절대 경로 이동 -->
	<a href="../../request/req_video.jsp">req_video(상대경로)</a>	
	<br>
	<a href="/JSPBasic/request/req_video.jsp">req_video(절대경로)</a>	
	
	<br>
	<br>
	<!-- img태그를 이용해서 java.png참조 -->
	<img src="../../request/img/java.png" width="100px" alt="자바">
	<img src="/JSPBasic/request/img/java.png" width="100px" alt="자바">

	
	<br>
	<br>
	<!-- a태그를 이용해서 TestServlet으로 상대경로 절대 경로 -->
	<a href="../../banana">TestServlet(상대)</a>
	<br>	
	<a href="/JSPBasic/banana">TestServlet(절대)</a>	
	
	<br>
	<% out.println("안녕"); %>

</body>
</html>