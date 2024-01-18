package com.webpro.view.user;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;

//import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.webpro.common.RegisterMemberDAO;
import com.webpro.common.RegisterMemberDTO;

@WebServlet("/list.do")
public class MemberListController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RegisterMemberDAO rdao = new RegisterMemberDAO();
		try {
			ArrayList<RegisterMemberDTO> mList = rdao.selectMemberList();
			HttpSession session = request.getSession();
			session.setAttribute("vlist", mList);
			
			//RequestDispatcher dispatcher = request.getRequestDispatcher("memberList.jsp");
			//dispatcher.forward(request, response);
			response.sendRedirect("admin/admin_memberlist.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
