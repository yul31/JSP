<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>회원의 정보 입력 폼</h3>
<form action="addMember.jsp" method="post">
이름 <input type=text name=name placeholder="이름"><br>
아이디 <input type=text name=userid placeholder="아이디"><br>
비밀번호 <input type=password name=pwd placeholder="비밀번호"><br>
이메일 <input type=email name=email placeholder="이메일"><br>
전화번호 <input type=text name=phone placeholder="전화번호"><br>
등급 <input type=radio name=admin value="0">관리자
<input type=radio name=admin value="1">일반회원<br>
<input type=submit value="전송">
<input type=reset value="취소">
</form>
</body>
</html>