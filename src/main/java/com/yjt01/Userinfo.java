package com.yjt01;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Userinfo implements Service{

	@Override
	public void exec(HttpServletRequest request, HttpServletResponse response) {
		DAO dao = new DAO();
		try {
			ArrayList<ContentDTO> infolist=dao.userinfo(request);
			request.setAttribute("infolist", infolist);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			ArrayList<Integer> sum= dao.sumid(request);
			request.setAttribute("moneysum", sum);
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
