package com.user.servlet;

import java.io.File;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.db.DbConnect;
import com.DAO.UserDAO;
import com.entity.Users;

@WebServlet("/login")

public class userLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			String contact = req.getParameter("contact");
			String password = req.getParameter("password");

			HttpSession session = req.getSession();
			UserDAO dao = new UserDAO(DbConnect.getcon());
			
			
			 Users us=dao.login(contact, password);
			 if(us!=null) {
					boolean F = dao.loginstat(contact);
					if (F) {
						
						 Users u=dao.login(contact, password);
						 if(u!=null) {
							 session.setAttribute("userobj", u);
							 session.setAttribute("userid", u.getId());
								resp.sendRedirect("USERDASHBOARD.jsp");	
						 }
						 else {
							 session.setAttribute("error", "Invalid E-mail or Password");
								resp.sendRedirect("LOGIN.jsp");
						 }
						
						
					}
					else {
						session.setAttribute("error", "Contact Admin for Approval");
						resp.sendRedirect("LOGIN.jsp");
						
					}
				
				 
				 
			 }
			 else {
				 session.setAttribute("error", "Invalid E-mail or Password");
					resp.sendRedirect("LOGIN.jsp");
				 
			 }

		
				

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
