package com.webpro.common;

import java.util.*;
import java.sql.*;

public class Recommend_DAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private final String INFP_LIST = "select * from infp;";
	private final String ESTJ_LIST = "select * from estj;";
	
	
	public Recommend_DAO(){
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch(Exception e) {
			
		}
	}
	
	public ArrayList<Recommend_DTO> infpList() throws SQLException {
		ArrayList<Recommend_DTO> aList = new ArrayList<Recommend_DTO>();
		try{
			conn = JDBCutil.getConnection();
//			INFP_LIST = "select * from infp;";
			pstmt = conn.prepareStatement(INFP_LIST);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Recommend_DTO rd = new Recommend_DTO();
				rd.setGame_name(rs.getString("game_name"));
				rd.setImg_url(rs.getString("image_url"));
				rd.setGame_desc(rs.getString("game_desc"));
				aList.add(rd);
			}
		} catch(Exception e){
		} finally{
			JDBCutil.close(pstmt, conn);
		}
		return aList;
	}
	
	public ArrayList<Recommend_DTO> estjList() throws SQLException {
		ArrayList<Recommend_DTO> aList = new ArrayList<Recommend_DTO>();
		try{
			conn = JDBCutil.getConnection();
			pstmt = conn.prepareStatement(ESTJ_LIST);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				Recommend_DTO rd = new Recommend_DTO();
				rd.setGame_name(rs.getString("game_name"));
				rd.setImg_url(rs.getString("image_url"));
				rd.setGame_desc(rs.getString("game_desc"));
				aList.add(rd);
			}
		} catch(Exception e){
		} finally{
			JDBCutil.close(pstmt, conn);
		}
		return aList;
	}
}
