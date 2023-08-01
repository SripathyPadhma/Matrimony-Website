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
<title>Contact details</title>
</head>
<body>
<%
int id=Integer.parseInt(request.getParameter("ID"));
profileDAO D=new profileDAO(DbConnect.getcon());


profileDAO e=new profileDAO(DbConnect.getcon());
Users k=e.getContactdetails(id);
%>


<div class="row">
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
									<p class="mx-5"><%=k.getContactNumber()%></p>
								</div>
							</div>
							
								
								</div>
								
							</div>


</body>
</html>