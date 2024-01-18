package com.webpro.crawl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DbDAO {
	static void UploadToDB(ArrayList<gameDTO> SL) {
		String driver = "com.mysql.cj.jdbc.Driver";
		String url="jdbc:mysql://localhost:3306/webprodb?serverTimezone=UTC&useSSL=false&useUnicode=true&characterEncoding=utf-8";
		String user ="root";
		String pw= "ckd34912067!";
		Connection con;
		String sql;
		
		try {
			
			Class.forName(driver);
			con=DriverManager.getConnection(url, user ,pw);
			if(con!=null)
			{
				System.out.println("접속 성공");
			}
			for(int i=0;i<SL.size();i++)
			{
				/*System.out.println(SL.get(i).getArtist());*/
				sql="insert into gametable values(?,?,?,?,?,?)";
				PreparedStatement pst =con.prepareStatement(sql);
				pst.setString(1, SL.get(i).getTitle());
				pst.setString(2, SL.get(i).getMaker());
				pst.setString(3, SL.get(i).getRate());
				pst.setString(4, SL.get(i).getPrice());
				pst.setString(5, SL.get(i).getDiscount());
				pst.setString(6, SL.get(i).getImg());
				pst.executeUpdate();
			}
			System.out.println("Upload_complete");
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
