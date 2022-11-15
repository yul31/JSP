<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- <h3>Calendar 객체 사용하기</h3> -->

<%
	Calendar cal=Calendar.getInstance();

	int year=cal.get(Calendar.YEAR);
	int month=cal.get(Calendar.MONTH)+1;
	int day=cal.get(Calendar.DATE);
	
	out.print("Today: "+year+"년"+month+"월"+day+"일");
%>
</body>
</html>