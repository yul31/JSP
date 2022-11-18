<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.addr.app.*"%>
<!DOCTYPE html>
<% request.setCharacterEncoding("UTF-8"); %>

<jsp:useBean id="addr" class="com.addr.app.AddrBean"/>
<jsp:setProperty name="addr" property="*"/>
<jsp:useBean id="am" class="com.addr.app.AddrManager" scope="application"/>
<%
	am.add(addr);
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ch07 : addr_add.jsp</title>
</head>
<body>
<div align="center">
<H2>등록내용</H2>
이름 : <jsp:getProperty property="username" name="addr"/><P>
전화번호 : <%=addr.getTel() %><P>
이메일 : <%=addr.getEmail() %> <P>
성별 : <%=addr.getGender() %>
<HR>
<a href="addr_list.jsp">목록 보기</a>
</div>
</body>
</html>










