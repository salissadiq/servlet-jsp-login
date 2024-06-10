package com.salscodes;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uname = request.getParameter("uname");
		String pass = request.getParameter("pass");
		
		if(!uname.equals("salscodes") && !pass.equals("password")) {
			PrintWriter out = response.getWriter();
			out.println("Wrong Username or Password");
			response.sendRedirect("login.jsp");
			return;
		}
		
		HttpSession session = request.getSession();
		
		session.setAttribute("uname", uname);
		
		response.sendRedirect("welcome.jsp");
	}

}
