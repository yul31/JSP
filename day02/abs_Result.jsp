<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!
	//절대값 구하는 메소드 정의
	int abs(int num){
		if(num>0){
			return num;
		}else{
			return -num;
		}
	}
%>

<%
	//데이터 가져오기
	int num=Integer.parseInt(request.getParameter("num"));
	//메소드 호출
	int result=abs(num);
	
	out.print(num+"의 절대값: "+result);
%>
<hr><!-- 위 출력식과 결과 같음 -->
<%=num %>의 절대값: <%=result %>

</body>
</html>