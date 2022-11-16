<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>쿠키 정보 만들기</h3>
<%
	//1. 쿠키 정보 생성
	Cookie cookie1=new Cookie("name","rose");
	Cookie cookie2=new Cookie("age","22");
	Cookie cookie3=new Cookie("subject","program");
	
	//1-2.쿠키의 만료기간 지정하기
	cookie1.setMaxAge(60*60); //1시간 후에 만료됨
	cookie2.setMaxAge(30); //30초 후에 만료됨

	//2. response객체에 정보 추가
	response.addCookie(cookie1);
	response.addCookie(cookie2);
	response.addCookie(cookie3);
%>

</body>
</html>