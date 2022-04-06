package com.yjt01;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;

public class DAO {
	Connection con;
	PreparedStatement psmt;
	ResultSet rs;
	String driver = "org.mariadb.jdbc.Driver";
	String url = "jdbc:mariadb://yjt3602.cafe24.com:3306/yjt3602";	//사용할 스키마를 마지막에 넣어줘야 함
	String username = "yjt3602";
	String password = "vudrhwkd1!";
	public void sign(HttpServletRequest request) throws SQLException {
		// TODO Auto-generated method stub
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name =request.getParameter("name");
	
		try {
			Class.forName(driver);
			con = DriverManager.getConnection(url, username, password);
			
			String sql = "INSERT INTO user VALUES(?,?,?,current_timestamp)";
			psmt = con.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			psmt.setString(3, name);
			int k = psmt.executeUpdate();
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
