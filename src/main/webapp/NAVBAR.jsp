
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page isELIgnored="false"%>
<nav style="background-color: rgb(70, 143, 23); height: 60px"
	class="navbar navbar-expand-lg navbar-dark ">
	<div class="container-fluid">

		<a class="navbar-brand" href="INDEX.jsp"> <img class="mx-2"
			style="height: 50px; border-radius: 25px; width: 50px" alt="LOGO"
			src="Photos/79725_512.webp"> <img class="mx-2"
			style="height: 50px; border-radius: 50px; width: 50px" alt="LOGO"
			src="Photos/Picsart_23-05-26_15-54-24-862.jpg"> <img class="mx-2" style="height:50px;border-radius:25px;width:50px" alt="LOGO" src="Photos/kiru.jpg"><img
			class="mx-2" style="height: 50px; border-radius: 25px;" alt="LOGO"
			src="Photos/Picsart_23-05-26_14-20-47-791.jpg"> <img
			class="mx-2" style="height: 50px; border-radius: 29px; width: 50px"
			alt="LOGO" src="Photos/Picsart_23-05-26_14-19-04-527.jpg"> <img
			class="mx-2" style="height: 50px; border-radius: 29px; width: 50px"
			alt="LOGO" src="Photos/IMG-20230526-WA0001.jpg">
		</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav ms-auto mb-2 mb-lg-0">
				<c:if test="${empty userObj }">
					<a class="nav-link active activepx-lg-5 rounded" href="LOGIN.jsp">LOGIN</a>
					<a class="nav-link active px-lg-5 rounded" aria-current="page"
						href="INDEX.jsp">HOME</a>

					<a class="nav-link active px-lg-5 rounded" href="Terms.jsp">TERMS</a>
					<a class="nav-link active px-lg-5 rounded" href="Payment.jsp">PAYMENT
					</a>
					<a class="nav-link active activepx-lg-5 rounded"
						href="Contact.jsp">CONTACT</a>


				</c:if>
			</ul>


		</div>

	</div>
</nav>










