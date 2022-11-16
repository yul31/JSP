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
	String url=request.getParameter("url");

	//2.사용자 요청한 url로 이동시키기
	response.sendRedirect(url);
%>
</body>
</html>