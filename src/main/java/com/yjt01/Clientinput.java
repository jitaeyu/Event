package com.yjt01;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Clientinput implements Service{

	@Override
	public void exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		DAO dao = new DAO();
		try {
			dao.clientinput(request);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Override
	public int execc(HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		return 0;
	}

}
