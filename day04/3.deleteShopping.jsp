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

	Cookie[] cookies = request.getCookies();
	String[] rebook = request.getParameterValues("rebook");
	for(int i = 0 ; i<rebook.length;i++){
		for(int j = 0;j<cookies.length;j++){
			if(cookies[j].getValue().equals(rebook[i])){
				cookies[j].setMaxAge(0);
				response.addCookie(cookies[j]);
			}
		}
	}
	response.sendRedirect("shoppingBook.jsp");
	%>
</body>
</html>