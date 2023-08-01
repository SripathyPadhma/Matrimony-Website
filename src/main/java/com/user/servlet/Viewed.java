package com.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DAO.UserDAO;
import com.db.DbConnect;

/**
 * Servlet implementation class Viewed
 */
public class Viewed extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Viewed() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		
		String pid=req.getParameter("pid")+",";
		int id=Integer.parseInt(req.getParameter("id"));
		PrintWriter out=res.getWriter();
		UserDAO dao = new UserDAO(DbConnect.getcon());
		String s1=dao.getViewedProfiles(id);
		StringBuilder sb=new StringBuilder();
		sb.append(s1);
		sb.append(pid);
		String s2=sb.toString();
		Boolean T=dao.appendProfiled(s2, id);
		out.println(T);
		

		
	

		
	}

}
