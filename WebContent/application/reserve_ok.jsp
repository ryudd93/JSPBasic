<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 1. 좌석 정보를 받기
	String[] seats = request.getParameterValues("seat");
	
	// 2. 좌석 정보를 저장할 list생성
	List<String> list = new ArrayList<>();
	
	// 3. application에서 좌석 정보가 존재하면 2번 리스트에 저장
	if(application.getAttribute("list") != null) {
		list = (List<String>)application.getAttribute("list");
	} 
	
	
	// 4. 좌석 정보를 비교해서 중복이 없을때, 하나씩 저장해놓은 사본 리스트 생성
	List<String> temp = new ArrayList<>();

	//		좌석 정보와 2번 list를 비교해서 , 중복된 좌석이 아니라면, 사본 리스트에 추가
	for (String s : seats) {
		if (list.contains(s)) { //포함 된 경우
			break;			
		} else { 	//포함되지 않은 경우
			temp.add(s);
		}
	}
	
	
	// 5. 사본 리스트와 좌석 정보가 길이가 같다면 중복이 없으므로, 2번 리스트에 통째로 사본 리스트를 추가
	if(temp.size() == seats.length) { //중복이 없는 경우
		list.addAll(temp);	// 예약 좌석이 들어 있는 temp를 원본 리스트에 실제로 추가
	}
	
	
	// 6. application에 같은 이름으로 저장
	application.setAttribute("list", list);

	// 7. 화면에 에약 성공! 실패ㅠ 결과를 출력
	System.out.println(application.getAttribute("list"));
	
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div>
		<h2>예약 확인</h2>
		<br>
		예약 좌석 : <% for (String s : seats) { %>
				[<%=s %>]
				 <% } %>
		<br>
		<b><%=temp.size() == seats.length ? "예약 성공" : "예약 실패" %></b>
		<br>
		<br>
		<button type="button" onclick="location.href='reverse.jsp'">다시 예약하기</button>
	</div>
	

</body>
</html>