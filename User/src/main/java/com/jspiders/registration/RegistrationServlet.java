package com.jspiders.registration;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/register")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	Connection connection;
  
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		String name=req.getParameter("name");
		String email=req.getParameter("email");
		String password=req.getParameter("password");
		String confirm_password=req.getParameter("confirm_password");
		String mobile=req.getParameter("mobile");
		
		PrintWriter out= res.getWriter();
		out.print(name);
		out.print(email);
		out.print(password);
		out.print(confirm_password);
		out.print(mobile);
		
	}

}
