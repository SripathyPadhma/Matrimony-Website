<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>LOGIN</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css"
	integrity="sha512-SzlrxWUlpfuzQ+pcUCosxcglQRNAq/DZjVsC0lE40xsADsfeQoEypE+enwcOiGjk/bSuGGKHEyjSoQ1zVisanQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<style>
@import
	url('https://fonts.googleapis.com/css?family=Abel|Abril+Fatface|Alegreya|Arima+Madurai|Dancing+Script|Dosis|Merriweather|Oleo+Script|Overlock|PT+Serif|Pacifico|Playball|Playfair+Display|Share|Unica+One|Vibur')
	;
/* End Fonts */
/* Start Global rules */
* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
}
/* End Global rules */

/* Start body rules */
body {
	background-image: linear-gradient(-225deg, rgb(182, 247, 61) 50%,
		#4ff185 50%);
	background-image: linear-gradient(to top, #62f787 0%, #c6e948 100%);

	/*



    font-family: 'Vibur', cursive;
/*   the main font */
	/*  font-family: 'Abel', sans-serif;
opacity: .95;

/* background-image: linear-gradient(to top, #d9afd9 0%, #97d9e1 100%); */
}

/* |||||||||||||||||||||||||||||||||||||||||||||*/
/* //////////////////////////////////////////// */

/* End body rules */

/* Start form  attributes */
form {
	width: 450px;
	min-height: 500px;
	height: auto;
	border-radius: 5px;
	margin: 10% auto;
	box-shadow: 0 9px 50px hsla(20, 67%, 75%, 0.31);
	padding: 2%;
	background-image: linear-gradient(-225deg, rgb(182, 247, 61) 50%,
		#4ff185 50%);
}
/* form Container */
form .con {
	display: -webkit-flex;
	display: flex;
	-webkit-justify-content: space-around;
	justify-content: space-around;
	-webkit-flex-wrap: wrap;
	flex-wrap: wrap;
	margin: 0 auto;
}

/* the header form form */
header {
	margin: 2% auto 10% auto;
	text-align: center;
}
/* Login title form form */
header h2 {
	font-size: 250%;
	font-family: 'Playfair Display', serif;
	color: #3e403f;
}
/*  A welcome message or an explanation of the login form */
header p {
	letter-spacing: 0.05em;
}

/* //////////////////////////////////////////// */
/* //////////////////////////////////////////// */
.input-item {
	background: #fff;
	color: #333;
	padding: 13px 29px 16px 9px;
	border-radius: 5px 0px 0px 5px;
}

/* Show/hide password Font Icon */
#eye {
	background: #fff;
	color: #333;
	margin: 7px 0 0 0;
	margin-left: -20px;
	padding: 13px 9px 21px 0px;
	border-radius: 0px 5px 5px 0px;
	float: right;
	position: relative;
	right: 1%;
	top: -.2%;
	z-index: 5;
	cursor: pointer;
}
/* inputs form  */
input[class="form-input"] {
	width: 240px;
	height: 50px;
	margin-top: 2%;
	padding: 15px;
	font-size: 16px;
	font-family: 'Abel', sans-serif;
	color: #5E6472;
	outline: none;
	border: none;
	border-radius: 0px 5px 5px 0px;
	transition: 0.2s linear;
}

input[id="txt-input"] {
	width: 250px;
}
/* focus  */
input:focus {
	transform: translateX(-2px);
	border-radius: 5px;
}

/* //////////////////////////////////////////// */
/* //////////////////////////////////////////// */

/* input[type="text"] {min-width: 250px;} */
/* buttons  */
button {
	display: inline-block;
	color: #252537;
	width: 280px;
	height: 50px;
	padding: 0 20px;
	background: #fff;
	border-radius: 5px;
	outline: none;
	border: none;
	cursor: pointer;
	text-align: center;
	transition: all 0.2s linear;
	margin: 7% auto;
	letter-spacing: 0.05em;
}
/* Submits */
.submits {
	width: 48%;
	display: inline-block;
	float: left;
	margin-left: 2%;
}

/*       Forgot Password button FAF3DD  */
.frgt-pass {
	background: transparent;
}

/*     Sign Up button  */
.sign-up {
	background: #B8F2E6;
}

/* buttons hover */
button:hover {
	transform: translatey(3px);
	box-shadow: none;
}

/* buttons hover Animation */
button:hover {
	animation: ani9 0.4s ease-in-out infinite alternate;
}

@
keyframes ani9 { 0% {
	transform: translateY(3px);
}
100


%
{
transform


:


translateY
(


5px


)
;


}
}
</style>
<%@include file="components/CSS.jsp"%>
<link rel="stylesheet" href="index.css">
</head>

<body
	style="background-image: linear-gradient(to top, #62f787 0%, #c6e948 100%);">
	<div>
		<%@include file="NAVBAR.jsp"%>
	</div>
	<div class="overlay">
		<!-- LOGN IN FORM by Omar Dsoky -->
		<form action="admin" method="post">
			<!--   con = Container  for items in the form-->
			<div class="con">
				<!--     Start  header Content  -->
				<header class="head-form">
					<h2>ADMIN</h2>

					<c:if test="${not empty success }">
						<p class="text-center text-success text-fs-4">${success}</p>
						<c:remove var="success" scope="session" />
					</c:if>
					<c:if test="${ empty error }">
						<p class="text-center text-success text-fs-4">${error}</p>
						<c:remove var="error" scope="session" />
					</c:if>
					<!--     A welcome message or an explanation of the login form -->

				</header>
				<!--     End  header Content  -->
				<br>
				<div class="field-set ">

					<!--   user name -->
					<span class="input-item"> <i class="fa fa-user-circle"></i>
					</span>
					<!--   user name Input-->
					<input style="margin-left: 1px;" class="form-input" id="txt-input"
						type="text" placeholder="@UserName" required name="email">
					<br>

					<!--   Password -->

					<span class="input-item"> <i class="fa fa-key"></i>
					</span>
					<!--   Password Input-->
					<input style="margin-left: 1px;" class="form-input" type="password"
						placeholder="Password" id="pwd" name="password" required>

					<!--      Show/hide password  -->
					<span> <i class="fa fa-eye " aria-hidden="true" id="eye"></i>
					</span> <br>
					<!--        buttons -->
					<!--      button LogIn -->
					<button style="margin-top: 30px; width: 300px;" type=submit
						class="log-in">Log In</button>
				</div>

				<!--   other buttons -->
				<div class="other">
					<!--      Forgot Password button-->
					<!-- 	<button style="margin-top:9px-->
					<!--	"  class="btn submits frgt-pass">Forgot Password</button>-->
					<!--     Sign Up button -->
					<!-- 	     <a  style="margin-top: 27px;" href="REGISTER.jsp" class=" btn btn-primary"> Signup    <i class="fa fa-user-plus" aria-hidden="true"></i></a> -->
					<!--      End Other the Division -->
				</div>

				<!--   End Conrainer  -->
			</div>

			<!-- End Form -->
		</form>
	</div>
	<script>
		function show() {
			var p = document.getElementById('pwd');
			p.setAttribute('type', 'text');
		}

		function hide() {
			var p = document.getElementById('pwd');
			p.setAttribute('type', 'password');
		}

		var pwShown = 0;

		document.getElementById("eye").addEventListener("click", function() {
			if (pwShown == 0) {
				pwShown = 1;
				show();
			} else {
				pwShown = 0;
				hide();
			}
		}, false);
	</script>

</body>
</html>