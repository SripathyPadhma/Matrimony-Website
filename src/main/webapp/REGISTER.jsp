<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" src="index.css">
<%@include file="components/CSS.jsp"%>

<style>
body {
	background-image: linear-gradient(-225deg, #E3FDF5 0%, #FFE6FA 100%);
	background-image: linear-gradient(to top, #62f787 0%, #c6e948 100%);
	background-attachment: fixed;
	background-repeat: no-repeat;
	/*



    font-family: 'Vibur', cursive;
/*   the main font */
	/* background-image: linear-gradient(to top, #d9afd9 0%, #97d9e1 100%); */
	.square { width : 408px;
	height: 408px;
	border: 1px solid #ccc;
	display: grid;
	grid-template-rows: 0fr 100px 0fr;
	box-sizing: border-box;
}

.box {
	border: 1px solid #ccc;
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


#regForm {
	background-color: #ffffff;
	margin: 100px auto;
	font-family: Raleway;
	padding: 40px;
	width: 70%;
	min-width: 300px;
	border-radius:10px;
}

h1 {
	text-align: center;
}

input {
	padding: 10px;
	width: 100%;
	font-size: 17px;
	font-family: Raleway;
	border: 1px solid #aaaaaa;
	border-radius:10px;
}

/* Mark input boxes that gets an error on validation: */
input.invalid {
	background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
	display: none;
}

button {
	background-color: #04AA6D;
	color: #ffffff;
	border: none;
	padding: 10px 20px;
	font-size: 17px;
	font-family: Raleway;
	cursor: pointer;
}

button:hover {
	opacity: 0.8;
}

#prevBtn {
	background-color: #bbbbbb;
}

/* Make circles that indicate the steps of the form: */
.step {
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbbbbb;
	border: none;
	border-radius: 50%;
	display: inline-block;
	opacity: 0.5;
}

.step.active {
	opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
	background-color: #04AA6D;
}
</style>

<body>
<% 
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");

%>
<%@include file="NAVBAR.jsp"%>
<style>
* {
	box-sizing: border-box;
}

body {
	background-color: #f1f1f1;
}

#regForm {
	background-color: #ffffff;
	margin: 100px auto;
	font-family: Raleway;
	padding: 40px;
	width: 70%;
	min-width: 300px;
}

h1 {
	text-align: center;
}

input,select {
	padding: 10px;
	width: 100%;
	font-size: 17px;
	font-family: Raleway;
	border: 1px solid #aaaaaa;
}

/* Mark input boxes that gets an error on validation: */
input.invalid,select.invalid {
	background-color: #ffdddd;
}

/* Hide all steps by default: */
.tab {
	display: none;
}

button {
	background-color: #04AA6D;
	color: #ffffff;
	border: none;
	padding: 10px 20px;
	font-size: 17px;
	font-family: Raleway;
	cursor: pointer;
}

button:hover {
	opacity: 0.8;
}

#prevBtn {
	background-color: #bbbbbb;
}

/* Make circles that indicate the steps of the form: */
.step {
	height: 15px;
	width: 15px;
	margin: 0 2px;
	background-color: #bbbbbb;
	border: none;
	border-radius: 50%;
	display: inline-block;
	opacity: 0.5;
}

.step.active {
	opacity: 1;
}

/* Mark the steps that are finished and valid: */
.step.finish {
	background-color: #04AA6D;
}

.square {
	width: 400px;
	height: 400px;
	border: 1px solid #ccc;
	display: grid;
	grid-template-rows: 0fr 100px 0fr;
	box-sizing: border-box;
}

.box {
	border: 1px solid #ccc;
}

.box.small {
	width: 100px;
	height: 100px;
}

.box.big {
	width: 200px;
	height: 200px;
}
</style>

	<form style="border-radius:10px;" id="regForm" action="register"method="post" enctype="multipart/form-data">
		
		<!-- One "tab" for each step in the form: -->

		<div class="tab">
			<h1>Profile Photo</h1>
			<c:if test="${not empty success }" >
