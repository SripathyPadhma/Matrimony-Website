package com.admin.servlet;


import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import com.DAO.adminDAO;
import com.db.DbConnect;
@WebServlet("/act")
public class activate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public activate() {
		super();
		// TODO Auto-generated constructor stub
	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int id=Integer.parseInt(req.getParameter("pid"));
		adminDAO dao=new adminDAO(DbConnect.getcon());
		PrintWriter out=resp.getWriter();
		boolean w=dao.activate(id);
	
		if(w) {
			 out.println(w);
			
			
		}
		else {
			
			
		}
		
		
	}

}
