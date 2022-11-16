<%@page import="java.net.URLDecoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>책 목록</h3>
<table>
<form action="shoppingCart.jsp" method="post">
<tr><th>책 제목</th><th>가격</th><th>장바구니 담기</th></tr>
<tr><td>서블릿</td><td>22000</td><td><input type="checkbox" name="book" value="서블릿"></td></tr>
<tr><td>자바</td><td>21000</td><td><input type="checkbox" name="book" value="자바"></td></tr>
<tr><td>파이썬</td><td>20000</td><td><input type="checkbox" name="book" value="파이썬"></td></tr>
<tr><td>머신러닝</td><td>25000</td><td><input type="checkbox" name="book" value="머신러닝"></td></tr>
<tr><td>영상처리</td><td>32000</td><td><input type="checkbox" name="book" value="영상처리"></td></tr>
<tr><td colspan="3" style="text-align:center"><input type="submit" value="장바구니 담기"></td></tr>
</form>
</table>
<div style="width:400px; border:1px solid black">
<h3>장바구니 목록</h3>
<%
	//1. 쿠키 정보 읽어오기
	Cookie[] cookies=request.getCookies();
	if(cookies != null){
		for(int i=0; i<cookies.length; i++){
			if(cookies[i].getName().contains("book")){
				String value=URLDecoder.decode(cookies[i].getValue(),"UTF-8"); //한글이 포함될 경우 디코딩 한다.
				out.print(value+"<br>");
			}
		}
	}
%>
</div>
</body>
</html>