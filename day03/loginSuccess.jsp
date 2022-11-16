<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	//1.데이터 가져오기
	String id=request.getParameter("id");
	String name=request.getParameter("name");
	String age=(String)request.getAttribute("age");
%>
<%=name %>님(나이:<%=age %>) 환영합니다.<br>
<a href="login.html">로그아웃</a>
</body>
</html>