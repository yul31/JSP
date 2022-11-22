package com.smhrd.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.DAO;
import com.smhrd.model.MemberVO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//1. 데이터 가져오기
		String id = request.getParameter("userid");
		String pw = request.getParameter("pwd");
		//2. 가져온 데이터를 하나의 자료형으로 묶기
		MemberVO vo = new MemberVO(id, pw);
		//3. 데이터베이스 접근 객체 생성
		DAO dao = new DAO();
		//4. login 메소드 사용하기
		MemberVO result = dao.login(vo);
		//5. 흐름 제어하기
		if(result != null) {
			//성공
			//jsp: session 내장객체->별도 생성 필요 없음
			//servlet: session 내장객체 아님. 생성 작업 필요
			
			//1)session은 클라이언트가 요청하면 server에서 session id를 만들어서 client로 되돌려준다.
			//2)session을 꺼내올 때 클라이언트(웹브라우저)가 가지고 있는 session id값이 필요하다.
			//3)웹브라우저 요청에 대한 정보가 담긴 request로 부터 session을 꺼내와야 한다.
			HttpSession session = request.getSession();
			session.setAttribute("info", result);
			
			response.sendRedirect("loginSuccess.jsp");
		}else {
			//실패
			response.sendRedirect("loginFail.jsp");
		}
	}
}
