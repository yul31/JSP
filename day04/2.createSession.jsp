<%@page import="javax.websocket.Session"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>세션 정보 생성하기</h3>
<hr>
<%
	//세션 정보 생성하기
	session.setAttribute("id", "smart");
	session.setAttribute("age", 22);
	session.setAttribute("name", "홍길동");
%>
</body>
</html>