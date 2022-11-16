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
	//1.쿠키 정보 가져오기
	Cookie[] cookies=request.getCookies();
	if(cookies != null){
%>
<fieldset>
<legend>쿠기 정보</legend>
<table>
<tr><th>쿠키 이름</th><th>쿠키 값</th></tr>
<%
	//2.쿠키 정보 출력하기
	//(key,value)로 존재함
	for(int i=0; i<cookies.length; i++){
		out.print("<tr><td>"+cookies[i].getName()+"</td>");
		out.print("<td>"+cookies[i].getValue()+"</td></tr>");
		}
	}else{
		out.print("쿠키 정보가 없습니다.");
	}
%>
</table>
</fieldset>
</body>
</html>