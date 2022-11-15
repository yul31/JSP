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
<div class="main">
<h3>메인페이지입니다.</h3>

<a href="content2.jsp">두번째 페이지</a>로 이동합니다.
</div>

<!-- include 액션 태그 이용한 푸터파일 내용 삽입 -->
<div>
<h3>액션 태그는 XML 문법 기준을 준수한다.</h3>
<jsp:include page="declaEx2.jsp"/>
</div>

</body>
</html>