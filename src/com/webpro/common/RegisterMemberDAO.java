package com.webpro.common;

import java.util.*;
import java.sql.*;

public class RegisterMemberDAO {
	private Connection conn = null;
	private PreparedStatement pstmt = null;
	private ResultSet rs = null;
	private final String USER_INSERT = "insert into membertable values(?, ?, ?, ?, ?, ?, ?, ?);";
	private final String USER_LIST = "select * from membertable;";
	private final String USER_ID_LIST = "select * from membertable where memberid=?;";
	private final String USER_SEARCH = "SELECT memberid, password FROM membertable WHERE memberid=? AND password=?;";
	private final String USER_UPDATE = "update membertable set password =?, nickname =?, membername =?, email =?, phonenumber =?, gender =? where memberid =? ";
	private final String TYPE_UPDATE = "update membertable set type =? where memberid =? ";
	private final String TYPE_SELECT = "select type from membertable where memberid =?";
	
	
	public RegisterMemberDAO(){
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch(Exception e) {
			
		}
	}
	
	public void insertMember(RegisterMemberDTO mem) throws SQLException {
		try{
//			USER_INSERT = "insert into membertable values(?, ?, ?, ?, ?, ?, ?, ?);";
			conn = JDBCutil.getConnection();
			pstmt = conn.prepareStatement(USER_INSERT);
			pstmt.setString(1, mem.getMemberid());
			pstmt.setString(2, mem.getPassword());
			pstmt.setString(3, mem.getNickname());
			pstmt.setString(4, mem.getMembername());
			pstmt.setString(5, mem.getEmail());
			pstmt.setString(6, mem.getPhonenumber());
			pstmt.setString(7, mem.getGender());
			pstmt.setString(8, mem.getType());
			pstmt.executeUpdate();
		} catch(Exception e){
		} finally{
			JDBCutil.close(pstmt, conn);
		}
	}
	
	public ArrayList<RegisterMemberDTO> selectMemberList() throws SQLException {
		ArrayList<RegisterMemberDTO> aList = new ArrayList<RegisterMemberDTO>();
		try{
//			USER_LIST = "select * from membertable;";
			conn = JDBCutil.getConnection();
			pstmt = conn.prepareStatement(USER_LIST);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				RegisterMemberDTO rd = new RegisterMemberDTO();
				rd.setMemberid(rs.getString("memberid"));
				rd.setPassword(rs.getString("password"));
				rd.setNickname(rs.getString("nickname"));
				rd.setMembername(rs.getString("membername"));
				rd.setEmail(rs.getString("email"));
				rd.setPhonenumber(rs.getString("phonenumber"));
				rd.setGender(rs.getString("gender"));
				aList.add(rd);
			}
		} catch(Exception e){
		} finally{
			JDBCutil.close(pstmt, conn);
		}
		return aList;
	}

	public String getType(String id) throws SQLException {
//		TYPE_SELECT = "select type from membertable where memberid =?";
		conn = JDBCutil.getConnection();
		pstmt = conn.prepareStatement(TYPE_SELECT);
		pstmt.setString(1, id);
		rs = pstmt.executeQuery();
		rs.next();
		String type = rs.getString("type");
		if (type == null) return "null_type";
		else return type;
	}
	
	public void setType(RegisterMemberDTO mem) throws SQLException {
//		"update membertable set type =? where memberid =? ";
		conn = JDBCutil.getConnection();
		pstmt=conn.prepareStatement(TYPE_UPDATE);
		pstmt.setString(1, mem.getType());
		pstmt.setString(2, mem.getMemberid());
		pstmt.executeUpdate();
		try {
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCutil.close(pstmt, conn);
		}
	}
	
	public boolean checkMember(RegisterMemberDTO mem) throws SQLException {
		boolean loginCon = false;
		try {
//			"SELECT memberid, password FROM membertable WHERE memberid=? AND password=?;";	
		conn = JDBCutil.getConnection();
		pstmt=conn.prepareStatement(USER_SEARCH);
		pstmt.setString(1, mem.getMemberid());
		pstmt.setString(2, mem.getPassword());
		rs = pstmt.executeQuery();
		loginCon = rs.next();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCutil.close(pstmt, conn);
		} 
		return loginCon;
	}
	

	
	public RegisterMemberDTO getMemberList(String mem_id) throws SQLException {
		RegisterMemberDTO rd = new RegisterMemberDTO();
		try{
//			USER_ID_LIST = "select * from membertable where memberid=?;";
			conn = JDBCutil.getConnection();
			pstmt = conn.prepareStatement(USER_ID_LIST);
			pstmt.setString(1, mem_id);
			rs = pstmt.executeQuery();
			 if (rs.next()) {
			rd.setMemberid(rs.getString("memberid"));
			rd.setPassword(rs.getString("password"));
			rd.setNickname(rs.getString("nickname"));
			rd.setMembername(rs.getString("membername"));
			rd.setEmail(rs.getString("email"));
			rd.setPhonenumber(rs.getString("phonenumber"));
			rd.setGender(rs.getString("gender"));
			rd.setType(rs.getString("type"));
			 }
		} catch(Exception e){
			System.out.println("Exception" + e);
		} finally{
			JDBCutil.close(pstmt, conn);
		}
		return rd;
	}
	
	public void MemberUpdate(RegisterMemberDTO mem) throws SQLException {;
//	USER_UPDATE = "update membertable set password =?, nickname =?, membername =?, email =?, phonenumber =?, gender =? where memberid =? ";
		conn = JDBCutil.getConnection();
		pstmt = conn.prepareStatement(USER_UPDATE);
		pstmt.setString(1, mem.getPassword());
		pstmt.setString(2, mem.getNickname());
		pstmt.setString(3, mem.getMembername());
		pstmt.setString(4, mem.getEmail());
		pstmt.setString(5, mem.getPhonenumber());
		pstmt.setString(6, mem.getGender());
		pstmt.setString(7, mem.getMemberid());
		pstmt.executeUpdate();
		JDBCutil.close(pstmt, conn);
		try {
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			JDBCutil.close(pstmt, conn);
		}
	}
}
