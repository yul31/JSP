<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
	table {background:black;}
	th,td {background:white; cellspacing:1px;}
</style>
<body>
<fmt:requestEncoding value="utf-8"/> <!-- 한글 인코딩 방법 -->
<h3>데이터 처리 결과</h3>
<fieldset>
<legend>사용자 정보</legend>
<table>
<tr><th>이름</th><th>나이</th><th>성별</th><th>좋아하는 음식</th><th>관심분야</th></tr>
<tr><td>${param.name}</td><td>${param.age}</td><td>${param.gender}</td>
<td>
<c:forEach items="${paramValues.food }" var="food">
	${food}<br>
</c:forEach>
</td>
<td>
<c:forEach items="${paramValues.subject }" var="subject">
${subject}<br>
</c:forEach>
</td>
</tr>
</table>
</fieldset>
</body>
</html>