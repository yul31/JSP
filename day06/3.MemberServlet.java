package com.smart.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smart.model.MemberBean;

@WebServlet("/member")
public class MemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1. 데이터 받기, 한글 포함될 경우 인코딩 지정
		request.setCharacterEncoding("utf-8");
		
		String name=request.getParameter("name");
		String pwd=request.getParameter("pwd");
		String email=request.getParameter("email");
		
		//2. 전송된 회원 데이터를 객체에 담기
		MemberBean member = new MemberBean(name, pwd, email);
		
		//3. request 객체 속성값에 member 등록하고 데이터를 View로 전달
		request.setAttribute("member", member);
		String url="memberView.jsp";
		RequestDispatcher dispatcher = request.getRequestDispatcher(url);
		dispatcher.forward(request, response);
	}
}
