<%@page import="java.net.URLEncoder"%>
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
	//1.데이터 가져오기
	request.setCharacterEncoding("UTF-8");//한글 포함될 경우 지정함
	String id=request.getParameter("id");
	String pwd=request.getParameter("pwd");
	
	//콘솔 창에 띄워서 제대로 전달되는지 확인
	//System.out.println("id: "+id);
	//System.out.println("pwd: "+pwd);
	
	//2.아이디(smart)와 비밀번호(1234) 비교 후 페이지 이동
	if(id.equals("스마트") && pwd.equals("1234")){
		//성공페이지로 이동
		response.sendRedirect("loginSuccess.jsp?id="+URLEncoder.encode(id, "utf-8")); //한글 포함될 경우 인코딩
	}else{
		//실패페이지로 이동
		response.sendRedirect("loginFail.jsp");
	}
%>
</body>
</html>