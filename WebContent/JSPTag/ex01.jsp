<%@page import="java.util.HashSet"%>
<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 정수를 저장하는 list를 생성
	2. 1~45까지 랜덤한 번호를 생성하고 리스트에 저장
	3. 중복되지 않는 숫자로 6개의 번호를 저장
	4. 화면에 출력
	5. set을 이용해서 처리
 	*/
 	
 	ArrayList<Integer> list = new ArrayList<>();
	Random ran = new Random();	
	int num = 0;
	
	while (list.size() < 6){
		num = ran.nextInt(45) + 1;

		if(!list.contains(num)) {
			list.add(num);
		}
	}

	Collections.sort(list);
	
	
	HashSet<Integer> set = new HashSet<>();
	while(set.size() < 6) {
		num = ran.nextInt(46) + 1;
		set.add(num);
	}

%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	
	<% for (int su : list) { %>
		숫자 : <%=su %>
	<% } %>
	
	<br>
	
	<% for (int su : set) { %>
		숫자 : <%=su %>
	<% } %>
	
	
</body>
</html>