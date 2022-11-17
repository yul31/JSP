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
<%
	request.setCharacterEncoding("utf-8");
	String[] book = {"서블릿","자바","파이썬","머신러닝","딥러닝"};
	String[] price = {"22000","25000","30000","45000","40000"};
%>
<h3>장바구니 만들기</h3>
<form action="shoppingCart.jsp" method="post">
<fieldset>
<legend>책 목록</legend>
<table>
<tr><th>책 제목</th><th>가격</th><th>장바구니 담기</th></tr>
<%
	for(int i =0;i<book.length;i++){
		out.print("<tr><td>"+book[i]+"</td><td>"+price[i]+"</td><td><input type='checkbox' name='books' value='"+book[i]+"'></td></tr>");
	}
%>
<tr><td colspan="3" style="text-align:center" ><input type="submit" value="장바구니 목록"></td></tr>
</table>
</fieldset>
</form>
<div style="width: 400px; border: 1px solid #000000; background: #e6e6e6; text-align:center;">
<h3>장바구니 목록</h3>
<form action="deleteShopping.jsp" method="post">
<table>
<%
	Cookie[] getCart = request.getCookies(); 
	for(int i = 0;i<getCart.length;i++){
		String name = URLDecoder.decode(getCart[i].getName(), "utf-8");
		if(name.contains("book")){
			String value =URLDecoder.decode(getCart[i].getValue(), "utf-8");
			out.print(value+"<input type='checkbox' name='rebook' value="+value+"><br>");
			}
	}
%>
<input type="submit" value="삭제">
</table>
</form>
</div>

</body>
</html>