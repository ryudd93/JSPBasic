<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	// ��ũ��Ʈ������ ���� ���ʿ��� �ʿ��� ������ �޽��ϴ�.
	String path = request.getContextPath();	//  ������ ������Ʈ�� �����ϴ� ���	
	StringBuffer url = request.getRequestURL();	// ��ü �ּ�
	String uri = request.getRequestURI();	//��ü�ּ� - contextPath()
	String addr = request.getRemoteAddr();	//����IP
	String query = request.getQueryString();	// �ּҵڿ� ���޵Ǵ� ���ڿ�...
	String method = request.getMethod();	//��û ���
	
	System.out.print("�����ּ� : " + addr);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	contextPath : <%=path %><br>
	url���� : <%=url %><br>
	uri���� : <%=uri %><br>
	���� ip : <%=addr %><br>
	�ּҿ� ��� ���ڿ��� : <%=query %><br>
	��û��� : <%=method %><br>

</body>
</html>