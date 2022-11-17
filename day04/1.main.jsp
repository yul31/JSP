<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>인증 성공</h3>
<hr>
<%
	//세션이 존재한다면 정보 읽기
	if(!session.isNew()){ //(새로운 손님이 아니면=기존 고객)
		String id=(String)session.getAttribute("id");
		String name=(String)session.getAttribute("name");
		if(id != null){
			//세션정보 존재한다면 이름(아이디)님 환영합니다. 출력
			out.print(name+"("+id+")님 환영합니다.");
			//logout.jsp로 페이지 이동
			out.print("<br><a href='logout.jsp'>로그아웃</a>");
		}else{ //(세션정보 존재하지 않으면=잘못 입력하면)
			response.sendRedirect("loginForm.jsp");
		}
	}else{ //(새로운 손님이면)
		// out.print("경고: 잘못된 경로입니다."); 아래식 중 하나 선택
		response.sendRedirect("loginForm.jsp");
	}
	
	/* 두 식은 같은 의미
	String id=session.getAttribute("id").toString(); ->이걸로 작성하면 작동하지 않음
	String id=(String)session.getAttribute("id"); */
	
%>
</body>
</html>