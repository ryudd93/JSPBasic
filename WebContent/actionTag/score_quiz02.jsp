<%@page import="com.forward.Forward"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 
	앞에서 넘어온 폼값을 받아서 평균을 구합니다.
	평균이 60이상이면 score_quiz03으로 이동해서 평균과 이름을 출력
	평균이 60이하이면 score_quiz04로 이동해서 "~님은 불합격입니다."
	
	조건 : 세션 사용하지 않기
	
	 */
	 
	 request.setCharacterEncoding("utf-8");

	 String name = request.getParameter("name");
	 String kor = request.getParameter("kor");
	 String eng = request.getParameter("eng");
	 String math = request.getParameter("math");
	 
	 int total = (Integer.parseInt(kor)) + (Integer.parseInt(eng)) + (Integer.parseInt(math)); 
	 double avg = total/3.0;
	 
	 request.setAttribute("result", avg);

	 if (avg >= 60) {
		 
		 request.getRequestDispatcher("score_quiz03.jsp").forward(request, response);
		 //RequestDispatcher dp = request.getRequestDispatcher("score_quiz03.jsp");
		 //dp.forward(request, response);
		 
	 } else {
		 
		 request.getRequestDispatcher("score_quiz04.jsp").forward(request, response);
		 //RequestDispatcher dp = request.getRequestDispatcher("score_quiz04.jsp");
		 //dp.forward(request, response);
	 }
	 
%>