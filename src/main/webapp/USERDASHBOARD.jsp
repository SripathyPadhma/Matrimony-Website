<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" src="index.css">
<%@include file="components/CSS.jsp"%>
<style>
body {
    background: #e8cbc0;
    background: -webkit-linear-gradient(to right, #e8cbc0, #636fa4);
    background: linear-gradient(to right, #e8cbc0, #636fa4);
    min-height: 100vh;
}



</style>
</head>
<body>
<%@include file="UNAVBAR.jsp"%>
<c:if test="${empty userobj }" >
<c:redirect url="LOGIN.jsp"></c:redirect>
</c:if>
<% 
response.setHeader("cache-control", "no-cache,no-store,must-revalidate");

%>
		<div class="p-5">
					<div style="	background-image: linear-gradient(-225deg, rgb(92, 184, 50) 50%,
		#ffffff 50%);" class="card">
						<div class="card-body">
							<div class="d-flex flex-column align-items-center text-center">
								<img style="height:300px;width:250px" src="profileimages/${userobj.imagename }" alt="Admin" class="rounded-circle p-1 bg-success" >
								<div class="mt-3">
									<h4 class="text-uppercase"> Welcome!  ${userobj.fname }</h4>
									<p class=" font-size-sm ">AGE:${userobj.age } </p>
									<p class="  text-uppercase">${userobj.profession }</p>
									
									<p class=" font-size-sm text-uppercase">${userobj.city }</p>
									
								</div>
							</div>
							
						</div>
					</div>
				</div>
</body>
</html>