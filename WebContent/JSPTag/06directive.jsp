<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	//Date
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd hh:mm:ss");
	String now = sdf.format(date);
	
	//ArrayList
	ArrayList<String> list = new ArrayList<>();
	list.add("홍길동");
	list.add("홍길자");
	
	//HashMap
	HashMap<Integer, String> map = new HashMap<>();
	map.put(1, "홍길동");
	map.put(2, "홍길자");
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		
	<!-- 표현식과 스트립트릿을 이용해서 MAP데이터, LIST데이터를 순서대로 출력 -->
	현재 시각 : <%=now %><br>
	 
	<% for(String name : list){ %>
		List 이름 : <%=name %><br>
	<% } %>
	
	<% Set<Entry<Integer, String>> iter = map.entrySet(); %> 
	<%	for (Entry<Integer, String> i : iter) { %>
			Map : <%=i.getKey() %>
			<%=i.getValue() %>
			<br>
	<%	}  %>
		
</body>
</html>