<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>선언문 사용</h3>
<%!
//선언문에 사용된 변수는 멤버 필드로 선언된다.
int global_cnt=0;
%>
<br>지역변수 선언<br>
<%
int local_cnt=0;

global_cnt++;
out.print("global_cnt: "+global_cnt);

local_cnt++;
out.print("<br><br>local_cnt: "+local_cnt);

out.print("코드 수정했음");
%>
</body>
</html>