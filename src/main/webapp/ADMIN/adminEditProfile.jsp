<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@page isELIgnored="false" %>
	<%@page import="com.db.*" %>
	<%@page import="com.DAO.*" %>
		<%@page import="com.entity.*" %>
			<%@page import="java.util.*" %>
	<%@page import="java.sql.Connection" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" src="index.css">
<%@include file="../components/CSS.jsp"%>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>


<style>
body {
  background: #e8cbc0;
    background: -webkit-linear-gradient(to right, #e8cbc0, #636fa4);
    background: linear-gradient(to right, #e8cbc0, #636fa4);
    min-height: 100vh;
	/*



    font-family: 'Vibur', cursive;
/*   the main font */
	/* background-image: linear-gradient(to top, #d9afd9 0%, #97d9e1 100%); */
	.square { 
	width : 400px;
	height: 400px;
	border: 1px solid black;
	display: grid;
	grid-template-rows: 0fr 100px 0fr;
	box-sizing: border-box;
}
.card {
    margin-top:20px;
    position: relative;
    display: flex;
    flex-direction: column;
    min-width: 0;
    word-wrap: break-word;
    background-color: #fff;
    background-clip: border-box;
    border: 0 solid transparent;
    border-radius: .25rem;
    margin-bottom: 1.5rem;
    box-shadow: 0 2px 6px 0 rgb(218 218 253 / 65%), 0 2px 6px 0 rgb(206 206 238 / 54%);
}
.me-2 {
    margin-right: .5rem!important;
}
.box {
	border: 1px solid black;
}

.box.small {
	width: 100px;
	height: 100px;
}

.box.big {
	width: 200px;
	height: 200px;
}
* {
	box-sizing: border-box;
}
</style>


</head>
<body>
<c:if test="${empty admin }" >
<c:redirect url="../ADMIN.jsp"></c:redirect>
</c:if>
<% 
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");

%>
	<%@include file="adminNav.jsp"%>
<% 
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");
%>

<%
int id=Integer.parseInt(request.getParameter("ID"));
out.write(id);
profileDAO D=new profileDAO(DbConnect.getcon());
HttpSession sess =request.getSession();
sess.setAttribute("ID", id);
Users a=D.getProfileByID(id);
Users b=D.getFamilyDetails(id);
Users c=D.getprofessionalDetails(id);
Users e=D.getcomplexity(id);
Users j=D.gethoroscope(id);
Users k=D.getContactdetails(id);
%>
 <input style="visibility:hidden;" type="text" id="uid" value="${userobj.id}">











<div class="container">
		<div class="main-body">
			<div class="row">
				<div class="col-lg-4">
				<form method="post"action="../update">
					<div style="	background-image: linear-gradient(-225deg, rgb(92, 184, 50) 50%,
		#ffffff 50%);" class="card">
						<div class="card-body">
							<div class="d-flex flex-column align-items-center text-center">
								<img style="height:300px;width:250px" src="../profileimages/<%=a.getImagename() %>" alt="Admin" class="rounded-circle p-1 bg-success" >
								<div class="mt-3">
											<p class=" font-size-sm text-uppercase">ID: MMS <%=a.getId() %></p>
											<input hidden type="text" name="id" value="<%=a.getId() %>">
									<h4 class="text-uppercase"> <%=a.getFname() %></h4>
									<p class=" font-size-sm ">AGE: <%=a.getAge() %></p>
									<p class="  text-uppercase">Profession : <%=c.getProfession() %></p>
									
									<p class=" font-size-sm text-uppercase">Working City : <%=c.getWorkingCity() %></p>
									
								</div>
							</div>
							
						</div>
					</div>
				</div>
				<div class="col-lg-8">
					<div style="	background-image: linear-gradient(-225deg, rgb(182, 247, 61) 50%,
		#4ff185 50%);" class="card">
						<div class="card-body">
							<div class="row mb-3">
								<h4 class="text-center">
								BASIC DETAILS</h4>
								<div class="col-sm-3">
									<h6 class="mb-0">First Name:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<input name="fname" class="mx-5 col-sm-9 px-2 rounded" value="<%=a.getFname() %>" >
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Last Name:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<input name="lname" class="mx-5 px-2 col-sm-9 rounded" value="<%=a.getLname() %>">
								</div>
							</div>
							
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Date of Birth:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<input name="DOB" class="mx-5 col-sm-9  px-2 rounded" type="date" value="<%=a.getDOB() %>">
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Age:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<input name="AGE" class="mx-5 col-sm-9 px-2 rounded"  value="<%=a.getAge() %>">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Time Of Birth:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
								<input name="Birth_time" type="time" class="mx-5  px-2 col-sm-9 rounded" value="<%=a.getTOB() %>">
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Credits:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
							<input name="credits" class="mx-5 col-sm-9 px-2  rounded"type="number" value="<%=a.getCredits() %>">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Gender:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
							<input name="gender" class="mx-5 col-sm-9  px-2 rounded" value="<%=a.getGender() %>">
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Contact:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
										<input name="contact" class="mx-5 col-sm-9  px-2 rounded" value="<%=a.getContactNumber() %>">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Sub Caste:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
										<input name="Subcaste" class="mx-5 col-sm-9  px-2 rounded" value="<%=a.getSubCaste() %>">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Mother Tongue:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<input name="Mother_Tounge" class="mx-5 col-sm-9  px-2 rounded" value="<%=a.getMotherToungue() %>">
								</div>
							</div>
						
						
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Email:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<input name="email" type="email"class="mx-5 col-sm-9  px-2 rounded " value="<%=a.getEmail() %>">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">User Status:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
								 <select
									name="userstatus" class="col-sm-9 mx-5 px-2 rounded" >
									     <option value="true">ACTIVE</option>
										   <option value="false">DEACTIVATE</option>
										</select>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Place of birth:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<input name="Place_of_Birth" class="mx-5 col-sm-9  px-2 rounded" value="<%=a.getPOB() %>">
								</div>
							</div>
						
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Native:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
								<input name="Native" class="mx-5 col-sm-9  px-2 rounded" value="<%=a.getNative() %>">
								</div>
							</div>
							
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Complexity:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
										<input name="complex" class="mx-5 col-sm-9  px-2 rounded" value="<%=e.getComplexity() %>">
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Height:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<input name="height" class="mx-5 col-sm-9  px-2 rounded" value="<%=e.getHeight() %>">
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">WEIGHT:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<input name="weight" class="mx-5 col-sm-9  px-2 rounded" value="<%=e.getWeight() %>">
								</div>
							</div>
						
						</div>
					</div>
					<div class="row">
						<div class="col-sm-12">
							<div style="	background-image: linear-gradient(-225deg, rgb(182, 247, 61) 50%,
		#4ff185 50%);" class="card">
								<div class="card-body">
								<h4 class="text-center">
								FAMILY DETAILS</h4>
									<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Father Name:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
								<input name="Father_Name" class="mx-5 col-sm-9  px-2 rounded" value="<%=b.getFatherName() %>">
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Father Occupation:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
						<input name="Father_Occupation" class="mx-5 col-sm-9  px-2 rounded" value="<%=b.getFatherOccupation() %>">
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Mother Name:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<input name="Mother_Name" class="mx-5 col-sm-9   px-2 rounded" value="<%=b.getMotherName() %>">
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Mother Occupation:</h6>
								</div>
								
								<div class="col-sm-9 text-uppercase">
								<input name="Mother_Occupation" class="mx-5 col-sm-9  px-2 rounded" value="<%=b.getMotherOccupation() %>">
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Number of Siblings:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
							<input name="SiblingCount" class="mx-5 col-sm-9  px-2 rounded" value="<%=b.getSiblingCount() %>">
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Sibling Details:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
							<input name="SiblingDetails" class="mx-5 col-sm-9  px-2 rounded" value="<%=b.getSiblingDetails() %>">
								</div>
							</div>
								
								</div>
							</div>
						</div>
					</div>
						<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div style="	background-image: linear-gradient(-225deg, rgb(182, 247, 61) 50%,
		#4ff185 50%);" class="card-body">
								<h4 class="text-center">
								PROFESSIONAL DETAILS</h4>
									<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Highest Education:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
										<input name="Highest_Education" class="mx-5 col-sm-9  px-2 rounded" value="<%=c.getHighestEducation() %>">
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Profession:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<input name="Profession" class="mx-5 col-sm-9   px-2 rounded" value="<%=c.getProfession()%>">
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Monthly Income:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
												<input name="Monthly_Income" class="mx-5 col-sm-9  px-2 rounded" value="<%=c.getMonthlyIncome()%>">
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Working City:</h6>
								</div>
								
								<div class="col-sm-9 text-uppercase">
									<input name="Working_City" class="mx-5 col-sm-9  px-2 rounded" value="<%=c.getWorkingCity()%>">
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Field Of Study:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<input name="EDUCATION" class="mx-5 col-sm-9 rounded  px-2 col-sm-9" value="<%=c.getEducation()%>">
								</div>
							</div>
							
								
								</div>
								
							</div>
							<div class="row">
						<div class="col-sm-12">
							<div style="	background-image: linear-gradient(-225deg, rgb(182, 247, 61) 50%,
		#4ff185 50%);" class="card">
								<div class="card-body">
								<h4 class="text-center">
								HOROSCOPE DETAILS</h4>
									<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Rasi:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
							<p>
				<!--  input type="text" placeholder="Rasi" name="Rasi"-->
				<select class="form-control" name="Rasi" id="rasi">
					<option value="<%=j.getRasi()%>"><%=j.getRasi()%></option>
					<option value="Dhanushu">Dhanushu</option>
					<option value="Kanni">Kanni</option>
					<option value="Kadagam">Kadagam</option>
					<option value="Kumbham">Kumbham</option>
					<option value="Makaram">Makaram</option>
					<option value="Meenam">Meenam</option>
					<option value="Mesham">Mesham</option>
					<option value="Mithunam">Mithunam</option>
					<option value="Rishabam">Rishabam</option>
					<option value="Simham">Simham</option>
					<option value="Tulam">Tulam</option>
					<option value="Vrichigam">Vrichigam</option>
				</select>
			</p>
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Star:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
								<p>
				<!-- input type="text" placeholder="Star" name="Star"> -->
				<select class="form-control" name="Star" id="star">
					<option value="<%=j.getStar()%>"><%=j.getStar()%></option>
					<option value="Ashwini">Ashwini</option>
					<option value="Bharani">Bharani</option>
					<option value="Karthikai">Karthikai</option>
					<option value="Rohini">Rohini</option>
					<option value="Mirugaseerisham">Mirugaseerisham</option>
					<option value="Thiruvadirai">Thiruvadirai</option>
					<option value="Punarpoosam">Punarpoosam</option>
					<option value="Poosam">Poosam</option>
					<option value="Ayilyam">Ayilyam</option>
					<option value="Makam">Makam</option>
					<option value="Pooram">Pooram</option>
					<option value="Uthiram">Uthiram</option>
					<option value="Hastham">Hastham</option>
					<option value="Chittirai">Chittirai</option>
					<option value="Swathi">Swathi</option>
					<option value="Visagam">Visagam</option>
					<option value="Anusham">Anusham</option>
					<option value="Kettai">Kettai</option>
					<option value="Moolam">Moolam</option>
					<option value="Pooradam">Pooradam</option>
					<option value="Uthiradam">Uthiradam</option>
					<option value="Thiruvonam">Thiruvonam</option>
					<option value="Avittam">Avittam</option>
					<option value="Sadhayam">Sadhayam</option>
					<option value="Poorattadhi">Poorattadhi</option>
					<option value="Uthirattadhi">Uthirattadhi</option>
					<option value="Revathi">Revathi</option>
				</select>

			</p>
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Padam:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
							<p>
				<!-- input type="text" placeholder="Padam" name="Padam"> -->
				<select class="form-control" name="Padam" id="padam">
					<option value="<%=j.getPadam()%>"><%=j.getPadam()%></option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="0">None</option>
				</select>
			</p>

								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Lagnam:</h6>
								</div>
								
								<div class="col-sm-9 text-uppercase">
						<input name="Lagnam" class=" rounded col-sm-9  px-2" value="<%=j.getLagnam()%>">
								</div>
							
							
								
								</div>
							</div>
						</div>
					</div>
						</div>
					</div>
			
			</div>
		</div>
		<div class="row">
						<div class="col-sm-12">
							<div class="card">
								<div  class="card-body">
								<h4 class="text-center">
							HOROSCOPE</h4>
										<div class="tab">
			
			<div class="container">
				<div class="row">
					<div class="col-6">
						<div class="square">
							<span class="box small" style="grid-row: 1; grid-column: 1;">
								<!-- <input type="text" placeholder="1" name=13>--> <select
								name="1" class="form-control" id="jadhagam">
								    <option value="<%= j.getJ1()%>"><%= j.getJ1()%></option>
									<option value="Raagu">Raagu</option>
									<option value="Guru">Guru</option>
									<option value="Kedu">Kedhu</option>
									<option value="Sukkiran">Sukkiran</option>
									<option value="Sani">Sani</option>
									<option value="Sooriyan">Sooriyan</option>
									<option value="Chandhran">Chandhran</option>
									<option value="Chevvai">Chevvai</option>
									<option value="Budhan">Budhan</option>
							</select>
							</span> <span class="box small" style="grid-row: 1; grid-column: 2;">
								<!-- <input type="text" placeholder="2" name=14>--> <select
								name="2" class="form-control" id="jadhagam">
								     <option value="<%= j.getJ2()%>"><%= j.getJ2()%></option>
									<option value="Raagu">Raagu</option>
									<option value="Guru">Guru</option>
									<option value="Kedu">Kedhu</option>
									<option value="Sukkiran">Sukkiran</option>
									<option value="Sani">Sani</option>
									<option value="Sooriyan">Sooriyan</option>
									<option value="Chandhran">Chandhran</option>
									<option value="Chevvai">Chevvai</option>
									<option value="Budhan">Budhan</option>
							</select>
							</span>
							<div class="box small" style="grid-row: 1; grid-column: 3;">
								<span>
									<!-- <input type="text" placeholder="3" name=15>--> <select
									name="3" class="form-control" id="jadhagam">
									     <option value="<%= j.getJ3()%>"><%= j.getJ3()%></option>
										<option value="Raagu">Raagu</option>
										<option value="Guru">Guru</option>
										<option value="Kedu">Kedhu</option>
										<option value="Sukkiran">Sukkiran</option>
										<option value="Sani">Sani</option>
										<option value="Sooriyan">Sooriyan</option>
										<option value="Chandhran">Chandhran</option>
										<option value="Chevvai">Chevvai</option>
										<option value="Budhan">Budhan</option>
								</select>
								</span>
							</div>
							<div class="box small" style="grid-row: 1; grid-column: 4;">
								<span>
									<!-- <input type="text" placeholder="4" name=16>--> <select
									name="4" class="form-control" id="jadhagam">
									     <option value="<%= j.getJ4()%>"><%= j.getJ4()%></option>
										<option value="Raagu">Raagu</option>
										<option value="Guru">Guru</option>
										<option value="Kedu">Kedhu</option>
										<option value="Sukkiran">Sukkiran</option>
										<option value="Sani">Sani</option>
										<option value="Sooriyan">Sooriyan</option>
										<option value="Chandhran">Chandhran</option>
										<option value="Chevvai">Chevvai</option>
										<option value="Budhan">Budhan</option>
								</select>
								</span>
							</div>
							<div class="box small" style="grid-row: 2; grid-column: 4;">
								<span>
									<!-- <input type="text" placeholder="5" name=17>--> <select
									name="5" class="form-control" id="jadhagam">
									     <option value="<%= j.getJ5()%>"><%= j.getJ5()%></option>
										<option value="Raagu">Raagu</option>
										<option value="Guru">Guru</option>
										<option value="Kedu">Kedhu</option>
										<option value="Sukkiran">Sukkiran</option>
										<option value="Sani">Sani</option>
										<option value="Sooriyan">Sooriyan</option>
										<option value="Chandhran">Chandhran</option>
										<option value="Chevvai">Chevvai</option>
										<option value="Budhan">Budhan</option>
								</select>
								</span>
							</div>
							<div class="box small" style="grid-row: 3; grid-column: 4;">
								<span>
									<!-- <input type="text" placeholder="6" name=18>--> <select
									name="6" class="form-control" id="jadhagam">
									     <option value="<%= j.getJ6()%>"><%= j.getJ6()%></option>
										<option value="Raagu">Raagu</option>
										<option value="Guru">Guru</option>
										<option value="Kedu">Kedhu</option>
										<option value="Sukkiran">Sukkiran</option>
										<option value="Sani">Sani</option>
										<option value="Sooriyan">Sooriyan</option>
										<option value="Chandhran">Chandhran</option>
										<option value="Chevvai">Chevvai</option>
										<option value="Budhan">Budhan</option>
								</select>
								</span>
							</div>
							<div class="box small" style="grid-row: 4; grid-column: 4;">
								<span>
									<!-- <input type="text" placeholder="7" name=19>--> <select
									name="7" class="form-control" id="jadhagam">
									     <option value="<%= j.getJ7()%>"><%= j.getJ7()%></option>
										<option value="Raagu">Raagu</option>
										<option value="Guru">Guru</option>
										<option value="Kedu">Kedhu</option>
										<option value="Sukkiran">Sukkiran</option>
										<option value="Sani">Sani</option>
										<option value="Sooriyan">Sooriyan</option>
										<option value="Chandhran">Chandhran</option>
										<option value="Chevvai">Chevvai</option>
										<option value="Budhan">Budhan</option>
								</select>
								</span>
							</div>
							<div class="box small" style="grid-row: 4; grid-column: 3;">
								<span>
									<!-- <input type="text" placeholder="8" name=20>--> <select
									name="8" class="form-control" id="jadhagam">
									     <option value="<%= j.getJ8()%>"><%= j.getJ8()%></option>
										<option value="Raagu">Raagu</option>
										<option value="Guru">Guru</option>
										<option value="Kedu">Kedhu</option>
										<option value="Sukkiran">Sukkiran</option>
										<option value="Sani">Sani</option>
										<option value="Sooriyan">Sooriyan</option>
										<option value="Chandhran">Chandhran</option>
										<option value="Chevvai">Chevvai</option>
										<option value="Budhan">Budhan</option>
								</select>
								</span>
							</div>
							<div class="box small" style="grid-row: 4; grid-column: 2;">
								<span>
									<!-- <input type="text" placeholder="9" name=21>--> <select
									name="9" class="form-control" id="jadhagam">
									     <option value="<%= j.getJ9()%>"><%= j.getJ9()%></option>
										<option value="Raagu">Raagu</option>
										<option value="Guru">Guru</option>
										<option value="Kedu">Kedhu</option>
										<option value="Sukkiran">Sukkiran</option>
										<option value="Sani">Sani</option>
										<option value="Sooriyan">Sooriyan</option>
										<option value="Chandhran">Chandhran</option>
										<option value="Chevvai">Chevvai</option>
										<option value="Budhan">Budhan</option>
								</select>
								</span>
							</div>
							<div class="box small" style="grid-row: 4; grid-column: 1;">
								<span>
									<!-- <input type="text" placeholder="10" name=22>--> <select
									name="10" class="form-control" id="jadhagam">
									     <option value="<%= j.getJ10()%>"><%= j.getJ10()%></option>
										<option value="Raagu">Raagu</option>
										<option value="Guru">Guru</option>
										<option value="Kedu">Kedhu</option>
										<option value="Sukkiran">Sukkiran</option>
										<option value="Sani">Sani</option>
										<option value="Sooriyan">Sooriyan</option>
										<option value="Chandhran">Chandhran</option>
										<option value="Chevvai">Chevvai</option>
										<option value="Budhan">Budhan</option>
								</select>
								</span>
							</div>
							<div class="box small" style="grid-row: 3; grid-column: 1;">
								<span>
									<!-- <input type="text" placeholder="11" name=23>--> <select
									name="11" class="form-control" id="jadhagam">
									     <option value="<%= j.getJ11()%>"><%= j.getJ11()%></option>
										<option value="Raagu">Raagu</option>
										<option value="Guru">Guru</option>
										<option value="Kedu">Kedhu</option>
										<option value="Sukkiran">Sukkiran</option>
										<option value="Sani">Sani</option>
										<option value="Sooriyan">Sooriyan</option>
										<option value="Chandhran">Chandhran</option>
										<option value="Chevvai">Chevvai</option>
										<option value="Budhan">Budhan</option>
								</select>
								</span>
							</div>
							<div class="box small" style="grid-row: 2; grid-column: 1;">
								<span>
									<!-- <input type="text" placeholder="12" name=24>--> <select
									name="12" class="form-control" id="jadhagam">
									     <option value="<%= j.getJ12()%>"><%= j.getJ12()%></option>
										<option value="Raagu">Raagu</option>
										<option value="Guru">Guru</option>
										<option value="Kedu">Kedhu</option>
										<option value="Sukkiran">Sukkiran</option>
										<option value="Sani">Sani</option>
										<option value="Sooriyan">Sooriyan</option>
										<option value="Chandhran">Chandhran</option>
										<option value="Chevvai">Chevvai</option>
										<option value="Budhan">Budhan</option>
								</select>
								</span>
							</div>
							<div
								class="mx-3" style="grid-row: 2; grid-column: 3; grid-row: 3; grid-column: 2; text-align: center; paddng-up: 30px;">Rasi</div>
						</div>
						
					</div>

					<div class="col-6">
						<div class="square">
							<span class="box small" style="grid-row: 1; grid-column: 1;">
								<!-- <input type="text" placeholder="1" name=13>--> <select
								name="13" class="form-control" id="jadhagam">
								     <option value="<%= j.getJ13()%>"><%= j.getJ13()%></option>
									<option value="Raagu">Raagu</option>
									<option value="Guru">Guru</option>
									<option value="Kedu">Kedhu</option>
									<option value="Sukkiran">Sukkiran</option>
									<option value="Sani">Sani</option>
									<option value="Sooriyan">Sooriyan</option>
									<option value="Chandhran">Chandhran</option>
									<option value="Chevvai">Chevvai</option>
									<option value="Budhan">Budhan</option>
							</select>
							</span> <span class="box small" style="grid-row: 1; grid-column: 2;">
								<!-- <input type="text" placeholder="2" name=14>--> <select
								name="14" class="form-control" id="jadhagam">
								     <option value="<%= j.getJ14()%>"><%= j.getJ14()%></option>
									<option value="Raagu">Raagu</option>
									<option value="Guru">Guru</option>
									<option value="Kedu">Kedhu</option>
									<option value="Sukkiran">Sukkiran</option>
									<option value="Sani">Sani</option>
									<option value="Sooriyan">Sooriyan</option>
									<option value="Chandhran">Chandhran</option>
									<option value="Chevvai">Chevvai</option>
									<option value="Budhan">Budhan</option>
							</select>
							</span>
							<div class="box small" style="grid-row: 1; grid-column: 3;">
								<span>
									<!-- <input type="text" placeholder="3" name=15>--> <select
									name="15" class="form-control" id="jadhagam">
									     <option value="<%= j.getJ15()%>"><%= j.getJ15()%></option>
										<option value="Raagu">Raagu</option>
										<option value="Guru">Guru</option>
										<option value="Kedu">Kedhu</option>
										<option value="Sukkiran">Sukkiran</option>
										<option value="Sani">Sani</option>
										<option value="Sooriyan">Sooriyan</option>
										<option value="Chandhran">Chandhran</option>
										<option value="Chevvai">Chevvai</option>
										<option value="Budhan">Budhan</option>
								</select>
								</span>
							</div>
							<div class="box small" style="grid-row: 1; grid-column: 4;">
								<span>
									<!-- <input type="text" placeholder="4" name=16>--> <select
									name="16" class="form-control" id="jadhagam">
									     <option value="<%= j.getJ16()%>"><%= j.getJ16()%></option>
										<option value="Raagu">Raagu</option>
										<option value="Guru">Guru</option>
										<option value="Kedu">Kedhu</option>
										<option value="Sukkiran">Sukkiran</option>
										<option value="Sani">Sani</option>
										<option value="Sooriyan">Sooriyan</option>
										<option value="Chandhran">Chandhran</option>
										<option value="Chevvai">Chevvai</option>
										<option value="Budhan">Budhan</option>
								</select>
								</span>
							</div>
							<div class="box small" style="grid-row: 2; grid-column: 4;">
								<span>
									<!-- <input type="text" placeholder="5" name=17>--> <select
									name="17" class="form-control" id="jadhagam">
									     <option value="<%= j.getJ17()%>"><%= j.getJ17()%></option>
										<option value="Raagu">Raagu</option>
										<option value="Guru">Guru</option>
										<option value="Kedu">Kedhu</option>
										<option value="Sukkiran">Sukkiran</option>
										<option value="Sani">Sani</option>
										<option value="Sooriyan">Sooriyan</option>
										<option value="Chandhran">Chandhran</option>
										<option value="Chevvai">Chevvai</option>
										<option value="Budhan">Budhan</option>
								</select>
								</span>
							</div>
							<div class="box small" style="grid-row: 3; grid-column: 4;">
								<span>
									<!-- <input type="text" placeholder="6" name=18>--> <select
									name="18" class="form-control" id="jadhagam">
									     <option value="<%= j.getJ18()%>"><%= j.getJ18()%></option>
										<option value="Raagu">Raagu</option>
										<option value="Guru">Guru</option>
										<option value="Kedu">Kedhu</option>
										<option value="Sukkiran">Sukkiran</option>
										<option value="Sani">Sani</option>
										<option value="Sooriyan">Sooriyan</option>
										<option value="Chandhran">Chandhran</option>
										<option value="Chevvai">Chevvai</option>
										<option value="Budhan">Budhan</option>
								</select>
								</span>
							</div>
							<div class="box small" style="grid-row: 4; grid-column: 4;">
								<span>
									<!-- <input type="text" placeholder="7" name=19>--> <select
									name="19" class="form-control" id="jadhagam">
									     <option value="<%= j.getJ19()%>"><%= j.getJ19()%></option>
										<option value="Raagu">Raagu</option>
										<option value="Guru">Guru</option>
										<option value="Kedu">Kedhu</option>
										<option value="Sukkiran">Sukkiran</option>
										<option value="Sani">Sani</option>
										<option value="Sooriyan">Sooriyan</option>
										<option value="Chandhran">Chandhran</option>
										<option value="Chevvai">Chevvai</option>
										<option value="Budhan">Budhan</option>
								</select>
								</span>
							</div>
							<div class="box small" style="grid-row: 4; grid-column: 3;">
								<span>
									<!-- <input type="text" placeholder="8" name=20>--> <select
									name="20" class="form-control" id="jadhagam">
									     <option value="<%= j.getJ20()%>"><%= j.getJ20()%></option>
										<option value="Raagu">Raagu</option>
										<option value="Guru">Guru</option>
										<option value="Kedu">Kedhu</option>
										<option value="Sukkiran">Sukkiran</option>
										<option value="Sani">Sani</option>
										<option value="Sooriyan">Sooriyan</option>
										<option value="Chandhran">Chandhran</option>
										<option value="Chevvai">Chevvai</option>
										<option value="Budhan">Budhan</option>
								</select>
								</span>
							</div>
							<div class="box small" style="grid-row: 4; grid-column: 2;">
								<span>
									<!-- <input type="text" placeholder="9" name=21>--> <select
									name="21" class="form-control" id="jadhagam">
									     <option value="<%= j.getJ21()%>"><%= j.getJ21()%></option>
										<option value="Raagu">Raagu</option>
										<option value="Guru">Guru</option>
										<option value="Kedu">Kedhu</option>
										<option value="Sukkiran">Sukkiran</option>
										<option value="Sani">Sani</option>
										<option value="Sooriyan">Sooriyan</option>
										<option value="Chandhran">Chandhran</option>
										<option value="Chevvai">Chevvai</option>
										<option value="Budhan">Budhan</option>
								</select>
								</span>
							</div>
							<div class="box small" style="grid-row: 4; grid-column: 1;">
								<span>
									<!-- <input type="text" placeholder="10" name=22>--> <select
									name="22" class="form-control" id="jadhagam">
									     <option value="<%= j.getJ22()%>"><%= j.getJ22()%></option>
										<option value="Raagu">Raagu</option>
										<option value="Guru">Guru</option>
										<option value="Kedu">Kedhu</option>
										<option value="Sukkiran">Sukkiran</option>
										<option value="Sani">Sani</option>
										<option value="Sooriyan">Sooriyan</option>
										<option value="Chandhran">Chandhran</option>
										<option value="Chevvai">Chevvai</option>
										<option value="Budhan">Budhan</option>
								</select>
								</span>
							</div>
							<div class="box small" style="grid-row: 3; grid-column: 1;">
								<span>
									<!-- <input type="text" placeholder="11" name=23>--> <select
									name="23" class="form-control" id="jadhagam">
									     <option value="<%= j.getJ23()%>"><%= j.getJ23()%></option>
										<option value="Raagu">Raagu</option>
										<option value="Guru">Guru</option>
										<option value="Kedu">Kedhu</option>
										<option value="Sukkiran">Sukkiran</option>
										<option value="Sani">Sani</option>
										<option value="Sooriyan">Sooriyan</option>
										<option value="Chandhran">Chandhran</option>
										<option value="Chevvai">Chevvai</option>
										<option value="Budhan">Budhan</option>
								</select>
								</span>
							</div>
							<div class="box small" style="grid-row: 2; grid-column: 1;">
								<span>
									<!-- <input type="text" placeholder="12" name=24>--> <select
									name="24" class="form-control" id="jadhagam">
									     <option value="<%= j.getJ24()%>"><%= j.getJ24()%></option>
										<option value="Raagu">Raagu</option>
										<option value="Guru">Guru</option>
										<option value="Kedu">Kedhu</option>
										<option value="Sukkiran">Sukkiran</option>
										<option value="Sani">Sani</option>
										<option value="Sooriyan">Sooriyan</option>
										<option value="Chandhran">Chandhran</option>
										<option value="Chevvai">Chevvai</option>
										<option value="Budhan">Budhan</option>
								</select>
								</span>
							</div>
							<div
								style="grid-row: 2; grid-column: 3; grid-row: 3; grid-column: 2; text-align: center; paddng-up: 30px;">Amsam</div>
						</div>
						
					</div>

    

				</div>

			</div>

		</div>
		
							</div>
							
								
								</div>
								
							</div>
							
	</div>


	

	
	
	<div id="con"class="row">
						<div class="col-sm-12">
							<div class="card">
								<div style="	background-image: linear-gradient(-225deg, rgb(182, 247, 61) 50%,
		#4ff185 50%);" class="card-body">
								<h4 class="text-center">
								CONTACT DETAILS</h4>
									<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">House Number:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
								<input name="House_Number" class="mx-5 col-sm-9  px-2 rounded" value="<%=k.getHouseNumber()%>">
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Street Name:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
										<input name="street" class="mx-5  px-2 col-sm-9 rounded" value="<%=k.getStreetName()%>">
								</div>
							</div>
							
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Locality:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
										<input name="Locality" class="mx-5  px-2 col-sm-9 rounded" value="<%=k.getLocality()%>">
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0"> City:</h6>
								</div>
								
								<div class="col-sm-9 text-uppercase">
									<input name="city" class="mx-5 col-sm-9  px-2 rounded" value="<%=k.getCity()%>">
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">District:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
										<input name="District" class="mx-5  px-2 col-sm-9 rounded" value="<%=k.getDistrict()%>">
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">State:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
										<input name="State" class="mx-5  px-2 col-sm-9 rounded" value="<%=k.getState()%>">
								</div>
							</div>
							
						
							
								
								</div>
								<button class="btn btn-primary" type="submit" >Save Changes</button>
								</div>
								
								</div>
									</form>
								</div>
								
								</div>
								
								</div>
							
							</div>
						
							
						
							
							
</body>
</html>