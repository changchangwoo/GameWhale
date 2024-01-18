package com.webpro.view.user;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webpro.common.RegisterMemberDAO;
import com.webpro.common.RegisterMemberDTO;


@WebServlet("/update_mypage.do2")
public class UpdateMypage2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("memberid");
		String pw = request.getParameter("password");
		String nn = request.getParameter("nickname");
		String mn = request.getParameter("membername");
		String em1 = request.getParameter("email1");
		String em2 = request.getParameter("email2");
		String em = em1.concat("@"+em2);
		String pn = request.getParameter("phonenumber");
		String gd = request.getParameter("options-outlined");
		RegisterMemberDTO rt = new RegisterMemberDTO();
		
		rt.setMemberid(id);
		rt.setPassword(pw);
		rt.setNickname(nn);
		rt.setMembername(mn);
		rt.setEmail(em);
		rt.setPhonenumber(pn);
		rt.setGender(gd);
		
		RegisterMemberDAO rd = new RegisterMemberDAO();
		try {
			rd.MemberUpdate(rt);
			response.sendRedirect("myPage/mypage.jsp");
			
			} catch (SQLException e) {
			e.printStackTrace();
		}


	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