<p class="text-center text-success text-fs-4">${success}</p>
<c:remove var="success" scope="session"/>
</c:if>
<c:if test="${ empty error }" >
<p class="text-center text-success text-fs-4">${error}</p>
<c:remove var="error" scope="session"/>
</c:if>

			<input type="file" placeholder="Profile image" name="profile">
		</div>

		<div class="tab">
			<h1>Basic Details</h1>
			<p>
				<input placeholder="First name" name="fname" type="text">
			</p>
			<p>
				<input placeholder="Last name" name="lname" type="text">
			</p>
			<p>
				<input type="date" placeholder="Date of Birth" name="DOB">
				<!--input type="text" class="form-control date_wid" name="DOB" id="dob" placeholder="Date of Birth"  /-->
			</p>
			<p>
				<input placeholder="Date of Birth" name="Birth_time" type="time">
			</p>
			<p>
				<!-- input placeholder="Gender" name="" type="text"-->
				<select class="form-control" name="gender" id="gender">
					<option value="not   mentioned">Gender</option>
					<option value="Male">Male</option>
					<option value="Female">Female</option>
				</select>
			</p>
			<p>
				<input placeholder="Place of Birth" name="Place_of_Birth"
					type="text">
			</p>
			<p>
				<select class="form-control" name="maritalstatus" id="marital" required>
					<option value="Marital Status">Marital Status</option>
					<option value="Unmarried">Unmarried</option>
					<option value="married">Married</option>
					<option value="widow">Widow</option>
					<option value="divorced">Divorced</option>
				</select>
			</p>
			<p>
				<!-- input placeholder="Sub Caste" name="Subcaste" type="text"> -->
				<select name="Subcaste" class="form-control"  id="sub_caste">
					<option value="Select Sub Caste">Select Sub Caste</option>
					<option value="Agamudaya Mudaliyar">Agamudaya Mudaliyar</option>
					<option value="Isai Vellalar">Isai Vellalar</option>
					<option value="Mudaliyar">Mudaliyar</option>
					<!--  option value="135">None</option>-->
					<option value="Saiva Vellalar">Saiva Vellalar</option>
					<option value="Sengunthar/Kaikolar">Sengunthar/Kaikolar</option>
					<option value="Thuluva Vellalar">Thuluva Vellalar</option>
				</select>
			</p>
			<p>
				<input placeholder="Mother Tongue" name="Mother_Tounge" type="text">
			</p>
			<p>
				<input placeholder="Native" name="Native" type="text">
			</p>


			<p>
				<input placeholder="AGE" name="AGE" type="number">
			</p>
			
		</div>
		
		<div class="tab">
			<h1>Professional and Educational Details</h1>
			<p>
				<!-- input placeholder="Highest Education" name="Highest_Education"
					type="text"> -->
				<select name="Highest_Education" id="edu">
					<option value="Engineering">Engineering</option>
					<option value="Arts/Science">Arts/Science</option>
					<option value="Medical">Medical</option>
					<option value="Research">Research</option>
					<option value="Others">Others</option>
				</select>
				</p>
				<p>
				<input type="text" placeholder="Enter your qualification in detail" name="education">
					
			</p>
			<p>
				<input placeholder="Profession" name="Profession" type="text">
			</p>
			<p>
				<input type="number" placeholder="Monthly Income" name="Monthly_Income"
					type="text">
			</p>
			<p>
				<input placeholder="Working_city" name="Working_City" type="text">
			</p>


		</div>
		<div class="tab">
			<h1>Family Details</h1>
			<p>
				<input placeholder="Father Name" name="Father_Name" type="text">
			</p>
			<p>
				<input placeholder="Father Occupation" name="Father_Occupation"
					type="text">
			</p>
			<p>
				<input placeholder="Mother Name" name="Mother_Name" type="text">
			</p>
			<p>
				<input placeholder="Mother Occupation" name="Mother_Occupation"
					type="text">
			</p>
			<p>
				<input placeholder="No of siblings" name="SiblingCount" type="number">
			</p>
			<P>
			<textarea rows="10" cols="80" placeholder="Enter Sibling Details and Marital Status" name="SiblingDetails"></textarea>
			</P>

		</div>
		<div class="tab">
			<h1>Contact Details</h1>
			<p>
				<input placeholder="Contact Number" name="Contact_Number"
					type="number">
			</p>
			<p>
				<input placeholder="E-mail" name="email" type="email">
			</p>
			<p>
				<input placeholder="House Number" name="House_Number" type="text">
			</p>
			<p>
				<input placeholder="Street Name" name="street"type="text">
			</p>
			<p>
				<input placeholder="Locality" type="text" name="Locality">
			</p>
			<p>
				<input placeholder="City" type="text" name="City">
			</p>
			<p>
				<input placeholder="District" type="text" name="District">
			</p>
			<p>
				<input placeholder="State" type="text" name="State">
			</p>
			<p>
				<input placeholder="Pin Code" type="text" name="Pincode">
			</p>
		


		</div>
		<div class="tab">
			<h1>Personality Details</h1>
			<p>
				<!-- input placeholder="Complexity" name="complexity" type="text"> -->
				<select class="form-control" name="complex">
					<option value="Select Complexity">Select Complexity</option>
					<option value="Fair">Fair</option>
					<option value="Brown">Brown</option>
					<option value="Wheatish">Wheatish</option>
					<option value="Moderate">Moderate</option>
				</select>
			</p>
			<p>
				<input placeholder="Height (Feet)" name="Height" type="number">
			</p>
			<p>
				<input type="number" placeholder="Weight(kg)" name="Weight">
			</p>




		</div>
		<div class="tab">
			<h1>Expectation</h1>
			<p>
				<select class="form-control" name="maritalstatusExp" id="marital" required>
					<option value="Marital Status">Marital Status</option>
					<option value="Unmarried">Unmarried</option>
					<option value="married">Married</option>
					<option value="widow">Widow</option>
					<option value="divorced">Divorced</option>
				</select>
			</p>
			<p>
			<!-- input type="text" placeholder="Salary Expectation" name="salaryExp"> -->
			<select class="form-control" name="salaryExp" id="salaryExp">
					<option value="<300000"><400000</option>
					<option value="400000-700000">400000-700000</option>
					<option value="700000-1000000">700000-1000000</option>
					<option value=">1000000">>1000000</option>
			</select>
		</div>
		
	<div class="tab">
			<h1>Horoscope Details</h1>
			<p>
				<!--  input type="text" placeholder="Rasi" name="Rasi"-->
				<select class="form-control" name="Rasi" id="rasi">
					<option value="">Select Rasi</option>
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
			<p>
				<!-- input type="text" placeholder="Star" name="Star"> -->
				<select class="form-control" name="Star" id="star">
					<option value="">Select Star</option>
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
			<p>
				<input type="text" placeholder="Lagnam" name="Lagnam">
			</p>
			<p>
				<!-- input type="text" placeholder="Padam" name="Padam"> -->
				<select class="form-control" name="Padam" id="padam">
					<option value="">Select Padam</option>
					<option value="1">1</option>
					<option value="2">2</option>
					<option value="3">3</option>
					<option value="4">4</option>
					<option value="0">None</option>
				</select>
			</p>





		</div>
		<div class="tab">
			<h1>Jadhagam</h1>
			<div class="container">
				<div class="row">
					<div class="col-6">
						<div class="col-6">
						<div class="square">
							<span class="box small" style="grid-row: 1; grid-column: 1;">
								<!-- <input type="text" placeholder="1" name=13>--> <select
								name="1" class="form-control" id="jadhagam">
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
								style="grid-row: 2; grid-column: 3; grid-row: 3; grid-column: 2; text-align: center; paddng-up: 30px;">Rasi</div>
						</div>
					</div>



					</div>
					<div class="col-6">
						<div class="square">
							<span class="box small" style="grid-row: 1; grid-column: 1;">
								<!-- <input type="text" placeholder="1" name=13>--> <select
								name="13" class="form-control" id="jadhagam">
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


    <button type="submit">submit</button>
				</div>

			</div>

		</div>
		
		
		<!-- div class="tab">Name:
    <p><input placeholder="First name..." oninput="this.className = ''" name="fname"></p>
    <p><input placeholder="Last name..." oninput="this.className = ''" name="lname"></p>
  </div>
  <div class="tab">Contact Info:
    <p><input placeholder="E-mail..." oninput="this.className = ''" name="email"></p>
    <p><input placeholder="Phone..." oninput="this.className = ''" name="phone"></p>
  </div>
  <div class="tab">Birthday:
    <p><input placeholder="dd" oninput="this.className = ''" name="dd"></p>
    <p><input placeholder="mm" oninput="this.className = ''" name="nn"></p>
    <p><input placeholder="yyyy" oninput="this.className = ''" name="yyyy"></p>
  </div>
  <div class="tab">Login Info:
    <p><input placeholder="Username..." oninput="this.className = ''" name="uname"></p>
    <p><input placeholder="Password..." oninput="this.className = ''" name="pword" type="password"></p>
  </div>
 -->
