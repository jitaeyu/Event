package com.yjt01;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
	public int login(HttpServletRequest request) throws SQLException, ClassNotFoundException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String sql = "SELECT id,pw,name FROM user WHERE id=? AND pw=?";
		int log=0;
		
			Class.forName(driver);
			con = DriverManager.getConnection(url, username, password);
			psmt=con.prepareStatement(sql);
			psmt.setString(1, id);
			psmt.setString(2, pw);
			rs=psmt.executeQuery();
			if(rs.next()) {
				if(rs.getString(1)!=null) {
					log=1;
					HttpSession hs = request.getSession(true);
					System.out.println("session name"+rs.getString(3));
					hs.setAttribute("name", rs.getString(3));
					hs.setAttribute("id", rs.getString(1));
					return log;//DB서치 후 값이 있으면 리턴 1
				}
				else {
					log=2;
					return log;//DB서치 후 값이 없으면 리턴 2
				}
			}

		return log;
	}
	
	public void clientinput(HttpServletRequest request) throws SQLException, ClassNotFoundException {
		String id = request.getParameter("id");
		String name =request.getParameter("name");
		
		String sql = "INSERT INTO client(num,id,name) VALUES(0,?,?)";
		Class.forName(driver);
		con = DriverManager.getConnection(url, username, password);
		psmt=con.prepareStatement(sql);
		psmt.setString(1, id);
		psmt.setString(2, name);
		int k = psmt.executeUpdate();
	}
	
	public ArrayList<ClientDTO> mainout(HttpServletRequest request) throws ClassNotFoundException, SQLException {
		String id = request.getParameter("id");
		ArrayList<ClientDTO> list = new ArrayList<ClientDTO>();
		String sql = "SELECT num,id,name FROM client WHERE id=?";
		System.out.println("dao");
			Class.forName(driver);
			con = DriverManager.getConnection(url, username, password);
			psmt=con.prepareStatement(sql);
			psmt.setString(1, id);
			rs=psmt.executeQuery();
			while(rs.next()) {
				ClientDTO dto = new ClientDTO();
				dto.setId(rs.getString(2));
				dto.setName(rs.getString(3));
				dto.setNum(rs.getInt(1));
				list.add(dto);

			}
			return list;
	}
	
	public ArrayList<ContentDTO> outcontent(HttpServletRequest request) throws ClassNotFoundException, SQLException {
		String id = request.getParameter("id");
		System.out.println(id);
		ArrayList<ContentDTO> clist = new ArrayList<ContentDTO>();
		String sql = "SELECT * FROM clientevent WHERE id=? ORDER BY date DESC";
			Class.forName(driver);
			con = DriverManager.getConnection(url, username, password);
			psmt=con.prepareStatement(sql);
			psmt.setString(1, id);
			rs=psmt.executeQuery();
			while(rs.next()) {
				ContentDTO dto = new ContentDTO();
				dto.setCnum(rs.getInt(1));
				dto.setId(rs.getString(2));
				dto.setName(rs.getString(3));
				dto.setEvent(rs.getString(4));
				dto.setDate(rs.getString(5));
				dto.setMoney(rs.getInt(6));
				dto.setComent(rs.getString(7));
				
				clist.add(dto);

			}
			return clist;
	}
	
	public ArrayList<Integer> sum(HttpServletRequest request) throws ClassNotFoundException, SQLException {
		String id = request.getParameter("id");
		System.out.println(id);
		ArrayList<Integer> slist = new ArrayList<Integer>();
		String sql = "SELECT SUM(money) FROM clientevent WHERE id=?";
			Class.forName(driver);
			con = DriverManager.getConnection(url, username, password);
			psmt=con.prepareStatement(sql);
			psmt.setString(1, id);
			rs=psmt.executeQuery();
			while(rs.next()) {
				slist.add(rs.getInt(1));
			}
			return slist;
	}
	
	
	public void eventinput(HttpServletRequest request) throws SQLException {
		// TODO Auto-generated method stub
				String id = request.getParameter("id");
				String name = request.getParameter("name");
				String event = request.getParameter("event");
				String date = request.getParameter("date");
				int money = Integer.parseInt(request.getParameter("money"));
				String coment = request.getParameter("coment");
			
				try {
					Class.forName(driver);
					con = DriverManager.getConnection(url, username, password);
					
					String sql = "INSERT INTO clientevent VALUES(0,?,?,?,?,?,?)";
					psmt = con.prepareStatement(sql);
					psmt.setString(1, id);
					psmt.setString(2, name);
					psmt.setString(3, event);
					psmt.setString(4, date);
					psmt.setInt(5, money);
					psmt.setString(6, coment);
					int k = psmt.executeUpdate();
					
					
				} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
	}
}
