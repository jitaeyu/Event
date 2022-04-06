package com.yjt01;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Service {
	public void exec(HttpServletRequest request,HttpServletResponse response);
}
