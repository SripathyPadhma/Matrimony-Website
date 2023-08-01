package com.entity;

public class Users {
	private int id;
	private String imagename;
	private int credits;

	private String Fname;
	private String Lname;
	private String DOB;
	private String TOB;
	private String Gender;
	private boolean UserStatus;
	private String POB;
	private String SubCaste;
	private String MotherToungue;
	private String Native;
	private String age;
	private String HighestEducation;
	private String Education;
	private String Profession;
	private String MonthlyIncome;
	private String WorkingCity;
	private String FatherName;
	private String FatherOccupation;
	private String MotherName;
	private String MotherOccupation;
	private String SiblingCount;
	private String SiblingDetails;
	private String ContactNumber;
	private String email;
	private String HouseNumber;
	private String StreetName;
	private String Locality;
	private String City;
	private String District;
	private String State;
	private int pin;
	private String password;
	private String repassword;
	private String complexity;
	private float height;
	private float weight;
	private String Rasi;
	private String Star;
	private String lagnam;
	private String padam;
	private String J1;
	private String J2;
	private String J3;
	private String J4;
	private String J5;
	private String J6;
	private String J7;
	private String J8;
	private String J9;
	private String J10;
	private String J11;
	private String J12;
	private String J13;
	private String J14;	
	private String J15;
	private String J16;
	private String J17;
	private String J18;
	private String J19;
	private String J20;
	private String J21;
	private String J22;
	private String J23;
	private String J24;
	private String viewed;
	
	
	public String getViewed() {
		return viewed;
	}


	public String setViewed(String viewed) {
		return this.viewed = viewed;
		
	}


	public Users() {
		super();
		// TODO Auto-generated constructor stub
	}


	public Users( String imagename,int id,int credits ,String fname, String lname, String dOB, String tOB, String gender,
			boolean userStatus, String pOB, String subCaste, String motherToungue, String native1, String age,
			String highestEducation,String Education, String profession, String monthlyIncome, String workingCity, String fatherName,
			String fatherOccupation, String motherName, String motherOccupation, String SiblingCount, String SiblingDetails, String contactNumber,
			String email, String houseNumber, String streetName, String locality, String city, String district,
			String state, int pin,String password, String repassword, String complexity, float height, float weight, String rasi, String star,
			String lagnam, String padam, String j1, String j2, String j3, String j4, String j5, String j6, String j7,
			String j8, String j9, String j10, String j11, String j12, String j13, String j14, String j15, String j16,
			String j17, String j18, String j19, String j20, String j21, String j22, String j23, String j24, String viewed) {
		super();
		this.id=id;
		this.credits=credits;
		this.imagename = imagename;
		this.Fname = fname;
		this.Lname = lname;
		this.DOB = dOB;
		this.TOB = tOB;
		this.Gender = gender;
		this.UserStatus = userStatus;
	    this.POB = pOB;
		this.SubCaste = subCaste;
		this.MotherToungue = motherToungue;
		this.Native = native1;
		this.age = age;
		this.HighestEducation = highestEducation;
		this.Education=Education;
		this.Profession = profession;
		this.MonthlyIncome = monthlyIncome;
		this.WorkingCity = workingCity;
		this.FatherName = fatherName;
		this.FatherOccupation = fatherOccupation;
		this.MotherName = motherName;
		this.MotherOccupation = motherOccupation;
		this.SiblingCount = SiblingCount;
		this.SiblingDetails=SiblingDetails;
		this.ContactNumber = contactNumber;
		this.email = email;
		this.HouseNumber = houseNumber;
		this.StreetName = streetName;
		this.Locality = locality;
		this.City = city;
		this.District = district;
		this.State = state;
		this.pin = pin;
		this.password=password;
		this.repassword=repassword;
		this.complexity = complexity;
		this.height = height;
		this.weight = weight;
		this.Rasi = rasi;
		this.Star = star;
		this.lagnam = lagnam;
		this.padam = padam;
		this.J1 = j1;
		this.J2=j2;
		this.J3 = j3;
		this.J4 = j4;
		this.J5 = j5;
		this.J6 = j6;
		this.J7 = j7;
		this.J8 = j8;
		this.J9 = j9;
		this.J10 = j10;
		this.J11 = j11;
		this.J12 = j12;
		this.J13 = j13;
		this.J14 = j14;
		this.J15 = j15;
		this.J16 = j16;
		this.J17 = j17;
		this.J18 = j18;
		this.J19 = j19;
		this.J20 = j20;
		this.J21 = j21;
		this.J22 = j22;
		this.J23 = j23;
		this.J24 = j24;
		this.viewed=viewed;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public String getPassword() {
		return password;
	}


	public void setPassword(String password) {
		this.password = password;
	}


	public String getRepassword() {
		return repassword;
	}


	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}


