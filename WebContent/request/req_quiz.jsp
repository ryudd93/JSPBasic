<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
	1. form태그를 이용해서 post형식으로 이름, 국, 영, 수 값을 입력 받음
	2. req_quiz_result.jsp로 전송
	3. 해당 페이지에서는 평균, 합계를 구하고, 80점 이상 = 고득점, 60점 이상 = 중간, 60점 아래=저득점 출력
	
	 -->

	<form action="req_quiz_result.jsp" method="post">
		이름 : <input type = "text" name = "name" required><br> 
		국어 : <input type = "text" name = "korean" pattern="[0-9]{2, 3}" required><br>
		영어 : <input type = "text" name = "english" pattern="[0-9]{2, 3}" required><br>
		수학 : <input type = "text" name = "math" pattern="[0-9]{2, 3}" required><br>
		
		<input type="submit" value="확인">
	
	</form>	 
	 
	 
</body>
</html>