package com.yjt01;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Login implements Service{

	@Override
	public int execc(HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		DAO dao = new DAO();
		int log=0;
			log = dao.login(request);
			return log;
		
		
	
	}

	@Override
	public void exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

	

}
