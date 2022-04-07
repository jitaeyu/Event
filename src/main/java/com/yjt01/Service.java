package com.yjt01;

import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Service {
	public void exec(HttpServletRequest request,HttpServletResponse response);
	public int execc(HttpServletRequest request,HttpServletResponse response) throws ClassNotFoundException, SQLException;
}
