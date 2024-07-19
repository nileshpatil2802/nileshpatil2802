<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
	TeacherRegister tr1=(TeacherRegister)session.getAttribute("teacher");
	if(tr1!=null){
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Teacher Page</title>
<%@include file="All_Contents/allLinks.jsp"%>


<style>
body {
	background-color: #cb9dcf;
}

h2 {
	text-align: center;
}

.m {
	margin-top: 10%;
}

.m1 {
	text-align: center;
}

section {
	margin-left: 20%;
	margin-right: 20%;
}

.mm {
	margin-top: 100px;
}

.m2 {
	
}

.b1 {
	margin-top: 30px;
	padding-left: 120px;
	padding-right: 120px;
}

.ex {
	margin-top: 10%;
	padding-left: 30px;
	padding-right: 30px;
}

.b2 {
	padding-left: 165px;
	padding-right: 165px;
}

.button:active {
	background-color: #3e8e41;
	box-shadow: 0 5px #666;
	transform: translateY(4px);
}

.m {
	padding-left: 30px;
	padding-right: 30px;
	margin-bottom: 20px;
}

.button:hover {
	background-color: aqua;
	color: black;
}

.button {
	color: black;
}

.b3 {
	margin-left: 80%;
}
</style>
</head>
<body>
	<%@ include file="All_Contents/alertt.jsp"%>
	<form action="Logout">
		<div class="b3">

			<!-- Button trigger modal -->
			<%@ include file="All_Contents/TeacherProfile.jsp"%>
			<button type="submit" class="btn btn-danger b1 ex button m">Logout</button>
		</div>
		<h2 class="m2">Teacher Panel</h2>
		<section class="text-center text-border  mm">



			<div class="row m-0 m1">
				<div class="col-md-6">

					<table>
						<tr>
							<td><a href="AddStudentByTeacher.jsp"><button
										type="button" class="btn btn-success b1 b2 button pt-3 pb-3">Add
										Students</button></a></td>
						<tr>
						<tr>
							<td><a href="ClassAttendance.jsp"><button type="button"
										class="btn btn-success b1 b2 button">Take Attendance</button></a>
							</td>
						<tr>
						<tr>
							<td><a href="StudentEditDetail.jsp"><button
										type="button" class="btn btn-success b1 button">Update
										Student Information</button></a></td>
						</tr>


					</table>




				</div>
				<div class="col-md-6">
					<img src="All_Contents/IMG/TeacherImage.png" width="220">
				</div>

			</div>
	</form>
	</section>
</body>
<%} %>
</html>