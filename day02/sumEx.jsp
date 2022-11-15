<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- HTML 주석 -->
<%-- JSP 주석
	1.1~100까지의 합을 구하여 화면에 출력하시오.
 --%>
 
 <%
 	int sum=0;
 	for(int i=1; i<=100; i++){
 		sum+=i;
 	}
 %>
1~100까지의 합: <%=sum %>
</body>
</html>