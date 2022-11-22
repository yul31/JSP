<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="width:250px; height:150px;text-align:center;">
<fieldset>
<h3>로그인 페이지</h3>
<form action="LoginService" method="post">
<span style="width:50px;">ID </span><span><input type="text" name="userid" value="${userid}"></span>
<br>
<span style="width:50px;">PW </span><span><input type="password" name="pwd"></span>
<br>${message}
<input type="submit" value = "로그인">
</form>
</fieldset>
</div>
</body>
</html>