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
  background-color: ;
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

body {
    color: #000;
    overflow-x: hidden;
    height: 100%;
    background-color: #B0BEC5; 
}

h1{
	text-align: center;
	font-family: "Times New Roman", Times, serif;
}

.card0 {
    box-shadow: 0px 4px 8px 0px #757575;
    border-radius: 0px
}

.card2 {
    margin: 0px 40px
}

.logo {
    width: 200px;
    height: 100px;
    margin-top: 20px;
    margin-left: 35px
}

.image {
    width: 360px;
    height: 280px
}

.border-line {
    border-right: 1px solid #EEEEEE
}

.or {
    width: 10%;
    font-weight: bold
}

.text-sm {
    font-size: 14px !important
}

::placeholder {
    color: #BDBDBD;
    opacity: 1;
    font-weight: 300
}

:-ms-input-placeholder {
    color: #BDBDBD;
    font-weight: 300
}

::-ms-input-placeholder {
    color: #BDBDBD;
    font-weight: 300
}

input,
textarea {
    padding: 10px 12px 10px 12px;
    border: 1px solid lightgrey;
    border-radius: 2px;
    margin-bottom: 5px;
    margin-top: 2px;
    width: 100%;
    box-sizing: border-box;
    color: #2C3E50;
    font-size: 14px;
    letter-spacing: 1px
}

input:focus,
textarea:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    border: 1px solid #304FFE;
    outline-width: 0
}

button:focus {
    -moz-box-shadow: none !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
    outline-width: 0
}

a {
    color: inherit;
    cursor: pointer
}

.btn-blue {
    background-color: #1A237E;
    width: 150px;
    color: #fff;
    border-radius: 2px
}

.btn-blue:hover {
    background-color: #000;
    cursor: pointer
}

.bg-blue {
    color: #fff;
    background-color: #1A237E
}

 @media screen and (max-width: 991px) {
    .logo {
        margin-left: 0px
    }

    .image {
        width: 300px;
        height: 220px
    }

    .border-line {
        border-right: none
    }

    .card2 {
        border-top: 1px solid #EEEEEE !important;
        margin: 0px 15px
    }
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
		
		
	
	</div>
	<%-- <div class="alert">
		 <span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
			<h4>${InvalidMsg}</h4>
			<h3>${showAllMsg}</h3>
			<h3>${logoutMsg}</h3>
		</div> --%>
		
	<div class="container-fluid px-1 px-md-5 px-lg-1 px-xl-5 py-5 mx-auto">
    <div class="card card0 border-0">
        <div class="row d-flex">
            <div class="col-lg-6">
                <div class="card1 pb-5">
                    <div class="row px-3 justify-content-center mt-4 mb-5 border-line"> <img src="https://i.imgur.com/uNGdWHi.png" class="image"> </div>
                    
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
                        <div class="line"></div> <small class="or text-center"></small>
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
                    	<small class="font-weight-bold">Don't have an account? <a href="register" class="text-danger ">Register</a></small> </div>
                </div>
            </div>
        </div>
        <div class="bg-blue py-4">
            <div class="row px-3"> <small class="ml-4 ml-sm-5 mb-2">Copyright &copy; 2021. All rights reserved.</small>
                <div class="social-contact ml-4 ml-sm-auto"> <span class="fa fa-facebook mr-4 text-sm"></span> <span class="fa fa-google-plus mr-4 text-sm"></span> <span class="fa fa-linkedin mr-4 text-sm"></span> <span class="fa fa-twitter mr-4 mr-sm-5 text-sm"></span> </div>
            </div>
        </div>
    </div>
</div>
	
	
	
	
	
	
	<!-- <div class="container">

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
	</div> -->


</body>
</html>