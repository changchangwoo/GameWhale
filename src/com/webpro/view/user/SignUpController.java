package com.webpro.view.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webpro.common.*;

@WebServlet("/signup.do")
public class SignUpController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("memberid");
		String pw = request.getParameter("password");
		String pc = request.getParameter("pwcheck");
		String nn = request.getParameter("nickname");
		String mn = request.getParameter("membername");
		String em1 = request.getParameter("email1");
		String em2 = request.getParameter("email2");
		String em = em1.concat("@"+em2);
		String pn = request.getParameter("phonenumber");
		String gd = request.getParameter("options-outlined");
		String ty = null;
		if (id.length() != 0 && pw.length() != 0 && pc.length() != 0 && nn.length() != 
				0 && mn.length() != 0 && em1.length() != 0 && em2.length() != 0 && pn.length() != 0 && gd != null) {
			if (pw.equals(pc)) {
				RegisterMemberDTO rt = new RegisterMemberDTO();
				rt.setMemberid(id);
				rt.setPassword(pw);
				rt.setNickname(nn);
				rt.setMembername(mn);
				rt.setEmail(em);
				rt.setPhonenumber(pn);
				rt.setGender(gd);
				rt.setType(ty);
				RegisterMemberDAO rd = new RegisterMemberDAO();
				try {
					rd.insertMember(rt);
				} catch (SQLException e) {
					e.printStackTrace();
				}
				response.sendRedirect("loginPage/register_success.jsp");
			}
			else {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('비밀번호가 일치하지 않습니다.')");
				out.println("history.back()");
				out.println("</script>");
			}
			
		}
		else if (gd == null) {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('성별을 선택해주세요.')");
			out.println("history.back()");
			out.println("</script>");
		}
		else {
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>");
			out.println("alert('빈칸이 있는지 확인해주세요.')");
			out.println("history.back()");
			out.println("</script>");
		}
	}

}
