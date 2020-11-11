<%@page import="java.util.Random"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%!

	String[] arr = {"어피치", "라이언", "제이지", "무지", "프로도", "튜브"}; 
	ArrayList<String> list = new ArrayList<>();
	
	Random ran = new Random();
	int idx = 0; 

%>

<%
	if(list.size() >= 10) list.clear();

	int r = ran.nextInt(6);
	String name = arr[r];	//선택된 요소
	list.add(name); //배열의 랜덤요서 리스트에 추가
	
	int count = 0;
	for(String n : list){
		if(n.equals(name)){	//랜덤으로 선택된 값, 리스트의 요소가 동일하면
			count++;
		}
	}
	
	
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<p>
		<b>[<%= name%>]</b>님이 입장
		<br>
		현재 같은 카카오 프렌즈는 <%= count%>명입니다.
	<p>
	
	
	<h2> 현재 구성 정보 </h2>
	<p>
		<%=list.toString() %> (<%=list.size() %>명 참가중)
	</p>
	
</body>
</html>