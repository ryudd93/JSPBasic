<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//application은 session과 사용 방법이 거의 동일
	//생명주기가 톰캣을 stop할때까지 1개 유지가 됨
	
	int total = 0;
	
	//세션 정보를 가져오기
	if(application.getAttribute("total") != null) {
		total = (int)application.getAttribute("total");		
	}
		
		
	total++;
	
	application.setAttribute("total", total);
	
	
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	값 : <%=total %>
</body>
</html>