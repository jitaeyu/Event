package com.yjt01;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.script.ScriptContext;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Controller
 */
@WebServlet("*.do")
public class Controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Controller() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String conpath = request.getContextPath();
		String fname = uri.substring(conpath.length());
		String vpage = null;
		Service comm;

		if(fname.equals("/sign.do")) {
			comm=new Sign();
			comm.exec(request, response);
			response.setContentType("text/html; charset=UTF-8");
			PrintWriter out = response.getWriter();
			out.println("<script>alert('계정이 등록 되었습니다'); location.href='login.jsp';</script>");
			out.flush();
		}
		if(fname.equals("/login.do")) {
			comm=new Login();
			int val;
			try {
				val = comm.execc(request, response);
				if(val==1) {
					vpage="out.jsp";
				
					RequestDispatcher rd = request.getRequestDispatcher(vpage);
					rd.forward(request, response);
				}
				else {
					vpage="login.jsp";
					response.setContentType("text/html; charset=UTF-8");
					PrintWriter out = response.getWriter();
					out.println("<script>alert('로그인 실패. 다시 시도해주세요.'); location.href='login.jsp';</script>");
					out.flush();
				}
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		
		}

	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
