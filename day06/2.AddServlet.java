package com.smart.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Add")
public class AddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String num1Str=request.getParameter("num1");
		String num2Str=request.getParameter("num2");
		
		int num1=Integer.parseInt(num1Str);
		int num2=Integer.parseInt(num2Str);
		request.setAttribute("num1", num1);
		request.setAttribute("num2", num2);
		
		int sum=num1+num2;
		request.setAttribute("sum", sum);
		
		String url="sum.jsp";
		
		RequestDispatcher dispatcher=request.getRequestDispatcher(url);
		dispatcher.forward(request, response);	
	}
}
