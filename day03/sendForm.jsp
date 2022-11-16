<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>검색 사이트로 연결시키기(sendRedirect)</h3>
<form action="sendRedirectEx.jsp">
<select name="url">
<option value="http://www.naver.com">네이버
<option value="http://www.daum.net">다음
<option value="http://www.google.com">구글
</select>
<input type="submit" value="send">
</form>
</body>
</html>