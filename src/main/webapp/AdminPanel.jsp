<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Panel</title>
<%@ include file="All_Contents/allLinks.jsp"%>

<style>
.h1 {
	text-align: center;
	font-size: 1.5rem;
	margin-bottom: 2rem;
}

body {
	background-color: #cb9dcf;
}

section {
	border: 3px solid black;
	margin-top: 10%; td { text-align : center;
	padding: 10px;
}

.t1 {
	margin-top: 100px;
}

.b {
	padding-left: 10px;
	padding-right: 10px;
}

.b1 {
	padding-left: 25px;
	padding-right: 25px;
}

.b2 {
	padding-left: 42px;
	padding-right: 42px;
}

.button:hover {
	background-color: #3e8e41;
}

.button:active {
	background-color: #3e8e41;
	box-shadow: 0 5px #666;
	transform: translateY(4px);
}
.m{
	padding-left:30px;
	padding-right:30px;
	margin-bottom:20px;
}
.hov:hover{
	background-color:green;
}
.b3{
	padding-left:39px;
	padding-right:39px;
}
</style>
</head>
<body>
	<%@ include file="All_Contents/alertt.jsp" %>
	<section class="container">
	<h1 class="text-center">Admin Panel</h1>
		<div class="text-right m-2">
		<%@ include file="All_Contents/AdminProfile.jsp" %>
		
	</div>
		
		<div class="row m-0">
			<div class="col-md-6">


				<form action="Logout" method="get">
				<table style="width: 100%;">
					<tr>
						<td><a href="AddStudent.jsp"><button type="button" class="btn btn-success b b1 button"
								style="background-color: #99ffcc; color: black;">Add
								Student</button></a></td>
					</tr>
					<tr>
						<td><a href="AddTeacher.jsp"><button type="button" class="btn btn-success b b1 button"
								style="background-color: #ff99ff; color: black;">Add
								Teacher</button></a></td>
					</tr>
					<tr>
						<td><button type="button" class="btn btn-success b button"
								style="background-color: #f5a3b8; color: black;">Take
								Attendance</button></td>
					</tr>
					
						<td><button type="submit" class="btn btn-success b b2 mb-5 button"
								style="background-color: #ffffcc; color: black;">Logout</button></td>
					</tr>
					
				</table>
				</form>
					

			</div>
			
			<div class="col-md-6  text-center">
				<img src="All_Contents/IMG/ad1.png" width="250">
			</div>
			
		</div>
		

	</section>









</body>
</html>