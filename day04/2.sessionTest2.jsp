<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>세션 유효시간 확인하기</h3>
<p>서버에서 일괄적으로 설정한다.
<%
	int inactiveTime=session.getMaxInactiveInterval();//서버에서 설정된 최초 시간 30분
	session.setMaxInactiveInterval(40); //초단위로 세팅
%>
<%=inactiveTime %><br>
<a href="readSessionTime.jsp">세션 시간 읽기</a>
</body>
</html>