package com.webpro.common;

import java.util.*;

import com.webpro.crawl.gameDTO;

import java.sql.*;

public class gameDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private final String GAME_LIST = "select * from gametable;";
	
	
	public gameDAO(){
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch(Exception e) {
			
		}
	}
	
	public ArrayList<gameDTO> gamelist() throws SQLException {
		ArrayList<gameDTO> gList = new ArrayList<gameDTO>();
		try{
			conn = JDBCutil.getConnection();
			pstmt = conn.prepareStatement(GAME_LIST);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				gameDTO rd = new gameDTO(
						rs.getString("title"),
						rs.getString("maker"),
						rs.getString("rate"),
						rs.getString("price"),
						rs.getString("discount"),
						rs.getString("img")
						);
				gList.add(rd);
			}
		} catch(Exception e){
		} finally{
			JDBCutil.close(pstmt, conn);
		}
		return gList;
	}
}
