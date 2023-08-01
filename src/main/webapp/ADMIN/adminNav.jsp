<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav
	class="navbar navbar-expand-lg  navbar-dark bg-primary text-uppercase  ">
	<div class="container-fluid">
		<a class="navbar-brand " href="INDEX.jsp"> </a>
		  <img class="mx-2" style="height:50px;border-radius:25px;width:50px" alt="LOGO" src="../Photos/79725_512.webp">
              <img class="mx-2" style="height:50px;border-radius:50px;width:50px" alt="LOGO" src="../Photos/Picsart_23-05-26_15-54-24-862.jpg">
           
            <img class="mx-2" style="height:50px;border-radius:25px;" alt="LOGO" src="../Photos/Picsart_23-05-26_14-20-47-791.jpg">
			<img class="mx-2" style="height:50px;border-radius:29px;width:50px" alt="LOGO" src="../Photos/Picsart_23-05-26_14-19-04-527.jpg">
			<img class="mx-2" style="height:50px;border-radius:29px;width:50px" alt="LOGO" src="../Photos/IMG-20230526-WA0001.jpg">
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarNavAltMarkup"
			aria-controls="navbarNavAltMarkup" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNavAltMarkup">
			<div class="navbar-nav mx-auto ">
		
				<a class="nav-link active px-lg-5 rounded" aria-current="page"href="ADMINDASHBOARD.jsp">Home <i class="fa-sharp fa-solid fa-house fa-beat"></i></a>
			    <a class="nav-link active px-lg-5 rounded" aria-current="page"href="ActiveUsers.jsp">Active Users<i class=" mx-2 fa-success fa-solid fa-circle fa-beat"></i></a>
							    <a class="nav-link active px-lg-5 rounded" aria-current="page"href="pendingRequest.jsp">Pending Request<i class=" mx-2 fa-success fa-solid fa-circle fa-beat"></i></a>	


			</div>
				<a class="btn btn-outline-light" href="../adminLogout">LOGOUT</a>
		
		</div>
		
	</div>
	
</nav>
