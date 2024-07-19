<%@page import="com.Model.StudentRegister"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="All_Contents/allLinks.jsp"%>
<style>
.m1 {
	
}

.m2 {
	
}

body {
	background-color: #cb9dcf;
}
</style>
</head>
<body>
<%@ include file="All_Contents/alertt.jsp" %>
	<section class="text-center">
		<h3 class="mt-5">Edit Student Detail</h3>
		<form action="UpdateServlet" method="get">
			<div class="row m-0 ">

				<div class="col-md-3"></div>
				<div class="col-md-3 m1">
					<table>
							
						<tr>
							<th><label for="studentId">Student ID:</label></th>
							<td><input type="text" name="student_id"
								class="form-control mb-2" id="studentId" "></td>
						</tr>
						<tr>
							<th><label for="rollNumber">Roll Number:</label></th>
							<td><input type="text" class="form-control mb-2"
								name="roll_no" id="rollNumber"></td>
						</tr>
						<tr>
							<th><label for="name">Name:</label></th>
							<td><input type="text" class="form-control mb-2" name="name"
								id="name"></td>
						</tr>
						<tr>
							<th><label for="fatherName">Father's Name:</label></th>
							<td><input type="text" class="form-control mb-2"
								name="father_name" id="fatherName"></td>
						</tr>
						<tr>
							<th><label for="dob">D.O.B:</label></th>
							<td><input type="date" class="form-control mb-2" name="dob"
								id="dob"></td>
						</tr>
						<tr>
							<th><label for="address">Address:</label></th>
							<td><textarea class="form-control mb-2" name="address"
									id="address" rows="3"></textarea></td>
						</tr>
					</table>
				</div>

				<div class="col-md-3 m2">
					<table>

						<tr>
							<th><label for="course">Course:</label></th>
							<td><select class="form-control mb-2" name="course"
								id="course">
									<option>Select Course</option>
									<option>Course 1</option>
									<option>Course 2</option>
									<option>Course 3</option>
							</select></td>
						</tr>
						<tr>
							<th><label for="year">Year:</label></th>
							<td><select class="form-control mb-2" name="year" id="year">
									<option>Select Year</option>
									<option>2021</option>
									<option>2022</option>
									<option>2023</option>
									<option>2024</option>
							</select></td>
						</tr>
						<tr>
							<th><label for="semester">Semester:</label></th>
							<td><select class="form-control mb-2" name="semester"
								id="semester">
									<option>Select Semester</option>
									<option>Semester 1</option>
									<option>Semester 2</option>
									<option>Semester 3</option>
									<option>Semester 4</option>
									<option>Semester 5</option>
									<option>Semester 6</option>
									<option>Semester 7</option>
									<option>Semester 8</option>
							</select></td>
						</tr>
						<tr>
							<th><label for="mobile">Mobile Number:</label></th>
							<td><input type="tel" class="form-control mb-2"
								name="mobile_no" id="mobile"></td>
						</tr>
						<tr>
							<th><label for="email">Email:</label></th>
							<td><input type="email" class="form-control mb-2"
								name="email" id="email"></td>
						</tr>
						

					</table>

				</div>
				<div class="col-md-3"></div>
				</table>

			</div>
			<div class="text-center">
				<input type="submit" class="btn btn-primary " value="Save">
				<a href="TeacherPanel.jsp"><button type="button" class="btn btn-danger ">Exit</button></a>
			</div>
		</form>
		
	</section>
	
	
	
	
	
</body>
</html>