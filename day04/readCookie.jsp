<%@page import="java.net.URLDecoder"%>
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
	//request 객체에 한글 포함될 경우 인코딩 방식 지정
	request.setCharacterEncoding("utf-8");

	//request 객체에서 쿠키정보 가져오기
	Cookie[] cookies=request.getCookies();
	//name  |  value
	
	//키가 name일 경우에는 만료시간을 0으로 설정한다.->쿠키 제거하는 방법
	for(int i=0; i<cookies.length; i++){
		if(cookies[i].getName().equals("name")){
			cookies[i].setMaxAge(0);
			response.addCookie(cookies[i]);
		}
	}
%>
<h3>책에 대한 쿠키 정보만 출력하기</h3>

	<table style="border:1px solid black; width:400px;">
	<tr><th>name</th><th>value</th></tr>
<%
//book1="서블릿" book2="자바", ...
	for(int i=0; i<cookies.length; i++){
		//book1 서블릿 book2 자바 book3 파이썬
		String name=cookies[i].getName();
		if(name.contains("book")){
			String value=URLDecoder.decode(cookies[i].getValue(),"UTF-8");
			out.print("<tr><td>"+name+"</td><td>"+value+"</td></tr>");
	}
}
%>
</table>
</body>
</html>