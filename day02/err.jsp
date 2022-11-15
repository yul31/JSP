<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %> <!-- 지시자 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>서비스 오류</h3>
<p>문서에 문제가 발생했습니다.<br>
복구 중이니 잠시 기다려주십시오.<br>
<%=exception.getMessage() %>
<hr>
문의:010-1234-5678
</body>
</html>