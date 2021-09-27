<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Employee</title>
</head>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-expand-sm bg-light">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="logout">Logout</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="showEmployees">Show
						Employees </a></li>
				<li class="nav-item"><a class="nav-link"
					href="register">Employee Registration</a></li>
			</ul>
		</nav>
		<br> ${ msg }
	</div>
	
	<h2>-- EDIT EMPLOYEE --</h2>
	<div>
		<form action="editEmp" method="post" enctype="multipart/form-data">
		<div class="row">
				<div class="col-md-3">EmpId</div>
				<div class="col-md-9">
					<input type="hidden" name="employeeId" value="${empDto.employeeId}" />
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">EmpName</div>
				<div class="col-md-9">
					<input type="text" name="employeeName" value="${empDto.employeeName}" />
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">EmailId</div>
				<div class="col-md-9">
					<input type="text" name="emailId" value="${empDto.emailId}" />
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">Password</div>
				<div class="col-md-9">
					<input type="password" name="password" value="${empDto.password}" />
				</div>
			</div>
			<div class="row">
				<div class="col-md-3">Salary</div>
				<div class="col-md-9">
					<input type="text" name="salary" value="${empDto.salary}" />
				</div>
			</div>
			<div class="row">
						<div class="col-md-3">Gender</div>
						<div class="col-md-9">
							<select name="gender" id="gender" >
								<option>${empDto.gender}</option>
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
					<img src="data:image/jpeg;base64,${empDto.photo}" style="height: 120px;" class="zoom"/>
					<input type="file" name="file" class="form-control" style="height:40px; width: 250px;"/>
				</div>
			</div>

			<button type="submit">Update</button>
		</form>
	</div>

</body>
</html>