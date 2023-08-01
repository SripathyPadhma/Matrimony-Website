package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.entity.Users;

public class adminDAO {
	private Connection con;
	public adminDAO(Connection con) {
		super();
		this.con = con;
	}
	public boolean updateBasicdetails(Users u) {
		boolean f=false;
		try {
			String sql="update  basicdetails set fname=?,lname=?,DOB=?,TOB=?,GENDER=?,USERSTATUS=?,POB=?,SUBCASTE=?,MOTHERTOUNGUE=?,NATIVE=?,AGE=?,EMAIL=?,CONTACT=?,CREDITS=? where id=?";
			PreparedStatement stmt=con.prepareStatement(sql);
			stmt.setString(1, u.getFname());
			stmt.setString(2, u.getLname());
			stmt.setString(3, u.getDOB());
			stmt.setString(4, u.getTOB());
			stmt.setString(5, u.getGender());
			stmt.setBoolean(6, u.isUserStatus());
			stmt.setString(7, u.getPOB());
			stmt.setString(8, u.getSubCaste());
			stmt.setString(9, u.getMotherToungue());
			stmt.setString(10, u.getNative());
			stmt.setString(11, u.getAge());
			
			stmt.setString(12,u.getEmail());
			stmt.setString(13,u.getContactNumber());
			
	
		
			stmt.setInt(14,u.getCredits());
			
			stmt.setInt(15, u.getId());
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
	public boolean updatefamily(Users u) {
		boolean f=false;
		try {
			String sql="update  familydetails set fathername=?,fatheroccupation=?,mothername=?,motheroccupation=?,siblingcount=?,siblingdetails=? where id=?";
			PreparedStatement stmt=con.prepareStatement(sql);
			stmt.setString(1, u.getFatherName());
			stmt.setString(2, u.getFatherOccupation());
			stmt.setString(3, u.getMotherName());
			stmt.setString(4, u.getMotherOccupation());
			stmt.setString(5, u.getSiblingCount());
			stmt.setString(6, u.getSiblingDetails());
			stmt.setInt(7, u.getId());
		
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
	public boolean updateprofessional(Users u) {
		boolean f=false;
		try {
			String sql="update  professionaldetails set highesteducation=?,profession=?,monthlyincome=?,workingcity=?,education=? where id=?";
			PreparedStatement stmt=con.prepareStatement(sql);
			stmt.setString(1, u.getHighestEducation());
			stmt.setString(2, u.getProfession());
			stmt.setString(3, u.getMonthlyIncome());
			stmt.setString(4, u.getWorkingCity());
			stmt.setString(5, u.getEducation());
			
			stmt.setInt(6, u.getId());
		
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
	public boolean updatehoroscope(Users u) {
		boolean f=false;
		try {
			String sql="update  horoscopedetails set rasi=?,star=?,lagnam=?,padam=?,j1=?,j2=?,j3=?,j4=?,j5=?,j6=?,j7=?,j8=?,j9=?,j10=?,j11=?,j12=?,j13=?,j14=?,j15=?,j16=?,j17=?,j18=?,j19=?,j20=?,j21=?,j22=?,j23=?,j24=? where id=?";
			PreparedStatement stmt=con.prepareStatement(sql);
			stmt.setString(1, u.getRasi());
			stmt.setString(2, u.getStar());
			stmt.setString(3, u.getLagnam());
			stmt.setString(4, u.getPadam());
			stmt.setString(5, u.getJ1());
			stmt.setString(6, u.getJ2());
			stmt.setString(7, u.getJ3());
			stmt.setString(8, u.getJ4());
			stmt.setString(9, u.getJ5());
			stmt.setString(10, u.getJ6());
			stmt.setString(11, u.getJ7());
			stmt.setString(12, u.getJ8());
			stmt.setString(13, u.getJ9());
			stmt.setString(14, u.getJ10());
			stmt.setString(15, u.getJ11());
			stmt.setString(16, u.getJ12());
			stmt.setString(17, u.getJ13());
			stmt.setString(18, u.getJ14());
			stmt.setString(19, u.getJ15());
			stmt.setString(20, u.getJ16());
			stmt.setString(21, u.getJ17());
			stmt.setString(22, u.getJ18());
			stmt.setString(23, u.getJ19());
			stmt.setString(24, u.getJ20());
			stmt.setString(25, u.getJ21());
			stmt.setString(26, u.getJ22());
			stmt.setString(27, u.getJ23());
			stmt.setString(28, u.getJ24());
			
	
			
			stmt.setInt(29, u.getId());
		
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
	public boolean activate(int id) {
		boolean f=false;
		try {
			String sql="update basicdetails set userstatus=? where id=?";
			PreparedStatement stmt=con.prepareStatement(sql);
			stmt.setString(1,"1");
			stmt.setInt(2, id);
		
			
	
		
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
	public boolean updateContact(Users u) {
		boolean f=false;
		try {
			String sql="update contactdetails set houseno=?,streetname=?,locality=?,city=?,district=?,state=? where id=?";
			PreparedStatement stmt=con.prepareStatement(sql);
			stmt.setString(1, u.getHouseNumber());
			stmt.setString(2, u.getStreetName());
			stmt.setString(3, u.getLocality());
			stmt.setString(4, u.getCity());
			stmt.setString(5, u.getDistrict());
			stmt.setString(6, u.getState());
	
			
			stmt.setInt(7, u.getId());
		
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


}

