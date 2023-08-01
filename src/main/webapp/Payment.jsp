<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Payment</title>
<%@include file="components/CSS.jsp"%>
<link rel="stylesheet" href="components/index.css">
<style>
body {
	background: linear-gradient(-225deg, rgb(182, 247, 61) 50%, #4ff185 50%);
	background: linear-gradient(to top, #62f787 0%, #c6e948 100%);
	background-size: cover;
}
</style>


</head>
<body>
	<%@include file="NAVBAR.jsp"%>
	<section>
		<div class="container" id="payment">
			<h2 class="text-center m-4">PAYMENT OPTIONS</h2>
				<div class="row">
			
					<div class="col-md-6">
						<h3 class="text-center">
							Scan<br><br> <img src="Photos/payment.png"
								style="width: 250px; height: 300px;">
						</h3>

					</div>
					<div class="col-md-6">
						<h3 class="text-center">Bank Details</h3>
						<p class="pt-3">
						<!--  <ul class="">
							<li><b>Bank name:</b> Karur Vysya Bank</li>
							<li><b>Account Number:</b> 1263135000013715</li>
							<li><b>Account Name:</b> Mugappair Mudhaliyar Sangam</li>
							<li><b>Branch:</b> Mugappair East</li>
							<li><b>IFSC code:</b> KVBL0001263</li>
						</ul>-->
						  <ul class="">
							<li><b>Bank name:</b> XXXX Bank</li>
							<li><b>Account Number:</b> XXXXXX</li>
							<li><b>Account Name:</b> XXXXX</li>
							<li><b>Branch:</b> XXXXX</li>
							<li><b>IFSC code:</b> XXXXX</li>
						</ul>
						</p>
					</div>
				
			</div>


		</div>
	</section>

<%@include file="FOOTER.jsp"%>
</body>
</html>