<br>
		<div style="overflow: auto;">
			<div style="float: right;">
				<button  type="button" id="prevBtn" onclick="nextPrev(-1)">Previous</button>
				<button type="button" id="nextBtn" onclick="nextPrev(1)">Next</button>
			</div>
		</div>
		<!-- Circles which indicates the steps of the form: -->
		<div style="text-align: center; margin-top: 40px;">
			<span class="step"></span> <span class="step"></span> <span
				class="step"></span> <span class="step"></span>
				<span class="step"></span> <span class="step"></span> <span
				class="step"></span> <span class="step"></span>
		</div>
	</form>

	<script>
		var currentTab = 0; // Current tab is set to be the first tab (0)
		showTab(currentTab); // Display the current tab

		function showTab(n) {
			// This function will display the specified tab of the form...
			var x = document.getElementsByClassName("tab");
			x[n].style.display = "block";
			//... and fix the Previous/Next buttons:
			if (n == 0) {
				document.getElementById("prevBtn").style.display = "none";
			} else {
				document.getElementById("prevBtn").style.display = "inline";
			}
			if (n == (x.length - 1)) {
			
			} else {
				document.getElementById("nextBtn").innerHTML = "Next";
			}
			//... and run a function that will display the correct step indicator:
			fixStepIndicator(n)
		}

		function nextPrev(n) {
			// This function will figure out which tab to display
			var x = document.getElementsByClassName("tab");
			// Exit the function if any field in the current tab is invalid:
			if (n == 1 && !validateForm())
				return false;
			// Hide the current tab:
			x[currentTab].style.display = "none";
			// Increase or decrease the current tab by 1:
			currentTab = currentTab + n;
			// if you have reached the end of the form...
			if (currentTab >= x.length) {
				// ... the form gets submitted:
				document.getElementById("regForm").submit();
				return false;
			}
			// Otherwise, display the correct tab:
			showTab(currentTab);
		}

		function validateForm() {
			// This function deals with validation of the form fields
			var x, y, i, valid = true;
			x = document.getElementsByClassName("tab");
			y = x[currentTab].getElementsByTagName("input");
			// A loop that checks every input field in the current tab:
			for (i = 0; i < y.length; i++) {
				// If a field is empty...
				if (y[i].value == "") {
					// add an "invalid" class to the field:
					y[i].className += " invalid";
					// and set the current valid status to false
					valid = false;
				}
			}
			// If the valid status is true, mark the step as finished and valid:
			if (valid) {
				document.getElementsByClassName("step")[currentTab].className += " finish";
			}
			return valid; // return the valid status
		}

		function fixStepIndicator(n) {
			// This function removes the "active" class of all steps...
			var i, x = document.getElementsByClassName("step");
			for (i = 0; i < x.length; i++) {
				x[i].className = x[i].className.replace(" active", "");
			}
			//... and adds the "active" class on the current step:
			x[n].className += " active";
		}
	</script>

</body>
</html>
