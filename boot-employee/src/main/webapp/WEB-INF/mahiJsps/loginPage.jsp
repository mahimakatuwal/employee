<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	
<style>
.alert {
  padding: 20px;
  background-color: #f44336;
  color: white;}
  
  .closebtn {
  margin-left: 15px;
  color: white;
  font-weight: bold;
  float: right;
  font-size: 22px;
  line-height: 20px;
  cursor: pointer;
  transition: 0.3s;
}

.closebtn:hover {
  color: black;
}
</style>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-expand-sm bg-light">
			<ul class="navbar-nav">
				<!-- <li class="nav-item"><a class="nav-link" href="logout">Logout</a>
				</li> -->
				<li class="nav-item"><a class="nav-link" href="showEmployees">Show
						Employees </a></li>
				<li class="nav-item"><a class="nav-link" href="register">Employee
						Registration</a></li>
			</ul>
		</nav>
		<br>
		<div class="alert">
		 <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
			<h4>${InvalidMsg}</h4>
			<h3>${showAllMsg}</h3>
			<h3>${logoutMsg}</h3>
		</div>
		
		
	
	</div>
	<div class="container">

		<div class="panel panel-primary">
			<div class="panel panel-heading">
				<div class="row">
					<h3> Login here </h3>
				</div>
				<div><img  src="images/login.png" class="img-thumbnail" width="200" height="200"></div>
			</div>
			<div class="panel panel-body">
				<form action="login" method="post">
					
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
					<button type="submit">Login</button>
				</form>
			</div>

		</div>
	</div>


</body>
</html>