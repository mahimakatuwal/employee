<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link href="css/loginStyle.css" rel="stylesheet" type="text/css" />
<meta name="viewport"content="width=device-width, initial-scale=1.0">
<meta name="viewport"content="height=device-height, initial-scale=1.0">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

<link href="css/loginStyle.css" rel="stylesheet" type="text/css" />
</head>
<!-- <style>
 body {background-color: #B0BEC5;}
</style> -->
<body>
	<div class="container">
		<nav class="navbar navbar-expand-sm bg-light">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="showEmployees">Show
						Employees </a></li>
				<li class="nav-item"><a class="nav-link" href="register">Employee
						Registration</a></li>
			</ul>
		</nav>
		<br>
	</div>

	<div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
		<div class="card card0 border-0">
			<div class="row d-flex">
				<div class="col-lg-6">
					<div class="card1 pb-5">
						<div class="row px-3 justify-content-center mt-4 mb-5 border-line">
							<img src="https://i.imgur.com/uNGdWHi.png" class="image">
						</div>

						<h1>WELCOME</h1>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="card2 card border-0 px-4 py-5">
						<div class="row mb-4 px-3">
							<h6 class="mb-0 mr-4 mt-2"></h6>
							<div class="facebook text-center mr-3">
								<div class="fa fa-facebook"></div>
							</div>
							<div class="twitter text-center mr-3">
								<div class="fa fa-twitter"></div>
							</div>
							<div class="linkedin text-center mr-3">
								<div class="fa fa-linkedin"></div>
							</div>
						</div>
						<div class="row px-3 mb-4">
							<div class="line"></div>
							<small class="or text-center"></small>
							<div class="line"></div>
						</div>
						<form action="login" method="post">
							<div class="row px-3">
								<label class="mb-1">
									<h6 class="mb-0 text-sm">Email Address</h6>
								</label> <input class="mb-4" type="text" name="emailId"
									placeholder="Enter a valid email address">
							</div>
							<div class="row px-3">
								<label class="mb-1">
									<h6 class="mb-0 text-sm">Password</h6>
								</label> <input type="password" name="password"
									placeholder="Enter password">
							</div>
							<div class="row px-3 mb-4">

								<a href="#" class="ml-auto mb-0 text-sm">Forgot Password?</a>
							</div>
							<div class="row mb-3 px-3">
								<button type="submit" class="btn btn-blue text-center">Login</button>
							</div>
						</form>
						<div class="row mb-4 px-3">
							<small class="font-weight-bold">Don't have an account? <a
								href="register" class="text-danger ">Register</a></small>
						</div>
					</div>
				</div>
			</div>
			<div class="bg-blue py-4">
				<div class="row px-3">
					<small class="ml-4 ml-sm-5 mb-2">Copyright &copy; 2021. All
						rights reserved.</small>
					<div class="social-contact ml-4 ml-sm-auto">
						<span class="fa fa-facebook mr-4 text-sm"></span> <span
							class="fa fa-google-plus mr-4 text-sm"></span> <span
							class="fa fa-linkedin mr-4 text-sm"></span> <span
							class="fa fa-twitter mr-4 mr-sm-5 text-sm"></span>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>