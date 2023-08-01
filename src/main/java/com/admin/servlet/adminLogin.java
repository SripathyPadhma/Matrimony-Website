package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.entity.Users;

@WebServlet("/admin")

public class adminLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String email=req.getParameter("email");
			String password=req.getParameter("password");
			HttpSession session=req.getSession();
			if("admin@gmail.com".equals(email)&&"admin".equals(password)) { 
				session.setAttribute("admin", new Users());
				resp.sendRedirect("ADMIN/ADMINDASHBOARD.jsp");	
			}
			else {
				session.setAttribute("error", "Invalid email or password");
				resp.sendRedirect("ADMIN.jsp");
				
			}
			
			
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	

}
