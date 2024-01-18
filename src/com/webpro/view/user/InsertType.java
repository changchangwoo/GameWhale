package com.webpro.view.user;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.mysql.cj.Session;
import com.webpro.common.RegisterMemberDAO;
import com.webpro.common.RegisterMemberDTO;

@WebServlet("/add_type.do")
public class InsertType extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String type = request.getParameter("type_name");
		String id = (String) request.getSession().getAttribute("userid");
		switch (type) {
        case "0":  type = "INTJ";
                 break;
        case "1":  type = "INFJ";
                 break;
        case "2":  type = "ISTJ";
                 break;
        case "3":  type = "ISTP";
                 break;
        case "4":  type = "INTP";
                 break;
        case "5":  type = "INFP";
                 break;
        case "6":  type = "ISFJ";
                 break;
        case "7":  type = "ISFP";
                 break;
        case "8":  type = "ENTJ";
                 break;
        case "9":  type = "ENFJ";
                 break;
        case "10":  type = "ESTJ";
                 break;
        case "11":  type = "ESTP";
                 break;
        case "12":  type = "ENTP";
                 break;
        case "13":  type = "ENFP";
        		break;
        case "14":  type = "ESFJ";
        		break;
        case "15":  type = "ESFP";
        		break;
    }
		RegisterMemberDTO rdto = new RegisterMemberDTO();
		rdto.setType(type);
		rdto.setMemberid(id);
		RegisterMemberDAO rdao = new RegisterMemberDAO();
		try {
			rdao.setType(rdto);
			response.sendRedirect("index.jsp");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}

}
