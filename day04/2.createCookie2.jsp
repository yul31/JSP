<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>책정보 보관 쿠키 생성</h3>
<%
	//1.쿠키값으로 한글이 포함될 경우 인코딩 방식을 지정한다.
	Cookie cookie1=new Cookie("book1",URLEncoder.encode("서블릿","UTF-8"));
	Cookie cookie2=new Cookie("book2",URLEncoder.encode("자바","UTF-8"));
	Cookie cookie3=new Cookie("book3",URLEncoder.encode("파이썬","UTF-8"));
	
	cookie1.setMaxAge(60*60); //쿠키 만료는 1시간후
	cookie2.setMaxAge(60*60); //쿠키 만료는 1시간후
	cookie3.setMaxAge(60*60); //쿠키 만료는 1시간후
	
	//2.response에 객체에 담아서 클라이언트로 보내기
	response.addCookie(cookie1);
	response.addCookie(cookie2);
	response.addCookie(cookie3);
%>

</body>
</html>