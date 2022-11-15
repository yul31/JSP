package unit02;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/styleP")
public class StyleTest extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		
		String id=request.getParameter("id");
		String pwd=request.getParameter("pwd");
		String pwdCheck=request.getParameter("pwdCheck");
		String gender=request.getParameter("gender");
		String blood=request.getParameter("blood");
		String birth=request.getParameter("birth");
		String[] hobbies=request.getParameterValues("hobby");
		String color=request.getParameter("color");
		String word=request.getParameter("word");
		
		out.print("id: "+id+"<br>");
		out.print("pw: "+pwd+"<br>");
		out.print("rpw: "+pwdCheck+"<br>");
		out.print("성별: "+gender+"<br>");
		out.print("혈액형: "+blood+"<br>");
		out.print("생일: "+birth+"<br>");
		
		out.print("취미: ");
		for(int i=0; i<hobbies.length; i++) {
			out.print(hobbies[i]+" ");
			
			if(i<(hobbies.length-1)) {
				out.print(",");
			}
		}
		out.print("<br>"+"color: "+color+"<br>");
		out.print("<div style='width:200px; height:200px; background: "+color+";'></div>");
		out.print("message: "+word);
		
	}

}
