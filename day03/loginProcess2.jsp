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
	String name=request.getParameter("name");
	
	//2.아이디(smart)와 비밀번호(1234) 비교 후 페이지 이동
	if(id.equals("smart") && pwd.equals("1234")){
		//forward()를 이용한 성공페이지로의 이동
		//전송된 데이터 이외에 추가적인 사용자 정보(DB에서 가져온)를 url로 보내기
		request.setAttribute("age", "22");
		//1.RequestDispatcher 객체 얻기
		String url="loginSuccess.jsp";
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request,response);
	}else{
		//실패페이지로 이동
		response.sendRedirect("loginFail.jsp");
	}
%>
</body>
</html>