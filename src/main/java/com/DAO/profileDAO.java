package com.DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.entity.COUNT;
import com.entity.Users;

public class profileDAO {
	private Connection con;

	public profileDAO(Connection con) {
		super();
		this.con = con;

	}

	public List<Users> GetAllUsers() {
		List<Users> list = new ArrayList<Users>();
		Users u = null;
		try {
			String sql = "select * from basicdetails where userstatus=? order by id desc";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, "1");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				u = new Users();
				u.setId(rs.getInt(1));
				u.setImagename(rs.getNString(13));
				u.setFname(rs.getNString(2));
				u.setCity(rs.getNString(17));
				u.setProfession(rs.getNString(16));
				u.setAge(rs.getString(12));
				u.setEducation(rs.getNString(18));
				list.add(u);

			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;

	}
	public List<Users> GePendingUsers() {
		List<Users> list = new ArrayList<Users>();
		Users u = null;
		try {
			String sql = "select * from basicdetails where userstatus=? order by id desc";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, "0");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				u = new Users();
				u.setId(rs.getInt(1));
				u.setImagename(rs.getNString(13));
				u.setFname(rs.getNString(2));
				u.setCity(rs.getNString(17));
				u.setProfession(rs.getNString(16));
				u.setAge(rs.getString(12));
				u.setEducation(rs.getNString(18));
				list.add(u);

			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;

	}

