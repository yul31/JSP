<%@page import="java.net.URLDecoder"%>
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
<%
	request.setCharacterEncoding("utf-8");

	//1. 선택한 책 목록 가져오기
	String[] books=request.getParameterValues("books");

	//2. 선택 목록들에 대하여 쿠키 생성 및 만료기간 설정,response 객체에 저장	
	if(request.getCookies() != null){
		Cookie[] cookies = request.getCookies();
		for(int i = 0; i<cookies.length;i++){
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}
	}
	
	for(int i=0; i<books.length; i++){
		Cookie cookie=new Cookie("book"+(i+1),books[i]);
		cookie.setMaxAge(60*60);
		response.addCookie(cookie);
	}
	
	//3.shopping으로 이동시키기
	response.sendRedirect("shoppingBook.jsp");
%>
</body>
</html>