	public String getImagename() {
		return imagename;
	}


	public void setImagename(String imagename) {
		this.imagename = imagename;
	}


	public String getFname() {
		return Fname;
	}


	public void setFname(String fname) {
		Fname = fname;
	}


	public String getLname() {
		return Lname;
	}


	public void setLname(String lname) {
		Lname = lname;
	}


	public String getDOB() {
		return DOB;
	}


	public void setDOB(String dOB) {
		DOB = dOB;
	}


	public String getTOB() {
		return TOB;
	}


	public void setTOB(String tOB) {
		TOB = tOB;
	}


	public String getGender() {
		return Gender;
	}


	public void setGender(String gender) {
		Gender = gender;
	}


	public boolean isUserStatus() {
		return UserStatus;
	}


	public void setUserStatus(boolean userStatus) {
		UserStatus = userStatus;
	}


	public String getPOB() {
		return POB;
	}


	public void setPOB(String pOB) {
		POB = pOB;
	}


	public String getSubCaste() {
		return SubCaste;
	}


	public void setSubCaste(String subCaste) {
		SubCaste = subCaste;
	}


	public String getMotherToungue() {
		return MotherToungue;
	}


	public void setMotherToungue(String motherToungue) {
		MotherToungue = motherToungue;
	}


	public String getNative() {
		return Native;
	}


	public void setNative(String native1) {
		Native = native1;
	}


	public String getAge() {
		return age;
	}


	public void setAge(String age) {
		this.age = age;
	}


	public String getHighestEducation() {
		return HighestEducation;
	}


	public void setHighestEducation(String highestEducation) {
		HighestEducation = highestEducation;
	}


	public String getProfession() {
		return Profession;
	}


	public void setProfession(String profession) {
		Profession = profession;
	}


	public String getMonthlyIncome() {
		return MonthlyIncome;
	}


	public void setMonthlyIncome(String monthlyIncome) {
		MonthlyIncome = monthlyIncome;
	}


	public String getWorkingCity() {
		return WorkingCity;
	}


	public void setWorkingCity(String workingCity) {
		WorkingCity = workingCity;
	}


	public String getFatherName() {
		return FatherName;
	}


	public void setFatherName(String fatherName) {
		FatherName = fatherName;
	}


	public String getFatherOccupation() {
		return FatherOccupation;
	}


	public void setFatherOccupation(String fatherOccupation) {
		FatherOccupation = fatherOccupation;
	}


	public String getMotherName() {
		return MotherName;
	}


	public void setMotherName(String motherName) {
		MotherName = motherName;
	}


	public String getMotherOccupation() {
		return MotherOccupation;
	}


	public void setMotherOccupation(String motherOccupation) {
		MotherOccupation = motherOccupation;
	}


	public String getSiblingCount() {
		return SiblingCount;
	}


	public void setSiblingCount(String siblingCount) {
		SiblingCount = siblingCount;
	}


	public String getEducation() {
		return Education;
	}


	public void setEducation(String education) {
		Education = education;
	}


	public String getSiblingDetails() {
		return SiblingDetails;
	}


	public void setSiblingDetails(String siblingDetails) {
		SiblingDetails = siblingDetails;
	}


	public String getContactNumber() {
		return ContactNumber;
	}


