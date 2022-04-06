package com.yjt01;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
public class test {

	
	public static class DBConnection_maria{
	private static final String DB_DRIVER_CLASS = "org.mariadb.jdbc.Driver";
	private static final String DB_URL = "jdbc:mariadb://yjt3602.cafe24.com:3306/";
	private static final String DB_USERNAME = "yjt3602";
	private static final String DB_PASSWORD = "vudrhwkd1!";
	private static Connection conn;
	PreparedStatement pstmt = null;
	private static void connectDB() {
	try {
	Class.forName(DB_DRIVER_CLASS);
	Connection connection = DriverManager.getConnection(DB_URL, DB_USERNAME, DB_PASSWORD);
	System.out.println("연결성공");
	} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	System.out.println("드라이브 로딩 실패");
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	System.out.println("DB 연결 실패");
	}
	}
	
	public static void main(String[] args) {
		DBConnection_maria test = new DBConnection_maria();
		test.connectDB();
		}


	}

	

}
