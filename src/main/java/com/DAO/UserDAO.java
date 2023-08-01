package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import org.apache.catalina.User;

import com.db.DbConnect;
import com.entity.Users;

import com.mysql.cj.protocol.Resultset;


public class UserDAO {
	private Connection con;

	public UserDAO(Connection con) {
		super();
		this.con = con;
	}
	public boolean basicDetails(Users u) {
		boolean f=false;
		try {
			String sql="insert into basicdetails(Fname, Lname, DOB, TOB, Gender, POB, SubCaste,MotherToungue, Age, Native, ImageName,email,contact,profession,city,education)values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement stmt=con.prepareStatement(sql);
			stmt.setString(1, u.getFname());
			stmt.setString(2, u.getLname());
			stmt.setString(3, u.getDOB());
			stmt.setString(4, u.getTOB());
			stmt.setString(5, u.getGender());
			stmt.setString(6, u.getPOB());
			stmt.setString(7, u.getSubCaste());
			stmt.setString(8, u.getMotherToungue());
			stmt.setString(9, u.getAge());
			stmt.setString(10, u.getNative());
			stmt.setString(11, u.getImagename());
			stmt.setString(12,u.getEmail());
			stmt.setString(13,u.getContactNumber());
			stmt.setString(14,u.getProfession());
			stmt.setString(15,u.getWorkingCity());
			stmt.setString(16,u.getHighestEducation());
			 int i=stmt.executeUpdate();
			 if(i==1) {
				 f= true; 
			 }
		}
		catch(Exception e) {
			e.printStackTrace();	
		}
		return f;
	}
	public Users userId( Users u) {
		try {
			String sql="select id from basicdetails where email=? and contact=? and DOB=?";
			PreparedStatement stmt=con.prepareStatement(sql);
			stmt.setString(1,u.getEmail());
			stmt.setString(2,u.getContactNumber());
			stmt.setString(3,u.getDOB());
			Resultset rs=(Resultset) stmt.executeQuery();
			   while(((ResultSet) rs).next()) {
				   u.setId(((ResultSet) rs).getInt(1));   
			   }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return u;
	}
	public boolean professionalDetails(Users u) {
		boolean f=false;
		try {
			String sql="insert into professionaldetails(ID,HighestEducation, Profession, MonthlyIncome, WorkingCity, Education)values(?,?,?,?,?,?)";
			PreparedStatement stmt=con.prepareStatement(sql);
			stmt.setInt(1, u.getId());
			stmt.setString(2, u.getHighestEducation());
			stmt.setString(3, u.getProfession());
			stmt.setString(4, u.getMonthlyIncome());
			stmt.setString(5, u.getWorkingCity());
			stmt.setString(6, u.getEducation());
			 int i=stmt.executeUpdate();
			 if(i==1) {
				 f= true; 
			 }
		}
		catch(Exception e) {
			e.printStackTrace();	
		}
		return f;
	}
	public boolean FamilyDetails(Users u) {
		boolean f=false;
		try {
			
			String sql="insert into familydetails(ID,FatherName, fatheroccupation, Mothername, Motheroccupation, siblingcount,siblingdetails)values(?,?,?,?,?,?,?)";
			PreparedStatement stmt=con.prepareStatement(sql);
			stmt.setInt(1, u.getId());
			stmt.setString(2, u.getFatherName());
			stmt.setString(3, u.getFatherOccupation());
			stmt.setString(4, u.getMotherName());
			stmt.setString(5, u.getMotherOccupation());
			stmt.setString(6, u.getSiblingCount());
			stmt.setString(7, u.getSiblingDetails());		
			 int i=stmt.executeUpdate();
			 if(i==1) {
				 f= true;
			
			 }
		}
		catch(Exception e) {
			e.printStackTrace();	
		}
		return f;
	}
	
	public boolean ContactDetails(Users u) {
		boolean f=false;
		try {
			String sql="insert into contactdetails(ID, email, houseno, streetname, locality,city,district,state,pin,contact)values(?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement stmt=con.prepareStatement(sql);
			stmt.setInt(1, u.getId());
			stmt.setString(2, u.getEmail());
			stmt.setString(3, u.getHouseNumber());
			stmt.setString(4, u.getStreetName());
			stmt.setString(5, u.getLocality());
			stmt.setString(6, u.getCity());
			stmt.setString(7, u.getDistrict());
			stmt.setString(8, u.getState());
			stmt.setInt(9, u.getPin());
			stmt.setString(10, u.getContactNumber());
			 int i=stmt.executeUpdate();
			 if(i==1) {
				 f= true; 
			 }
		}
		catch(Exception e) {
			e.printStackTrace();		
		}
		return f;
	}
	
	public boolean PersonalityDetails(Users u) {
		boolean f=false;
		try {
			String sql="insert into personalitydetails(ID,complexity, height, weight)values(?,?,?,?)";
			PreparedStatement stmt=con.prepareStatement(sql);
			stmt.setInt(1, u.getId());
			stmt.setString(2, u.getComplexity());
			stmt.setInt(3, (int) u.getHeight());
			stmt.setInt(4, (int) u.getWeight());
			 int i=stmt.executeUpdate();
			 if(i==1) {
				 f= true; 
			 }
		}
		catch(Exception e) {
			e.printStackTrace();	
		}
		return f;	
	}
	
	public boolean credits(Users u) {
		boolean f=false;
		try {
			String sql="insert into credit(ID,email,contact)values(?,?,?)";
			PreparedStatement stmt=con.prepareStatement(sql);
			stmt.setInt(1, u.getId());
			stmt.setString(2, u.getEmail());
			stmt.setString(3, u.getContactNumber());
			 int i=stmt.executeUpdate();
			 if(i==1) {
				 f= true; 
			 }
		}
		catch(Exception e) {
			e.printStackTrace();	
		}
		return f;	
	}
	public boolean password (Users u) {
		boolean f=false;
		try {
			String  sql="insert into passwords(ID,contact,password,repassword)values(?,?,?,?)";
			PreparedStatement stmt=con.prepareStatement(sql);
			stmt.setInt(1, u.getId());
			stmt.setString(2, u.getContactNumber());
			stmt.setString(3, u.getPassword());
			stmt.setString(4, u.getRepassword());
			int i=stmt.executeUpdate();
			if(i==1) {
				f=true;
			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return f;
	}
	public Users login(String contact,String DOB) {
		Users u=null;

		try {
		String sql="select * from basicdetails where  contact=? and DOB=?" ;
		PreparedStatement stmt= con.prepareStatement(sql);
		stmt.setString(1, contact);
		stmt.setString(2, DOB);
		ResultSet rs=stmt.executeQuery();
		while( rs.next()) {
			u =new Users();
	        u.setId(rs.getInt(1));
			u.setContactNumber(rs.getString(15));
			u.setDOB(rs.getString(4));
			u.setFname(rs.getString("fname"));
			u.setImagename(rs.getString("imagename"));
			u.setProfession(rs.getString("profession"));
			u.setCity(rs.getString("city"));
			u.setAge(rs.getString("age"));
			
			
			
			
		
			
		}
		
		
		
		
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		return u;
	}
	public boolean loginstat(String contact) {
		Users u=null;
		 boolean R=false;

		try {
		String sql="select UserStatus from basicdetails where  contact=?" ;
		PreparedStatement stmt= con.prepareStatement(sql);
		stmt.setString(1, contact);
		
		ResultSet rs=stmt.executeQuery();
		while( rs.next()) {
			u =new Users();
		    u.setUserStatus(rs.getBoolean(1));
		    R=u.isUserStatus();	
		}
		   System.out.println(R);
		  
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		

		return R;
	}
	public boolean HoroscopeDetails(Users u) {
		boolean f=false;
		try {
			String sql="insert into horoscopedetails(ID, Rasi, Star, Lagnam, Padam, J1, J2, J3, J4, J5, J6, J7, J8, J9, J10, J11, J12, J13, J14, J15, J16, J17, J18, J19, J20, J21, J22, J23, J24) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement stmt=con.prepareStatement(sql);
			stmt.setInt(1, u.getId());
			stmt.setString(2, u.getRasi());
			stmt.setString(3, u.getStar());
			stmt.setString(4, u.getLagnam());
			stmt.setString(5, u.getPadam());
			stmt.setString(6, u.getJ1());
			stmt.setString(7, u.getJ2());
			stmt.setString(8, u.getJ3());
			stmt.setString(9, u.getJ4());
			stmt.setString(10, u.getJ5());
			stmt.setString(11, u.getJ6());
			stmt.setString(12, u.getJ7());
			stmt.setString(13, u.getJ8());
			stmt.setString(14, u.getJ9());
			stmt.setString(15, u.getJ10());
			stmt.setString(16, u.getJ11());
			stmt.setString(17, u.getJ12());
			stmt.setString(18, u.getJ13());
			stmt.setString(19, u.getJ14());
			stmt.setString(20, u.getJ15());
			stmt.setString(21, u.getJ16());
			stmt.setString(22, u.getJ17());
			stmt.setString(23, u.getJ18());
			stmt.setString(24, u.getJ19());
			stmt.setString(25, u.getJ20());
			stmt.setString(26, u.getJ21());
			stmt.setString(27, u.getJ22());
			stmt.setString(28, u.getJ23());
			stmt.setString(29, u.getJ24());
			 int i=stmt.executeUpdate();
			 if(i==1) {
				 f= true; 
			 }
		}
		catch(Exception e) {
			e.printStackTrace();	
		}
		return f;	
	}
	
	
	public boolean credits(int id ,int credits) {
		boolean T=false;
		try {
		String sql="update basicdetails set credits=? where id=?";
		PreparedStatement stmt=con.prepareStatement(sql);
		stmt.setInt(1, credits);
		stmt.setInt(2, id);
		stmt.execute();
	    int rs=stmt.executeUpdate();
	    if(rs==1) {
	    	T=true;
	    }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return T;
	}
	public int getcredits(int id ) {
		Users u=null;
		int credits=0;
		try {
		String sql="select credits from basicdetails where id=?";
		PreparedStatement stmt=con.prepareStatement(sql);
	
		stmt.setInt(1, id);
		 ResultSet rs=   stmt.executeQuery();
		 while(rs.next()) {
			 u=new Users();
			 credits=u.setCredits(rs.getInt("credits"));
		 }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return credits;
	}

	public String getViewedProfiles(int id) {
		Users u=null;
		String s=null;

		try {
		String sql="select viewed from basicdetails where id=?" ;
		PreparedStatement stmt= con.prepareStatement(sql);
		stmt.setInt(1, id);
		
		ResultSet rs=stmt.executeQuery();
		while( rs.next()) {
			u =new Users();
	      
			s=u.setViewed(rs.getString("viewed"));
			
		}
		
		
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return s;
	}
	public boolean appendProfiled(String s1 ,int pid) {
		boolean T=false;
		try {
		String sql="update basicdetails set viewed=? where id=?";
		PreparedStatement stmt=con.prepareStatement(sql);
		stmt.setString(1, s1);
		stmt.setInt(2, pid);
		stmt.execute();
	    int rs=stmt.executeUpdate();
	    if(rs==1) {
	    	T=true;
	    }
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return T;
	}
	   public List<Users> getSpecialist(){
		   List<Users> list=new ArrayList<Users>();
		   Users s=null;
		   try {
			   String sql="select distinct rasi from horoscopedetails";
			   PreparedStatement stmt=con.prepareStatement(sql);
			   ResultSet rs= stmt.executeQuery(sql);
			   while(rs.next()) {
				   
				   s=new Users();
				   s.setId(rs.getInt(1));
				   s.setRasi(rs.getString("rasi"));
				   list.add(s);
				   
			   }
			   
			   
			   
			   
		   }
		   catch(Exception e) {
			   e.printStackTrace();
		   }
		   
		   
		   
		return list;
		   
	   }
	
	}
