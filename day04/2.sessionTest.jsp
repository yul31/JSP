<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>세션 ID 출력</h3>
<%
	//현재 세션(클라이언트) id 얻기-서버가 자동으로 부여된 값을 확인
	String sessionId=session.getId();

	if(sessionId != null){
		out.print("sessionID: "+sessionId);
	}else{
		out.print("세션 정보 없습니다.");
	}
%>
<h3>세션 정보 읽어오기</h3>
<%
	//세션 속성값 지우기
	session.removeAttribute("age");

	//세션에 저장된 정보를 모두 읽어오기
	Enumeration sessionNames=session.getAttributeNames();
	while(sessionNames.hasMoreElements()){
		//session에 저장된 key와 value를 읽기
		String name=(String)sessionNames.nextElement();
		String value=(String)session.getAttribute(name);
		out.print(name+": "+value+"<br>");
	}
%>
</body>
</html>