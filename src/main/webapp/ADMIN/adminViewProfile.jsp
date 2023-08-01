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
	.square { width : 440px;
	height: 440px;
	border: 1px solid black;
	display: grid;
	grid-template-rows: 0fr 110px 0fr;
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
	width: 110px;
	height: 110px;
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









</form>


<div class="container">
		<div class="main-body">
			<div class="row">
				<div class="col-lg-4">
					<div style="	background-image: linear-gradient(-225deg, rgb(92, 184, 50) 50%,
		#ffffff 50%);" class="card">
						<div class="card-body">
							<div class="d-flex flex-column align-items-center text-center">
								<img style="height:300px;width:250px" src="../profileimages/<%=a.getImagename() %>" alt="Admin" class="rounded-circle p-1 bg-success" >
								<div class="mt-3">
									<h4 class="text-uppercase"><%=a.getFname() %></h4>
									<p class=" font-size-sm ">AGE:<%=a.getAge() %></p>
									<p class="  text-uppercase">Profession:<%=c.getProfession() %></p>
									
									<p class=" font-size-sm text-uppercase">CITY:<%=a.getCity() %></p>
									
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
									<h6 class="mb-0">Full Name:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=a.getFname() %> <%=a.getLname() %></p>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Date of Birth:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=a.getDOB() %></p>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Time Of Birth:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"> <%=a.getTOB() %></p>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Gender:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
							    <p class="mx-5"> <%=a.getGender() %> </p>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Sub Caste:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=a.getSubCaste() %></p>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Mother Tongue:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=a.getMotherToungue() %></p>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Highest Qualification:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=a.getHighestEducation() %></p>
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Complexity:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=e.getComplexity() %></p>
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Height:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=e.getHeight() %></p>
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">WEIGHT:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=e.getWeight() %>KG</p>
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
									<p class="mx-5"><%=b.getFatherName() %></p>
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Father Occupation:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=b.getFatherOccupation() %></p>
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Mother Name:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=b.getMotherName() %></p>
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Mother Occupation:</h6>
								</div>
								
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=b.getMotherOccupation() %></p>
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Number of Siblings:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=b.getSiblingCount() %></p>
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Sibling Details:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=b.getSiblingDetails() %></p>
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
									<p class="mx-5"><%=c.getHighestEducation() %></p>
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Profession:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=c.getProfession() %></p>
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Monthly Income:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=c.getMonthlyIncome() %></p>
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Working City:</h6>
								</div>
								
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=c.getWorkingCity() %></p>
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Field Of Study:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=c.getEducation()%></p>
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
									<p class="mx-5"><%=j.getRasi() %></p>
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Star:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=j.getStar()%></p>
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Padam:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=j.getPadam() %></p>
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Lagnam:</h6>
								</div>
								
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=j.getLagnam() %></p>
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
							<p class=" p-4"><%=j.getJ1() %> </p>
							
							</span>
							 <span class="box small" style="grid-row: 1; grid-column: 2;">
							 	<p class=" p-4"><%=j.getJ2() %> </p>
								
							</span>
							<div class="box small" style="grid-row: 1; grid-column: 3;">
								<span>
									<p class=" p-4"><%=j.getJ3() %> </p>
								</span>
							</div>
							<div class="box small" style="grid-row: 1; grid-column: 4;">
								<span>
									<p class=" p-4"><%=j.getJ4() %> </p>
								</span>
							</div>
							<div class="box small" style="grid-row: 2; grid-column: 4;">
								<span>
									<p class=" p-4"><%=j.getJ5() %> </p>
								</span>
							</div>
							<div class="box small" style="grid-row: 3; grid-column: 4;">
								<span>
									<p class=" p-4"><%=j.getJ6() %> </p>
								</span>
							</div>
							<div class="box small" style="grid-row: 4; grid-column: 4;">
								<span>
										<p class=" p-4"><%=j.getJ7() %> </p>
								</span>
							</div>
							<div class="box small" style="grid-row: 4; grid-column: 3;">
								<span>
									<p class=" p-4"><%=j.getJ8() %> </p>
								</span>
							</div>
							<div class="box small" style="grid-row: 4; grid-column: 2;">
								<span>
									<p class=" p-4"><%=j.getJ9() %> </p>
								</span>
							</div>
							<div class="box small" style="grid-row: 4; grid-column: 1;">
								<span>
										<p class=" p-4"><%=j.getJ10() %> </p>
								</span>
							</div>
							<div class="box small" style="grid-row: 3; grid-column: 1;">
								<span>
										<p class=" p-4"><%=j.getJ11() %> </p>
								</span>
							</div>
							<div class="box small" style="grid-row: 2; grid-column: 1;">
								<span>
								<p class=" p-4"><%=j.getJ12() %> </p>
								</span>
							</div>
							<div
								style="grid-row: 2; grid-column: 3; grid-row: 3; grid-column: 2; text-align: center; paddng-up: 30px;">Rasi</div>
						</div>
					</div>

					<div class="col-6">
						<div class="square">
							<span class="box small" style="grid-row: 1; grid-column: 1;">
									<p class=" p-4"><%=j.getJ13() %> </p>
							</span> <span class="box small" style="grid-row: 1; grid-column: 2;">
									<p class=" p-4"><%=j.getJ14() %> </p>
							</span>
							<div class="box small" style="grid-row: 1; grid-column: 3;">
								<span>
									<p class=" p-4"><%=j.getJ15() %> </p>
								</span>
							</div>
							<div class="box small" style="grid-row: 1; grid-column: 4;">
								<span>
									<p class=" p-4"><%=j.getJ16() %> </p>
								</span>
							</div>
							<div class="box small" style="grid-row: 2; grid-column: 4;">
								<span>
									<p class=" p-4"><%=j.getJ17() %> </p>
								</span>
							</div>
							<div class="box small" style="grid-row: 3; grid-column: 4;">
								<span>
									<p class=" p-4"><%=j.getJ18() %> </p>
								</span>
							</div>
							<div class="box small" style="grid-row: 4; grid-column: 4;">
								<span>
									<p class=" p-4"><%=j.getJ19() %> </p>
								</span>
							</div>
							<div class="box small" style="grid-row: 4; grid-column: 3;">
								<span>
										<p class=" p-4"><%=j.getJ20() %> </p>
								</span>
							</div>
							<div class="box small" style="grid-row: 4; grid-column: 2;">
								<span>
										<p class=" p-4"><%=j.getJ21() %> </p>
								</span>
							</div>
							<div class="box small" style="grid-row: 4; grid-column: 1;">
								<span>
									<p class=" p-4"><%=j.getJ22() %> </p>
								</span>
							</div>
							<div class="box small" style="grid-row: 3; grid-column: 1;">
								<span>
										<p class=" p-4"><%=j.getJ23() %> </p>
								</span>
							</div>
							<div class="box small" style="grid-row: 2; grid-column: 1;">
								<span>
									<p class=" p-4"><%=j.getJ24 	() %> </p>
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
									<p class="mx-5"><%=k.getHouseNumber() %></p>
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Street Name:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=k.getStreetName() %></p>
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Locality:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=k.getLocality() %></p>
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0"> City:</h6>
								</div>
								
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=k.getCity() %></p>
								</div>
							</div>
								<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">District:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=k.getDistrict()%></p>
								</div>
							</div>
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">State:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=k.getState()%></p>
								</div>
							</div>
							
							<div class="row mb-3">
								<div class="col-sm-3">
									<h6 class="mb-0">Contact Number:</h6>
								</div>
								<div class="col-sm-9 text-uppercase">
									<p class="mx-5"><%=a.getContactNumber()%></p>
								</div>
							</div>
							
								
								</div>
								</div>
								</div>
							</div>
							<h1 id="itemlist" ></h1>
							<script type="text/javascript">
						
								/* var id=$("#uid").val();
								var cr=$("#cred").text();
								var datas={'UID':id,'CRE':cr};
							
								alert(datas); */
								
								/* $.ajax({
									url:'Updatecredit',
									contentType:'application/json',
								
									data:JSON.stringify(datas),
									
									type:'post',
									
									success:function(response){
									alert(response);
										
									}
									
								}); */
							/* 	$("#show").click(function(){
								var value1 = $("#uid").val(); 
								var value21 = document.getElementById("cred").innerHTML;
								var value2=credits;
							//	var value2 = $("#cred").text();
							    if(value2==0){ 
							    alert("You Are Not Having Any Credits please Contact Admin for Recharge");	
							    }
							    else
							    {
								alert(value2);
								$.post( "Updatecredit", { n1: value1, n2: value2})
								.done(function( data ) {
						     	 alert ("One Credit will be debited from Your Account")
						     	 //	location.reload();
						     	 $("#con").show();
						     
								});
							    }
						
								
								
							}); */
						
							
							</script>
							
</body>
</html>