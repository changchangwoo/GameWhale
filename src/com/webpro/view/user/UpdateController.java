package com.webpro.view.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.mysql.cj.Session;
import com.webpro.common.RegisterMemberDAO;
import com.webpro.common.RegisterMemberDTO;

@WebServlet("/update.do")
public class UpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String update_id = request.getParameter("update_id");
		HttpSession session = request.getSession();
		RegisterMemberDAO rdao = new RegisterMemberDAO();
		RegisterMemberDTO rdto = new RegisterMemberDTO();
		try {
			rdto = rdao.getMemberList(update_id);
			session.setAttribute("id_list", rdto);
			String[] emailArray = rdto.getEmail().split("@");
			String email1 = emailArray[0];
			String email2 = emailArray[1];
			session.setAttribute("em1", email1);
			session.setAttribute("em2", email2);
			String GD = rdto.getGender();
			session.setAttribute("gender", GD);
			response.sendRedirect("admin/admin_memberUpdate.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
		
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
