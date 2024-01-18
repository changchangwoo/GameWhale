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

import com.webpro.common.Recommend_DAO;
import com.webpro.common.Recommend_DTO;
import com.webpro.common.RegisterMemberDAO;
import com.webpro.common.gameDAO;
import com.webpro.crawl.gameDTO;

@WebServlet("/get_type.do")
public class getType extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	response.setContentType("text/html;charset=UTF-8");
	String id = (String) request.getSession().getAttribute("userid");
	if(id == null) response.sendRedirect("restrict.jsp");
	RegisterMemberDAO rdao = new RegisterMemberDAO();
	Recommend_DAO redao = new Recommend_DAO();
	gameDAO gdao = new gameDAO();
	HttpSession session = request.getSession();
	
	try {
		String type = rdao.getType(id);
		switch (type) {
case "INTJ":  type = "치밀한 전략가";
        break;
case "INFJ":  type = "선의의 선지자";
        break;
case "ISTJ":  type = "소리 없는 영웅";
        break;
case "ISTP":  type = "도전적인 완벽주의자";
        break;
case "INTP":  type = "논리적인 혁신가";
        break;
case "INFP":  type = "낭만적인 이상주의자";
		ArrayList<Recommend_DTO> infp_list = redao.infpList();
		session.setAttribute("relist", infp_list);
        break;
case "ISFJ":  type = "진정한 동반자";
        break;
case "ISFP":  type = "감각적인 예술가";
        break;
case "ENTJ":  type = "천재적인 사령관";
        break;
case "ENFJ":  type = "정의로운 주인공";
        break;
case "ESTJ":  type = "철저한 관리자";
		ArrayList<Recommend_DTO> estj_list = redao.estjList();
		session.setAttribute("relist", estj_list);
        break;
case "ESTP":  type = "화끈한 도박사";
        break;
case "ENTP":  type = "유쾌한 혁명가";
        break;
case "ENFP":  type = "즉흥적인 이상가";
		break;
case "ESFJ":  type = "활발한 사교가";
		break;
case "ESFP":  type = "최고의 엔터테이너";
		break;
case "null_type" : type = "아직 성향파악이 안된";
		ArrayList<Recommend_DTO> non_list = redao.estjList();
		session.setAttribute("relist", non_list);
		break;
    }
	ArrayList<gameDTO> game_list = gdao.gamelist();
	session.setAttribute("gamelist", game_list);
	session.setAttribute("type_desc", type);
	response.sendRedirect("game_list.jsp");
	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
	}
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
