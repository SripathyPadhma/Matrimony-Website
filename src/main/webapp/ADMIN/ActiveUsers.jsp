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
<title>My Matches</title>
  <link href="https://fonts.googleapis.com/css?family=Poppins:400,600,700" rel="stylesheet" />
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script type="text/javascript">

  </script>
    <link href="css/main.css" rel="stylesheet" />
<style type="text/css">
h3 {
	margin: 10px 0;
}

h6 {
	margin: 5px 0;
	text-transform: uppercase;
}

p {
	font-size: 14px;  
	line-height: 21px;
}

.card-container {
	background-color: white;
	border-radius: 5px;
	box-shadow: 0px 10px 20px -10px rgba(0, 0, 0, 0.75);
	color: black;
	padding-top: 30px;
	position: relative;
	width: 350px;
	height:450px;
	max-width: 100%;
	text-align: center;
	
	margin: 20px;
}

.card-container .round {   
	border: 1px solid green;
	border-radius: 50%;
	padding: 7px;
}

button.primary.ghost {
	background-color: transparent;
	color: #02899C;
}
body {
	  background: #e8cbc0;
    background: -webkit-linear-gradient(to right, #e8cbc0, #636fa4);
    background: linear-gradient(to right, #e8cbc0, #636fa4);
    min-height: 100vh;
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

</style>
<link rel="stylesheet" src="index.css">
<%@include file="../components/CSS.jsp"%>


</head>
<body>
<c:if test="${empty admin }" >
<c:redirect url="../ADMIN.jsp"></c:redirect>
</c:if>
<% 
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");

%>
	<%@include file="adminNav.jsp"%>
	
    
   

  
    
	<div id="de" class="container">
	<h4  class="text-center ">ACTIVE USERS</h4>
	<div class="row">
               			<c:if test="${not empty success }" >
<p class="text-center text-success text-fs-4">${success}</p>
<c:remove var="success" scope="session"/>
</c:if>
<c:if test="${ empty error }" >
<p class="text-center text-success text-fs-4">${error}</p>
<c:remove var="error" scope="session"/>
</c:if>
	<%
	profileDAO D=new profileDAO(DbConnect.getcon());
	List<Users>list1=D.GetAllUsers();
	for(Users u:list1)
	{%>
	
			<div class="col-md-3">
				<div class="card-container">

					<img class="round" src="../profileimages/<%=u.getImagename() %>"
						style="width: 150px; height: 150px;" alt="user" />
					<h3>
						<%=u.getFname() %>
					</h3>
					
					<p  >City: <%=u.getCity() %><br>
					Job:<%=u.getProfession() %><br> 
					EDUCATION:<%=u.getEducation() %><br>
					
					AGE:<%=u.getAge() %><br>
				    

					<a class="btn btn-outline-primary" href="adminViewProfile.jsp?ID=<%=u.getId()%>">Show More</a>
					<a class="btn btn-outline-primary" href="adminEditProfile.jsp?ID=<%=u.getId()%>">Edit Profile</a>
				</div>
		</div>
		
	
	
		
			
	<%}
	
	%>
		
	</div>
		</div>

 <script type="text/javascript">
$("#search").click(function(){
   

$("#de").hide();
	
});

</script>
</body>
</html>