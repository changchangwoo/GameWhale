package com.webpro.view.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webpro.common.RegisterMemberDAO;
import com.webpro.common.RegisterMemberDTO;

@WebServlet("/login.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("login_id");
		String pw = request.getParameter("login_passwd");
		String sc = request.getParameter("saveIDPW");
		HttpSession session = request.getSession();
		RegisterMemberDTO rdto = new RegisterMemberDTO();
		rdto.setMemberid(id);
		rdto.setPassword(pw);
		RegisterMemberDAO rdao = new RegisterMemberDAO();
		try {
			boolean loginCheck = rdao.checkMember(rdto);
			if (loginCheck) {
				session.setAttribute("userid", rdto.getMemberid());
				if (sc != null) {
					session.setAttribute("loginID", id);
					session.setAttribute("loginPW", pw);
					session.setAttribute("saveCheck", sc);
				} else {
					session.setAttribute("saveCheck", null);
				}
				response.sendRedirect("index.jsp");
			} else {
				response.setContentType("text/html; charset=UTF-8");
				PrintWriter out = response.getWriter();
				out.println("<script>");
				out.println("alert('로그인에 실패하셨습니다. 다시한번 확인해주세요')");
				out.println("history.back()");
				out.println("</script>");
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

}
