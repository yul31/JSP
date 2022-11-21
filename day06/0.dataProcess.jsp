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
<body>
<fmt:requestEncoding value="utf-8"/> <!-- 한글 인코딩 방법 -->
<%-- 기존 방식
<%
	String data=request.getParameter("data");
	String[] foods=request.getParameterValues("food");
	for(String food: foods){
		out.print("<br>"+food);
	}
%>
<%=data %> --%>
<p>표현 언어(EL)을 이용한 데이터 가져오기
<hr>
보내온 데이터:
${param.data }
<p>사용자의 다중 선택 처리하기</p>
<c:forEach items="${paramValues.food }" var="food"> <!-- 다중 선택 방법 -->
	${food }
</c:forEach>

</body>
</html>