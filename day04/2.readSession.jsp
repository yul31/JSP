<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>세션 정보 가져와서 출력</h3>
<hr>
<%
	String id="";
	String name="";
	int age=0;
	long createdTime=0;
	long timeUsed=0;
	
	if(!session.isNew()){
		//세션 정보 가져오기: id,age,name
		id=(String)session.getAttribute("id");
		name=(String)session.getAttribute("name");
		age=(Integer)session.getAttribute("age");
		//접속한 시간 확인
		createdTime=session.getCreationTime()/1000/60;
		timeUsed=(session.getLastAccessedTime()/1000/60)-createdTime;
		
	}else{
		out.print("클라이언트는 최초 접근했습니다.");
	}
%>
<h3>사용자 정보</h3>
id: <%=id %><br>
이름: <%=name %><br>
나이: <%=age %><br>
접속한 시점: <%=createdTime %>(분);<br>
세션 유지 시간: <%=timeUsed %>(분);
</body>
</html>