	public Users getProfileByID(int id) {
		Users q = null;
		try {
			String sql = "select * from basicdetails where ID=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				q = new Users();

				q.setId(rs.getInt(1));
				q.setImagename(rs.getNString(13));
				q.setFname(rs.getNString(2));
				q.setCity(rs.getNString(17));
				q.setProfession(rs.getNString(16));
				q.setAge(rs.getString(12));
				q.setEducation(rs.getNString(18));
				q.setLname(rs.getNString("lname"));
				q.setDOB(rs.getNString("DOB"));
				q.setTOB(rs.getNString("TOB"));
				q.setNative(rs.getNString("native"));
				q.setHighestEducation(rs.getNString("education"));
				q.setMotherToungue(rs.getString("MotherToungue"));
				q.setSubCaste(rs.getNString("subcaste"));
				q.setCredits(rs.getInt("credits"));
				q.setUserStatus(rs.getBoolean("userstatus"));
				q.setEmail(rs.getNString("email"));
				q.setPOB(rs.getString("pob"));
				q.setContactNumber(rs.getNString("contact"));

				q.setGender(rs.getNString("gender"));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return q;

	}

	public Users getContactdetails(int id) {
		Users q = null;
		try {
			String sql = "select * from contactdetails where ID=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				q = new Users();

				q.setId(rs.getInt(1));
				q.setHouseNumber(rs.getString(3));
				q.setStreetName(rs.getString("streetname"));
				q.setLocality(rs.getNString("locality"));
				q.setCity(rs.getNString("city"));
				q.setDistrict(rs.getString("district"));
				q.setState(rs.getString("state"));
				q.setPin(rs.getInt("pin"));
				q.setContactNumber(rs.getString("contact"));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return q;
	}

	public Users getFamilyDetails(int id) {
		Users q = null;
		try {
			String sql = "select * from familydetails where ID=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				q = new Users();

				q.setId(rs.getInt(1));
				q.setFatherName(rs.getNString("fathername"));
				q.setFatherOccupation(rs.getNString("fatherOccupation"));
				q.setMotherName(rs.getNString("motherName"));
				q.setMotherOccupation(rs.getNString("motheroccupation"));
				q.setSiblingCount(rs.getNString("siblingcount"));
				q.setSiblingDetails(rs.getNString("siblingdetails"));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return q;

	}

	public Users getprofessionalDetails(int id) {
		Users q = null;
		try {
			String sql = "select * from professionaldetails where ID=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				q = new Users();

				q.setId(rs.getInt(1));
				q.setHighestEducation(rs.getNString("highesteducation"));
				q.setProfession(rs.getNString("profession"));
				q.setMonthlyIncome(rs.getNString("monthlyincome"));
				q.setWorkingCity(rs.getNString("workingcity"));
				q.setEducation(rs.getNString("education"));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return q;

	}

	public Users getcomplexity(int id) {
		Users q = null;
		try {
			String sql = "select * from personalitydetails where ID=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				q = new Users();

				q.setId(rs.getInt(1));
				q.setComplexity(rs.getString("complexity"));
				q.setHeight(rs.getFloat("height"));
				q.setWeight(rs.getFloat("weight"));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return q;

	}

	public Users gethoroscope(int id) {
		Users q = null;
		try {
			String sql = "select * from horoscopedetails where ID=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setInt(1, id);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				q = new Users();

				q.setId(rs.getInt(1));
				q.setStar(rs.getNString("star"));
				q.setRasi(rs.getNString("rasi"));
				q.setPadam(rs.getNString("padam"));
				q.setLagnam(rs.getString("lagnam"));
				q.setJ1(rs.getString("j1"));
				q.setJ2(rs.getString("j2"));
				q.setJ3(rs.getString("j3"));
				q.setJ4(rs.getString("j4"));
				q.setJ5(rs.getString("j5"));
				q.setJ6(rs.getString("j6"));
				q.setJ7(rs.getString("j7"));
				q.setJ8(rs.getString("j8"));
				q.setJ9(rs.getString("j9"));
				q.setJ10(rs.getString("j10"));
				q.setJ11(rs.getString("j11"));
				q.setJ12(rs.getString("j12"));
				q.setJ13(rs.getString("j13"));
				q.setJ14(rs.getString("j14"));
				q.setJ15(rs.getString("j15"));
				q.setJ16(rs.getString("j16"));
				q.setJ17(rs.getString("j17"));
				q.setJ18(rs.getString("j18"));
				q.setJ19(rs.getString("j19"));
				q.setJ20(rs.getString("j20"));
				q.setJ21(rs.getString("j21"));
				q.setJ22(rs.getString("j22"));
				q.setJ23(rs.getString("j23"));
				q.setJ24(rs.getString("j24"));

			}

		} catch (Exception e) {
			e.printStackTrace();
		}
		return q;

	}

	public List<Users> getUsersByGenOrCaste(String gen, String subC, String rasi, String star, String edu, String city) {

		List<Users> list = new ArrayList<Users>();
		Users u = null;
		try {
			String sql = "select * from basicdetails t1 JOIN contactdetails t2 ON t1.ID= t2.ID JOIN familydetails t3 ON t2.ID= t3.ID JOIN horoscopedetails t4 ON t3.ID =t4.ID JOIN personalitydetails t5 ON t4.ID=t5.ID JOIN professionaldetails t6 ON t5.ID=t6.ID where t1.gender=? or t1.subcaste=? or t4.rasi=? or t4.star=? or t6.HighestEducation=? or t1.city=?";
			//String sql = "select * from basicdetails t1 JOIN horoscopedetails t2 ON t1.ID= t2.ID where t1.gender=? or t1.subcaste=? or t2.rasi=? or t2.star=? ";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, gen);
			stmt.setString(2, subC);
			stmt.setString(3, rasi);
			stmt.setString(4, star);
			stmt.setString(5, edu);
			stmt.setString(6, city);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				u = new Users();
				u.setId(rs.getInt(1));
				u.setImagename(rs.getString(13));
				u.setFname(rs.getString(2));
				u.setCity(rs.getString(17));
				u.setProfession(rs.getString(16));
				u.setAge(rs.getString(12));
				u.setHighestEducation(rs.getString(18));
				list.add(u);

			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;

	}

	public List<Users> getUsersByGenAndCaste(String gen, String subC) {
		List<Users> list = new ArrayList<Users>();
		Users u = null;
		try {
			String sql = "select * from basicdetails where gender=? and subcaste=? order by id desc";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, gen);
			stmt.setString(2, subC);
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				u = new Users();
				u.setId(rs.getInt(1));
				u.setImagename(rs.getString(13));
				u.setFname(rs.getString(2));
				u.setCity(rs.getString(17));
				u.setProfession(rs.getString(16));
				u.setAge(rs.getString(12));
				u.setEducation(rs.getString(18));
				list.add(u);

			}

		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}

		return list;
	}
	public COUNT getActiveCount() {
		int C=0;
		COUNT T=null;
		
		try {
			String sql="select count(id)from basicdetails where userstatus=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, "1");
		
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				T = new COUNT();
				C=T.setActiveusers(rs.getInt(1));
				

			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return T;
		
		
		
		
		
		
		
		
	}
	public COUNT getInactiveCount() {
		
		COUNT T=null;
		
		try {
			String sql="select count(id)from basicdetails where userstatus=?";
			PreparedStatement stmt = con.prepareStatement(sql);
			stmt.setString(1, "0");
		
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				T = new COUNT();
			  T.setInactiveusers(rs.getInt(1));
				

			}
			
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		return T;
		
		
		
		
		
		
		
		
		
	}

}
