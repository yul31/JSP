<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>쿠키 생성</h3>
<%
//1. 쿠키 생성: 이름, 나이 (키, 값)
	Cookie cookie=new Cookie("name","rose");

//2. 쿠키 정보 설정, 유효기간 초단위 정의
	cookie.setMaxAge(60*60);

//3. response 객체에 담아서 클라이언트로 보내기
	response.addCookie(cookie);
%>
</body>
</html>