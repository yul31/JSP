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
	boolean flag=session.isNew();

	if(flag){ //true: 새로운 손님(새로운 브라우저 창)
		out.print("반갑습니다. 손님");
	}else{ //이미 접속된 손님(동일한 브라우저 창)
		out.print("아직 활동중이시군요.");
	}
%>
</body>
</html>