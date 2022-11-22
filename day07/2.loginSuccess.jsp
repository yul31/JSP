<%@page import="com.smhrd.model.MemberVO"%>
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
  //닉네임 가져오기
  //1) session에 있는 데이터 가져오기
	MemberVO result = (MemberVO)session.getAttribute("info");
  //2)VO 안의 닉네임 가져오기
	String name = result.getName();
%>
<div style="width:250px; height:150px;text-align:center;border:1px solid black;">
<h3>로그인 성공</h3>
<%=name %>님 <a href ="logout.jsp">로그아웃</a><br><br>
<a href ="allMember.jsp">회원 정보 보기</a>
</div>
</body>
</html>