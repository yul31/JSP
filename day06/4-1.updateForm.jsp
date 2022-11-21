<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%!//선언부는 첫 방문자에 의해서 단 한번 수행합니다.
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
	String url = "jdbc:mysql://localhost:3306/memberdb?"
			      +"useUnicode=true&characterEncoding=utf-8";
	String uid = "root";
	String pass = "1234";
%>
<%
	String id=request.getParameter("id");
	String sql = "select * from member where userid='smart'";
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url, uid, pass);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql);
		if(rs.next()){
%>
<h3>회원의 정보 수정하기</h3>
<form action="updateMember.jsp" method="post">
<table>
<tr>
<td>이름</td>
<td><input type="text" name="name" value=<%=rs.getString("name")%> size="20"></td>
</tr>
<tr>
<td>아이디</td>
<td><input type="text" name="userid" value=<%=rs.getString("userid")%> disabled size="20"></td> <!-- disabled : userid는 수정할 수 없도록 -->
</tr>
<tr>
<td>비밀번호</td>
<td><input type="password" name="pwd" value=<%=rs.getString("pwd")%> size="20"></td>
</tr>
<tr>
<td>이메일</td>
<td><input type="text" name="email" value=<%=rs.getString("email")%> size="20"></td>
</tr>
<tr>
<td>전화번호</td>
<td><input type="text" name="phone" value=<%=rs.getString("phone")%> size="20"></td>
</tr>
<tr>
<td>등급</td>
<td><input type="text" name="admin" value=<%=rs.getString("admin")%> size="20"></td>
</tr>
<tr>
<td><input type=submit value="전송"></td>
<td><input type=reset value="취소"></td>
</tr>
</table>
</form>
<% } %>
<%
	}  catch (Exception e) {
		e.printStackTrace();
	} finally {
		try {
			if (rs != null)
				rs.close();
			if (stmt != null)
				stmt.close();
			if (conn != null)
				conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
%>
</body>
</html>