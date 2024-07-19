<%@page import="com.Model.StudentRegister"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@ include file="All_Contents/allLinks.jsp"%>

<style>
body {
	background-color: #cb9dcf;
}

.div1 {
	border: 1px solid white;
	padding: 20px;
}

h1 {
	text-align: center;
}

.border {
	border: 3px solid white;
	padding-left: 10px;
	padding-right: 10px;
	padding-top: 10px;
	border-radius:10px;
	
	
}

@import
	url('https://fonts.googleapis.com/css2?family=Madimi+One&display=swap')
	;

h3 {
	text-align: center;
	font-family: "Oswald", sans-serif;
	font-optical-sizing: auto;
	font-weight: <weight>;
	font-style: normal;
}
.btn1{
	background-color: #b06035;
}
.btn2{
	background-color:#d94f25;
}
.btn3{
	background-color:#ed9961;
}
.shover:hover{
	background-color: #a0d2ff;
	border-radius:10px;
}
.thover:hover{
	background-color: #ffc107;
	border-radius:10px;
}
.ahover:hover{
	 background-color: #ff8080;
	 border-radius:10px;
}
</style>
</head>

<%@ include file="All_Contents/alertt.jsp"%>
<body>
	<section class="container">


		<div class="text-center">
			<img src="All_Contents/IMG/Attend1.png" width="450px;">
		</div>
		<div class="row m-0 mb-0 ">

			
			<div class="col-md-4 border mt-0 shover">
				<form action="StudentLoginServlet" method="get" id="myForm2">
					<h3>Student Login</h3>
					<div class="form-group">
						<label for="exampleInputEmail1">Student Email</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" name="email" required>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input
							type="password" class="form-control" id="myInput2" name="pass" required> <input
							type="checkbox" onclick="myFunction2()" > Show Password
					</div>

					<div class="text-center">
						<button type="submit" class="btn btn-success  ml-3 mt-2 btn1">Login</button>
						<button type="button" class="btn btn-danger  ml-3 mt-2 btn2" onclick="clearForm2()">Clear</button>
						<a href="ChangePassword.jsp"><button type="button" class="btn btn-primary  ml-3 mt-2 btn3">Forgot Password</button></a>
					</div>
				</form>
				<p class="text-center mt-2"><br><br>
					<Strong>Student login with Username And Password and View
						Reports</Strong>
				</p>

			</div>
			<div class="col-md-4 border thover">
				<form action="TeacherLoginServlet" method="get" id="myForm1">
					<h3>Teacher Login</h3>
					<div class="form-group">
						<label for="exampleInputEmail1">Teacher Email</label> <input
							type="email" class="form-control" id="exampleInputEmail1"
							aria-describedby="emailHelp" name="email" required>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> <input
							type="password" class="form-control" id="myInput1" name="pass" required> <input
							type="checkbox" onclick="myFunction1()"> Show Password
					</div>

					<div class="text-center">
						<button type="submit" class="btn btn-success  ml-3 mt-2 btn1">Login</button>
						<button type="button" class="btn btn-danger  ml-3 mt-2 btn2" onclick="clearForm1()">Clear</button>
						<a href="ChangePassword.jsp"><button type="button" class="btn btn-primary  ml-3 mt-2 btn3">Forgot Password</button></a>
					</div>
				</form>
				<p class="text-center mt-2"><br><br>
					<Strong>Teacher can add Student And Take Attendance</Strong>
				</p>
			</div>
			<div class="col-md-4 border ahover">
				<form action="AdminLogin" method="get" id="myForm3">
					<h3>Admin Login</h3>
					<div class="form-group">
						<label for="exampleInputEmail1">Admin Email</label> 
						<input
							type="email" class="form-control" name="aEmail"  id="exampleInputEmail1"
							aria-describedby="emailHelp" required>
					</div>
					<div class="form-group">
						<label for="exampleInputPassword1">Password</label> 
						<input
							type="password" class="form-control" name="aPass" id="myInput3" required> <input
							type="checkbox" onclick="myFunction3()"> Show Password
					</div>

					<div class="text-center">
						<button type="submit" class="btn btn-success  ml-3 mt-2 btn1">Login</button>
						<button type="button" class="btn btn-danger  ml-3 mt-2 btn2" onclick="clearForm3()">Clear</button>
						<a href="ChangePassword.jsp"><button type="button" class="btn btn-primary  ml-3 mt-2 btn3">Forgot Password</button></a>
						<a href="AdminRegister.jsp"><button type="button" class="btn btn-success  ml-3 mt-2 btn1">Register</button></a>
					</div>
				</form>
				<p class="text-center mt-2">
					<Strong>Admin can add Student and Teacher And also Generate
						Attendance Report</Strong>
				</p>
	
			</div>
		</div>

	</section>




	<script>
		function myFunction1() {
			var x = document.getElementById("myInput1");
			if (x.type === "password") {
				x.type = "text";
			} else {
				x.type = "password";
			}
		}
		function myFunction2() {
			var x = document.getElementById("myInput2");
			if (x.type === "password") {
				x.type = "text";
			} else {
				x.type = "password";
			}
		}
		function myFunction3() {
			var x = document.getElementById("myInput3");
			if (x.type === "password") {
				x.type = "text";
			} else {
				x.type = "password";
			}
		}
		
		<!--These is Part of Clear Form Data-->
		
		function clearForm1() {
	        document.getElementById("myForm1").reset();
	    }
		function clearForm2() {
	        document.getElementById("myForm2").reset();
	    }
		function clearForm3() {
	        document.getElementById("myForm3").reset();
	    }
	</script>
	




</body>
</html>