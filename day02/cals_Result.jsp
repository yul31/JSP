<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>계산 결과</h3>
<% 
//데이터 가져오기
int num1=Integer.parseInt(request.getParameter("num1"));
int num2=Integer.parseInt(request.getParameter("num2"));
String op=request.getParameter("op");

//연산하기
int result=0;
switch(op) {
	case "+" : result=num1+num2; break;
	case "-" : result=num1-num2; break;
	case "*" : result=num1*num2; break;
	case "/" : result=num1/num2; break;
}
out.print(num1+op+num2+"="+result);
%>
<br><!-- 위와 출력 결과 같음-->
<%=num1+op%><%=num2%>=<%=result%>
</body>
</html>