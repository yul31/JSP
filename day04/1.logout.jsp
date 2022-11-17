<%@page import="java.util.Enumeration"%>
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
	//로그아웃: 세션 제거 후 로그인 폼으로 이동
	// session.removeAttribute(name); 세션을 유지하면서 특정 세션값만 제거
	if((String)session.getAttribute("id")!=null){
		session.invalidate(); //세션 자체(클라이언트의 연결)를 제거	
	}
	response.sendRedirect("loginForm.jsp");
%>
</body>
</html>