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
<h3>로그인 확인</h3>
<%
	//1. 로그인 정보 가져오기 id="smart" pwd="1234"
	request.setCharacterEncoding("UTF-8");
	String id=request.getParameter("id");
	String pw=request.getParameter("pwd");
	
	//2. 로그인 정보 맞는지 판단
	//맞으면 세션 정보 저장
	//(name="홍길동",id 정보 저장 후 main.jsp로 페이지 이동)
	if(id.equals("smart") && pw.equals("1234")){
		session.setAttribute("id", id);
		session.setAttribute("name", "홍길동");
		response.sendRedirect("main.jsp");
	}else{
	//틀리면 loginForm.jsp 페이지로 이동
		response.sendRedirect("loginForm.jsp");
	}
	
%>
</body>
</html>