	public void setContactNumber(String contactNumber) {
		ContactNumber = contactNumber;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getHouseNumber() {
		return HouseNumber;
	}


	public void setHouseNumber(String houseNumber) {
		HouseNumber = houseNumber;
	}


	public String getStreetName() {
		return StreetName;
	}


	public void setStreetName(String streetName) {
		StreetName= streetName;
	}


	public String getLocality() {
		return Locality;
	}


	public void setLocality(String locality) {
		Locality = locality;
	}


	public String getCity() {
		return City;
	}


	public void setCity(String city) {
		City = city;
	}


	public String getDistrict() {
		return District;
	}


	public void setDistrict(String district) {
		District = district;
	}


	public String getState() {
		return State;
	}


	public void setState(String state) {
		State = state;
	}


	public int getPin() {
		return pin;
	}


	public void setPin(int pin) {
		this.pin = pin;
	}


	public String getComplexity() {
		return complexity;
	}


	public void setComplexity(String complexity) {
		this.complexity = complexity;
	}


	public float getHeight() {
		return height;
	}


	public void setHeight(float height) {
		this.height = height;
	}


	public float getWeight() {
		return weight;
	}


	public void setWeight(float weight) {
		this.weight = weight;
	}


	public String getRasi() {
		return Rasi;
	}


	public void setRasi(String rasi) {
		Rasi = rasi;
	}


	public String getStar() {
		return Star;
	}


	public void setStar(String star) {
		Star = star;
	}


	public String getLagnam() {
		return lagnam;
	}


	public void setLagnam(String lagnam) {
		this.lagnam = lagnam;
	}


	public String getPadam() {
		return padam;
	}


	public void setPadam(String padam) {
		this.padam = padam;
	}


	public String getJ1() {
		return J1;
	}


	public void setJ1(String j1) {
		J1 = j1;
	}


	public String getJ2() {
		return J2;
	}


	public void setJ2(String j2) {
		J2 = j2;
	}


	public String getJ3() {
		return J3;
	}


	public void setJ3(String j3) {
		J3 = j3;
	}


	public String getJ4() {
		return J4;
	}


	public void setJ4(String j4) {
		J4 = j4;
	}


	public String getJ5() {
		return J5;
	}


	public void setJ5(String j5) {
		J5 = j5;
	}


	public String getJ6() {
		return J6;
	}


	public void setJ6(String j6) {
		J6 = j6;
	}


	public String getJ7() {
		return J7;
	}


	public void setJ7(String j7) {
		J7 = j7;
	}


	public String getJ8() {
		return J8;
	}


	public void setJ8(String j8) {
		J8 = j8;
	}


	public String getJ9() {
		return J9;
	}


	public void setJ9(String j9) {
		J9 = j9;
	}


	public String getJ10() {
		return J10;
	}


	public void setJ10(String j10) {
		J10 = j10;
	}


	public String getJ11() {
		return J11;
	}


	public void setJ11(String j11) {
		J11 = j11;
	}


	public String getJ12() {
		return J12;
	}


	public void setJ12(String j12) {
		J12 = j12;
	}


	public String getJ13() {
		return J13;
	}


	public void setJ13(String j13) {
		J13 = j13;
	}


	public String getJ14() {
		return J14;
	}


	public void setJ14(String j14) {
		J14 = j14;
	}


	public String getJ15() {
		return J15;
	}


	public void setJ15(String j15) {
		J15 = j15;
	}


	public String getJ16() {
		return J16;
	}


	public void setJ16(String j16) {
		J16 = j16;
	}


	public String getJ17() {
		return J17;
	}


	public void setJ17(String j17) {
		J17 = j17;
	}


	public String getJ18() {
		return J18;
	}


	public void setJ18(String j18) {
		J18 = j18;
	}


	public String getJ19() {
		return J19;
	}


	public void setJ19(String j19) {
		J19 = j19;
	}


	public String getJ20() {
		return J20;
	}


	public void setJ20(String j20) {
		J20 = j20;
	}


	public String getJ21() {
		return J21;
	}


	public void setJ21(String j21) {
		J21 = j21;
	}


	public String getJ22() {
		return J22;
	}


	public void setJ22(String j22) {
		J22 = j22;
	}


	public String getJ23() {
		return J23;
	}


	public void setJ23(String j23) {
		J23 = j23;
	}


	public String getJ24() {
		return J24;
	}


	public void setJ24(String j24) {
		J24 = j24;
	}


	public int getCredits() {
		return credits;
	}


	public int setCredits(int credits) {
		return this.credits = credits;
	}
	
	
	
	

}
