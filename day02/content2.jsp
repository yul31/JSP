<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div {width:500px; border:1px solid black; text-align:center;}
	ul li {display:inline;}
	a {text-decoration:none;}
	.main {height:400px;}
	.footer {height:50px; line-height:50px;}
</style>
</head>

<body>
<!-- include 지시자 이용한 헤더파일 내용 삽입 -->
<%@include file="header.jsp" %>
<div class="main">
<h3>두번째 페이지입니다.</h3>

<a href="content1.jsp">메인 페이지</a>로 이동합니다.
</div>

<!-- include 지시자 이용한 푸터파일 내용 삽입 -->
<%@include file="footer.jsp" %>

</body>
</html>