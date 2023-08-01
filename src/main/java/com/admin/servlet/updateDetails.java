package com.admin.servlet;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import com.DAO.adminDAO;
import com.db.DbConnect;
import com.entity.Users;

/**
 * Servlet implementation class updateDetails
 */

@WebServlet("/update")
public class updateDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public updateDetails() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */

	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		try {
		
			String ImageName = null;
			   int id= Integer.parseInt(req.getParameter("id"));
			   boolean userstatus=Boolean.parseBoolean(req.getParameter("userstatus"));
				int credits= Integer.parseInt(req.getParameter("credits"));
			   
			String Fname = req.getParameter("fname");
			String Lname = req.getParameter("lname");
			String DOB = req.getParameter("DOB");
			String TOB = req.getParameter("Birth_time");
			String Gender = req.getParameter("gender");
			String POB = req.getParameter("Place_of_Birth");
			String Subcaste = req.getParameter("Subcaste");
			String MotherToungue = req.getParameter("Mother_Tounge");
			String Native = req.getParameter("Native");
			String AGE = req.getParameter("AGE");
			String HighestEducation = req.getParameter("Highest_Education");
	
		
			String Education = req.getParameter("EDUCATION");
			String Profession = req.getParameter("Profession");
			String Monthlyincome = req.getParameter("Monthly_Income");
			String WorkingCity = req.getParameter("Working_City");
			String FatherName = req.getParameter("Father_Name");
			String FatherOccupation = req.getParameter("Father_Occupation");
			String MotherName = req.getParameter("Mother_Name");
			String MotherOccupation = req.getParameter("Mother_Occupation");
			String SiblingCount = req.getParameter("SiblingCount");
			String SiblingDetails = req.getParameter("SiblingDetails");
			String ContactNumber = req.getParameter("contact");
			String email = req.getParameter("email");
			String HouseNumber = req.getParameter("House_Number");
			String StreetName = req.getParameter("street");
			String Locality = req.getParameter("Locality");
			String City = req.getParameter("city");
			String District = req.getParameter("District");
			String state = req.getParameter("State");
			int pin = 0;
			String password = req.getParameter("Password");
			String repassword = req.getParameter("Re_Password");
			String Complexity = req.getParameter("complex");
			float Height = 0;
			float Weight = 0;
			String Rasi = req.getParameter("Rasi");
			String Star = req.getParameter("Star");
			String Lagnam = req.getParameter("Lagnam");
			String padam = req.getParameter("Padam");
			String J1 = req.getParameter("1");
			String J2 = req.getParameter("2");
			String J3 = req.getParameter("3");
			String J4 = req.getParameter("4");
			String J5 = req.getParameter("5");
			String J6 = req.getParameter("6");
			String J7 = req.getParameter("7");
			String J8 = req.getParameter("8");
			String J9 = req.getParameter("9");
			String J10 = req.getParameter("10");
			String J11 = req.getParameter("11");
			String J12 = req.getParameter("12");
			String J13 = req.getParameter("13");
			String J14 = req.getParameter("14");
			String J15 = req.getParameter("15");
			String J16 = req.getParameter("16");
			String J17 = req.getParameter("17");
			String J18 = req.getParameter("18");
			String J19 = req.getParameter("19");
			String J20 = req.getParameter("20");
			String J21 = req.getParameter("21");
			String J22 = req.getParameter("22");
			String J23 = req.getParameter("23");
			String J24 = req.getParameter("24");
            Users u=new Users(ImageName, id, credits, Fname, Lname, DOB, TOB, Gender, userstatus, POB, Subcaste, MotherToungue, Native, AGE, HighestEducation, Education, Profession, Monthlyincome, WorkingCity, FatherName, FatherOccupation, MotherName, MotherOccupation, SiblingCount, SiblingDetails, ContactNumber, email, HouseNumber, StreetName, Locality, City, District, state, pin, password, repassword, Complexity, Height, Weight, Rasi, Star, Lagnam, padam, J1, J2, J3, J4, J5, J6, J7, J8, J9, J10, J11, J12, J13, J14, J15, J16, J17, J18, J19, J20, J21, J22, J23, J24, J24);
			adminDAO dao=new adminDAO(DbConnect.getcon());
			boolean f= dao.updateBasicdetails(u);
			HttpSession session=req.getSession();
			if(f) {
				boolean q= dao.updatefamily(u);
				if(q) {
					 
				       
				       boolean w=dao.updateprofessional(u);
				       if(w) {
				    	   boolean a=dao.updatehoroscope(u) ; 
				    			   if(a) {
				    				   session.setAttribute("success", "Changes Saved");
								       resp.sendRedirect("ADMIN/ActiveUsers.jsp"); 
								       
				    			   }
				    			   else {
				    				   session.setAttribute("error", "changes are not saved");
										  resp.sendRedirect("ADMIN/ActiveUsers.jsp");
				    			   }
				    	
				    	   
				       }
				       else {
				    	   
				    	   session.setAttribute("error", "changes are not saved");
							  resp.sendRedirect("ADMIN/ActiveUsers.jsp");
				       }
				       
				}  
				else {
					session.setAttribute("error", "changes are not saved");
					  resp.sendRedirect("ADMIN/ActiveUsers.jsp");
				}
				
				
			}
			else {
				session.setAttribute("error", "changes are not saved");
				  resp.sendRedirect("ADMIN/ActiveUsers.jsp");  
				
			}
			
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		
	}

}
