<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Registration</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
<link href="css/empRegistration.css" rel="stylesheet" type="text/css" />
 
</head>
<body >
	<div class="container" >
		<nav class="navbar navbar-expand-sm bg-light justify-content-center" >
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="login">Login</a></li>
				<!-- <li class="nav-item"><a class="nav-link" href="showEmployees">Show Employees </a></li> -->
				<li class="nav-item"><a class="nav-link" href="register">Employee Registration</a></li>
			</ul>
		</nav>
		<br>
	</div>
	
	<div class="d-flex justify-content-center align-items-center container ">
		<div class="panel panel-primary">
			<div class="panel panel-heading">
				<div class="row">
					<h1 >Welcome to Registration</h1>
				</div>
				<div class="card1 pb-5">
                    <div class="row px-3 justify-content-center mt-4 mb-5 border-line"> <img src="https://i.imgur.com/uNGdWHi.png" class="image"> </div>
                </div>
			
			</div>
			<div class="panel panel-body">
				<form action="register" method="post" enctype="multipart/form-data" >
					<div class="row">
						<div class="col-md-3">Name</div>
						<div class="col-md-9">
							<input type="text" name="employeeName" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">EmailId</div>
						<div class="col-md-9">
							<input type="text" name="emailId" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">Password</div>
						<div class="col-md-9">
							<input type="password" name="password" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">Salary</div>
						<div class="col-md-9">
							<input type="text" name="salary" />
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">Gender</div>
						<div class="col-md-9">
							<select name="gender" id="gender">
								<option value="male">Male</option>
								<option value="female">Female</option>
								<option value="other">Other</option>
							</select> 
							<br> <br>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3">Photo</div>
						<div class="col-md-9">
						<input type="file" name="file" class="form-control" style="height:40px; width: 250px;"/>
					</div>
					</div>
					<button type="submit">Registration</button>
				</form>
			</div>

		</div>
	</div>
</body>
</html>