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

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
	<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
	
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
	crossorigin="anonymous"></script>
	   <link rel="stylesheet" href="index.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css"
        integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="indexDuplicate.css" />
<link rel="stylesheet" href="index.css">
<style type="text/css">
body {
    background: #e8cbc0;
    background: -webkit-linear-gradient(to right, #e8cbc0, #636fa4);
    background: linear-gradient(to right, #e8cbc0, #636fa4);
    min-height: 100vh;
}

.social-link {
    width: 30px;
    height: 30px;
    border: 1px solid #ddd;
    display: flex;
    align-items: center;
    justify-content: center;
    color: #666;
    border-radius: 50%;
    transition: all 0.3s;
    font-size: 0.9rem;
}

.social-link:hover, .social-link:focus {
    background: #ddd;
    text-decoration: none;
    color: #555;
}

</style>
</head>
<body>
<%@include file="adminNav.jsp"%>

		
<c:if test="${empty admin }" >
<c:redirect url="../ADMIN.jsp"></c:redirect>
</c:if>
<% 
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");

%>
<%
profileDAO dao=new profileDAO(DbConnect.getcon());
COUNT c=dao.getActiveCount();
COUNT d=dao.getInactiveCount();
%>
<div class="container p-5">
    <div class="row text-center">

        <!-- Team item -->
        <div class="col-xl-3 col-sm-6 mb-5">
        <a style="text-decoration: none"href="ActiveUsers.jsp">
            <div class="bg-white rounded shadow-sm py-5 px-4"><i class="fa-regular fa-user fa-beat fa-4x"></i>
                <h5 class="p-5">ACTIVE USERS<br> <span class="text-success" ><%=c.getActiveusers() %></span> </h5>
              
           </div> </a>
        </div><!-- End -->

        <!-- Team item -->
        <div class="col-xl-3 col-sm-6 mb-5">
          <a style="text-decoration: none"href="pendingRequest.jsp">
            <div class="bg-white rounded shadow-sm py-5 px-4"><i class="fa-solid fa-address-card fa-beat fa-4x"></i>
                <h5 class="p-5">PENDING REQUEST <br> <span class="text-danger " ><%=d.getInactiveusers() %></span></h5>
              
            </div> </a>
        </div><!--- End -->

        <!-- Team item -->
     <div class="col-xl-3 col-sm-6 mb-5">
       <a style="text-decoration: none"href="imageUpload.jsp">
            <div  class="bg-white rounded shadow-sm py-5 px-4"><i class="fa-regular fa-image fa-beat fa-4x"></i>
                <h5 class="p-5"><br> <span   style=""  >ADD GALLERY</span></h5>
              
            </div> </a>
        </div><!--

        <!-- Team item -->
         <div class="col-xl-3 col-sm-6 mb-5">
           <a style="text-decoration: none"href="ADMINREGISTER.jsp">
            <div class="bg-white rounded shadow-sm py-5 px-4"><i class="fa-solid fa-user-plus fa-beat fa-4x"></i>
                <h5 class="p-5"> <br> <span >REGISTER USER</span></h5>
              
            </div> </a>
        </div><!-- End -->
    </div>
</div>


</body>
</html>