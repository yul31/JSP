<%-- <%@page import="java.sql.*"%> 아래 줄에 이어서 써도 같은 의미--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body> <!-- allMember.jsp에서 복붙해와서 수정하기 -->
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
	String pwd=request.getParameter("pwd");
	String sql = "select * from member where userid='"+id+"'";
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		conn = DriverManager.getConnection(url, uid, pass);
		stmt = conn.createStatement();
		rs = stmt.executeQuery(sql); //db에 해당 레코드가 있으면 recordSet 리턴, 아니면 null 리턴
		String loginCheck = "";
		if(rs.next()) {
			String userid = rs.getString("userid");
			String rs_pwd = rs.getString("pwd");
			if(rs_pwd.equals(pwd)){
				//로그인 성공
				loginCheck = "로그인 성공";
			}else{
				//로그인 실패
				loginCheck = "로그인 실패";
			}
		}else{
			//로그인 실패
			loginCheck = "로그인 실패";
		}
		out.print("<b>"+loginCheck+"</b>");
		
	} catch (Exception e) {
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