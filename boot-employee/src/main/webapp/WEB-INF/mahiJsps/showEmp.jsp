<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%> --%>
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
<style>
.empDetails {
	padding: 10px 12px 10px 12px;
	border: 1px solid lightgrey;
	border-radius: 2px;
	margin-bottom: 5px;
	margin-top: 2px;
	width: 100%;
	box-sizing: border-box;
	color: #2C3E50;
	letter-spacing: 1px;
	text-align: center;
	font-family: "Times New Roman", Times, serif;
}
</style>
</head>
<body>
	<div class="container">
		<nav class="navbar navbar-expand-sm bg-light">
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="logout">Logout</a></li>

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
	<h3 class="empDetails">
		<button type="button" onclick="showEmployee()" class="btn btn-primary">Click
			here to see employee details.</button>
	</h3>

	<p id='showData'></p>
	<hr />
	<p id='msg'></p>

<!--  edit employee modal display code-->
	<div class="modal" id="editEmpPopup">
		<div class="modal-dialog">
			<div class="modal-content">
				<!-- Modal Header -->

				<form method="post" action="" enctype= "multipart/form-data" id = "Form">

					<div class="modal-header">
						<h4 class="modal-title">Edit Employee Detail</h4>
						<button type="button" onclick="closeModal()" class="close"
							data-dismiss="modal">&times;</button>
					</div>

					<!-- Modal body -->
					<div class="modal-body">
						<input type="hidden" name="employeeId" id="employeeId"
							class="form-control"> 
							Name <input type="text"
							name="employeeName" id="employeeName" class="form-control">
						<hr />
						Email <input type="text" name="emailId" id="emailId"
							class="form-control">
						<hr />
						Password <input type="text" name="password" id="password"
							class="form-control">
						<hr />


						Salary <input type="text" name="salary" id="salary"
							class="form-control">
						<hr />

						Gender <select name="gender" id="gender">
							<option value="male">Male</option>
							<option value="female">Female</option>
							<option value="other">Other</option>
						</select> 
						
						<hr/>
						Photo <img id="photo" src="" style="height: 60px;"/>
						<input type="file" name="file" id = "file" class="form-control" style="height:40px; width: 250px;"/>
						

					</div>
					<!-- Modal footer -->
					<div class="modal-footer">
						<button type="button" onclick="update()" class="btn btn-danger">Update
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>

	<script>
	
		function showEmployee(){
			var url = "/emp/employee";
			var p = fetch(url);
			p.then(response=> response.json()).then(empData=>{
				var html = "<table border='1|1' class='table table-striped'>";
				
				html += "<thead>"
				html += "<tr>"
				html+=  " <th>Id</th>"
				html+=  " <th>Name</th>"
				html+=  " <th>Email</th>"
				html+=  " <th>Password</th>"
				html+=  " <th>Salary</th>"
				html+=  "<th>Gender</th>"
				html+=  "<th>Photo</th>"
				html+=  "<th>Action</th>"
				html+=  "</tr>"
				html+=  "</thead>"
				
				for (var i = 0; i < empData.length; i++) {
						html+="<tr>";
				        html+="<td>"+empData[i].employeeId+"</td>";
				        html+="<td>"+empData[i].employeeName+"</td>";
				        html+="<td>"+empData[i].emailId+"</td>";
				        html+="<td>"+empData[i].password+"</td>";
				        html+="<td>"+empData[i].salary+"</td>";
				        html+="<td>"+empData[i].gender+"</td>";
				        //html+="<td> <img id = 'imgdata' src = 'data:image/jpeg;base64,"+empData[i].photo+"'style='height: 120px;' class='zoom'/></td>";
				        html+='<td><img src="data:image/jpeg;base64,'+empData[i].photo+'"style="height: 120px;" class="zoom"/></td>';
				        html+= '<td> <button type = "button" onclick="deleteRow('+ empData[i].employeeId + ');"  class = "btn btn-danger"> D </button> <button type = "button" onclick="editRow('+ empData[i].employeeId + ');"  class = "btn btn-primary"> E </button></td>';
				        html+="</tr>";
		             	}
					html+="</table>";
	            document.getElementById("showData").innerHTML = html;
	            //document.getElementById('showData').style.visibility = "visible";
	 		})
		}
		
		function deleteRow(id){
			var url = "/emp/employee/"+id;
			var p = fetch(url, {method: 'DELETE'})
			p.then(response =>response.json()).then(resp=>{
				showEmployee();
 				document.getElementById("msg").innerHTML="Deletion Successful";	
 		})
		}
		
		function editRow(id){
			var url = "/emp/employee/"+id;
	 		var p = fetch(url, {method: 'GET'});
	 		
	 		p.then(response =>response.json()).then(empDatabyId=>{
	 			// try by jquery
	 			document.getElementById("employeeId").value= empDatabyId.employeeId;
	 			document.getElementById("employeeName").value= empDatabyId.employeeName;
	 			document.getElementById("emailId").value= empDatabyId.emailId;
	 			document.getElementById("password").value= empDatabyId.password;
	 			document.getElementById("salary").value= empDatabyId.salary;
	 			document.getElementById("gender").value= empDatabyId.gender;
	 			$("#photo").attr("src",'/employee/photo?id=' + empDatabyId.employeeId);
	 			
	 			
	 			//show Modal javascript
	 			document.getElementById("editEmpPopup").style.display = "block";
	 			
	 			//$("#editBranchPopup").modal("show"); --jquery
	 			
	 		})
		}
		
		function closeModal(){
	 		document.getElementById("editEmpPopup").style.display = "none";
	 	}
		
	    function update(){
	    	var form = $("#Form");
	    	var fd = new FormData(form[0]);
	    	var files = $("#file")[0].files[0];
	    	fd.append('file', files);
	    	
	    	$.ajax({ 
	    		type: "POST",
	            url: "/emp/updateEmployees",
	            //dataType: 'json', //not sure but works for me without this
	            data: fd,
	            contentType: false, //this is requireded please see answers above
	            processData: false, //this is requireded please see answers above
	            //cache: false, //not sure but works for me without this
	            
	             success: function( response){
	            	alert("Uploaded");
	            	//document.getElementById("editEmpPopup").style.display = "none";
	            	$("#editEmpPopup").modal("hide");// write jquery instead
	            	showEmployee();
	            	
	            }, 
	          
	            error:function( response){
	            	alert("Not updated!!"); 
	            	//document.getElementById("editEmpPopup").style.display = "none";
	            	$("#editEmpPopup").modal("hide");
	            
	            	}
	        });
	    }
	    		
	    
	    	
			/* var data = {employeeId:$("#employeeId").val(), 
					employeeName: $("#employeeName").val(), 
					emailId: $("#emailId").val(), 
					password: $("#password").val(),
					salary: $("#salary").val(),
					gender: $("#gender").val(),
					photo: $("#file")[0].files
					} */
					
	 		/* var url = "/emp/updateEmployees";
	 		fetch(url, {
	 		   method: 'POST', // or 'PUT'
	 		   headers: {
	 		     'Content-Type': 'application/json',
	 		   },
	 		   body: JSON.stringify(data),
	 		 })
	 		 .then(response => {  console.log("within first THEN===============");
	 			                  console.log("printing response===============");
	 			                  console.log(response);
	 		                      return response.text();
	 		                    } )
	 		 .then(data => {
	 		   /* console.log('Success:', data); */
	 		    //console.log("within second THEN===============");
	 			//$("#editBranchPopup").modal("hide"); --jQuery
	 			//document.getElementById("editEmpPopup").style.display = "none";
	 			//showEmployee();
	 		   
	 		 //})
	 		 //.catch((error) => {
	 			// console.log("within catch __ERROR===============");
	 		   //console.error('Error:', error);
	 			// console.log('Error IS : ${error}');
	 		// });  
	 		
	 		
	 		// console.log("this line can even execute before ajax call.......")
	 	//} */
	    
		
	 	
	
</script>


</body>
</html>