<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Information</title>
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
				<li class="nav-item"><a class="nav-link" href="register">Employee
						Registration</a></li>
				<div class="search">
					<form action="search" method="get">
						<input type="text" placeholder="Search.." name="name">
						<button type="submit">GO</button>
					</form>
				</div>
			</ul>
		</nav>
		
		<br>
		
	</div>
	
	<div class="container">
		<h1>-- Employee Data --</h1>
		<div><img  src="images/emp.png" class="img-thumbnail" width="200" height="200"></div>
		<br><br>
		<table class="table">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Email<a href="asc"><button type="button"
								class="btn btn-primary">ASC</button></a> <a href="dsc"><button
								type="button" class="btn btn-primary">DSC</button></a>
					</th>
					<th>Password</th>
					<th>Salary</th>
					<th>Gender</th>
					<th>Photo</th>
					<th>Action</th>
				</tr>
			</thead>

			<tbody>
			<c:forEach items = "${empDtolist}" var="employee">
					<tr>
						<td>${employee.employeeId}</td>
						<td>${employee.employeeName}</td>
						<td>${employee.emailId}</td>
						<td>${employee.password}</td>
						<td>${employee.salary}</td>
						<td>${employee.gender}</td>
						<td><img src="data:image/jpeg;base64,${employee.photo}" style="height: 120px;" class="zoom"/></td>

						<td><a
							href="showEditEmployee?employeeId=${employee.employeeId}">
								<button type="button" class="btn btn-primary">E</button>
						</a> <a href="deleteEmployee?employeeId=${employee.employeeId}">
								<button type="button" class="btn btn-danger">D</button>
						</a></td>


					</tr>
				</c:forEach>

			</tbody>
		</table>

	</div>

</body>
</html>