package com.yjt01;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Sign implements Service{

	@Override
	public void exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		DAO dao = new DAO();
		try {
			dao.sign(request);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
