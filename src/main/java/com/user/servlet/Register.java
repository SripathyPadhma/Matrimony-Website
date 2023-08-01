package com.user.servlet;

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

import com.DAO.UserDAO;
import com.db.DbConnect;
import com.entity.Users;

@WebServlet("/register")
@MultipartConfig

public class Register extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
			Part p = req.getPart("profile");
			String ImageName = p.getSubmittedFileName();
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
			String Education = req.getParameter("education");
			String Profession = req.getParameter("Profession");
			String Monthlyincome = req.getParameter("Monthly_Income");
			String WorkingCity = req.getParameter("Working_City");
			String FatherName = req.getParameter("Father_Name");
			String FatherOccupation = req.getParameter("Father_Occupation");
			String MotherName = req.getParameter("Mother_Name");
			String MotherOccupation = req.getParameter("Mother_Occupation");
			String SiblingCount = req.getParameter("SiblingCount");
			String SiblingDetails = req.getParameter("SiblingDetails");
			String ContactNumber = req.getParameter("Contact_Number");
			String email = req.getParameter("email");
			String HouseNumber = req.getParameter("House_Number");
			String StreetName = req.getParameter("street");
			String Locality = req.getParameter("Locality");
			String City = req.getParameter("City");
			String District = req.getParameter("District");
			String state = req.getParameter("State");
			int pin = parseInt(req.getParameter("Pincode"));
			String password = req.getParameter("Password");
			String repassword = req.getParameter("Re_Password");
			String Complexity = req.getParameter("complex");
			float Height = Float.parseFloat(req.getParameter("Height"));
			float Weight = Float.parseFloat(req.getParameter("Weight"));
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
			int id=0;

			
			Users u = new Users( ImageName,id ,pin, Fname, Lname, DOB, TOB, Gender, false, POB, Subcaste, MotherToungue, Native,
					AGE, HighestEducation, Education, Profession, Monthlyincome, WorkingCity, FatherName,
					FatherOccupation, MotherName, MotherOccupation, SiblingCount, SiblingDetails, ContactNumber, email,
					HouseNumber, StreetName, Locality, City, District, state, pin, password, repassword, Complexity,
					Height, Weight, Rasi, Star, Lagnam, padam, J1, J2, J3, J4, J5, J6, J7, J8, J9, J10, J11, J12, J13,
					J14, J15, J16, J17, J18, J19, J20, J21, J22, J23, J24, J24);
			UserDAO dao = new UserDAO(DbConnect.getcon());
			HttpSession session = req.getSession();
			boolean f = dao.basicDetails(u);
			if (f) {
				 String path =getServletContext().getRealPath("")+"profileimages";
				 File file=new File(path);
				 p.write(path+File.separator+ImageName);
				 
				 
				dao.userId(u);
				boolean a = dao.professionalDetails(u);
				if (a) {
					dao.userId(u);
					boolean b=dao.FamilyDetails(u);
					if(b) {
						System.out.println("details entered into family table");
						dao.userId(u);
						boolean c=dao.ContactDetails(u);
						if(c) {
							dao.userId(u);
							boolean d=dao.PersonalityDetails(u);
							if(d) {
								dao.userId(u);
								boolean e=dao.credits(u);
								if(e) {
									dao.userId(u);
									boolean h=dao.HoroscopeDetails(u);
									if(h) {
									
									
									  session.setAttribute("success", "Registration Sucessful");
								       resp.sendRedirect("Payment.jsp");	}
									else {
									    session.setAttribute("error", "Something Went wrong with horoscope details");
								     	resp.sendRedirect("REGISTER.jsp");
									}
								
								
						     
								}
								else {
									System.out.println("somethin wrong in entering credit details");
								    session.setAttribute("error", "Contact Number Already Existing Please Contact  Admin");
							     	resp.sendRedirect("REGISTER.jsp");
									
									
								}
							}
							else {
								System.out.println("somethin wrong in entering personality details");
							    session.setAttribute("error", "Contact Number Already Existing Please Contact  Admin");
						     	resp.sendRedirect("REGISTER.jsp");
								
							}
						
						}
						else {
							    System.out.println("somethin wrong in entering contact details");
							    session.setAttribute("error", "Contact Number Already Existing Please Contact  Admin");
						     	resp.sendRedirect("REGISTER.jsp");
						}
					}
					else {
						session.setAttribute("error", "Somenthing is Wrong in family details");
						resp.sendRedirect("REGISTER.jsp");
					}
					
					
					
					
				

				}
				else {
					System.out.println("basic details problem  ");
					session.setAttribute("error", "Somenthing is Wrong in Professional details");
					resp.sendRedirect("REGISTER.jsp");
					
				}
			

				

			} else {

				System.out.println("not done");
				session.setAttribute("error", "Email Already Existing Please Contact  Admin");
				resp.sendRedirect("REGISTER.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	private int parseInt(String parameter) {
		// TODO Auto-generated method stub
		return 0;
	}

}
