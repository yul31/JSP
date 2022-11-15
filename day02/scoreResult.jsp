<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>학점 확인 결과</h3>
<%!
	double average(int score[]){
	//배열값을 읽으면서 total 구하기->for()이용
		int sum=0;
		for(int i=0; i<score.length; i++){
			sum+=score[i];
		}
		//평균 구하기
		return(double)sum/score.length;
	}
%>
<%
	//데이터(점수) 가져오기, 한글포함될 경우 인코딩 방식 지정
	request.setCharacterEncoding("utf-8");

	String name=request.getParameter("name");
	//가져온 점수 정수형 변환
	int sc1=Integer.parseInt(request.getParameter("java"));
	int sc2=Integer.parseInt(request.getParameter("web"));
	int sc3=Integer.parseInt(request.getParameter("iot"));
	int sc4=Integer.parseInt(request.getParameter("android"));
	//점수들을 배열로 저장
	int score[]={sc1,sc2,sc3,sc4};
	
	//메소드 호출
	double result=average(score);
	
	//학점 확인 메소드
	String grade="";
	if(result>95){
		grade="A+";
	}else if(result>90){
		grade="A";
	}else if(result>85){
		grade="B+";
	}else if(result>80){
		grade="B";
	}else {
		grade="F";
	}
%>
<fieldset>
<legend>학점확인프로그램</legend>
<table>
<tr><td>이름</td><td><%=name %></td></tr>
<tr><td>JAVA점수</td><td><%=sc1 %></td></tr>
<tr><td>WEB점수</td><td><%=sc2 %></td></tr>
<tr><td>IOT점수</td><td><%=sc3 %></td></tr>
<tr><td>ANDROID점수</td><td><%=sc4 %></td></tr>
<tr><td>평균</td><td><%=result%></td></tr>
<tr><td>학점</td><td><%=grade%></td></tr>
</table>
</fieldset>

</body>
</html>