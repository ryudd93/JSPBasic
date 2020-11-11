<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	
	<!--  form에 작성된 데이터를 서버로 전송을 할때, 받아서 처리할  URL정보를 action속성을 적습니다, -->

	<form action = "req_get_parameter.jsp">
		<h3> 회원가입 양식 </h3>
		<hr/>
		아이디 : <input type = "text" name = "id" placeholder = "아이디를 입력하세요" required> <br/>
		비밀번호 : <input type = "password" name = "pw"> <br/>
		이메일 : <input type = "email" name = "email"> <br/>
		<!-- radio는 name으로 통일시켜야, 여러개의 버튼을 하나의 그룹으로 보고 다중선택이 가능 -->
		전공 : 
		<input type = "radio" name="major" value="경영학"> 경영학
		<input type = "radio" name="major" value="컴퓨터"> 컴퓨터
		<input type = "radio" name="major" value="전기전자"> 전기전자
		<input type = "radio" name="major" value="기계공학"> 기계공학
		
		<br/>
		전공분야 : 
		<input type = "checkbox" name = "inter" value="자바"> 자바
		<input type = "checkbox" name = "inter" value="DB"> DB
		<input type = "checkbox" name = "inter" value="JSP"> JSP
		<input type = "checkbox" name = "inter" value="JavaScript"> JavaScript
		
		<br/>
		통신사 : 
		<select name = "phone1">
			<option>SKT</option>
			<option>KT</option>
			<option>LGT</option>
		</select>
		
		<br/>
		자기소개 : 
		<textarea rows="5" cols = "30" name = "txt"></textarea>
		
		<br/>
		<!-- submit은 폼안에 있는 데이터를 서버로 전송 -->
		<input type = "submit" value="가입하기">
		<input type = "button" value="그냥버튼">
		
	</form>
</body>
</html>