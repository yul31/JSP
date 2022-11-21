<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>기존 방식으로 처리</h3>
<%
	String num1=request.getParameter("num1");
	String num2=request.getParameter("num2");
	int sum=(Integer)request.getAttribute("sum");
%>
<%=num1 %>+<%=num2 %>=<%=sum %>

<h3>EL 방식으로 처리</h3>
${num1 }+${num2 }=${sum }
</body>
</html>