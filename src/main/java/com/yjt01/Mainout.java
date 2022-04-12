package com.yjt01;

import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Mainout implements Service{

	@Override
	public void exec(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		DAO dao = new DAO();
		try {
			ArrayList<ClientDTO> list = dao.mainout(request);
			request.setAttribute("namelist", list);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		try {
			ArrayList<ContentDTO> clist= dao.outcontent(request);
			request.setAttribute("clist", clist);
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		try {
			ArrayList<Integer> sum= dao.sum(request);
			request.setAttribute("sum", sum);
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
