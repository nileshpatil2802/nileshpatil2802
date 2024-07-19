<%@page import="com.Model.StudentRegister"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.Dao.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="All_Contents/allLinks.jsp"%>
<style>
.container {
	display: flex;
	justify-content: center;
	align-items: center;
	height: 20vh;
	justify-content: center; /* Adjust this value to fit your layout */
}

.form-group {
	margin-bottom: 20px;
}

label {
	display: block;
}

select, input[type="text"] {
	width: calc(110% - 25px); /* Adjust width considering padding */
	padding: 10px 20px;
	font-size: 16px; /* Adjust font size as needed */
	border-radius: 10px;
	margin-left: 10px;
	
}


h2 {
	text-align: center;
	margin-top: 5vh;
}
th{
	text-align:center;
}
.green{
	color:green;
}
.red{
	color:red;
}
.yellow{
	color:yellow;
}
</style>
</head>
<body>
<h2>MCA Student</h2>
	<div class="text-right">
				<a href="TeacherPanel.jsp"><button class="btn btn-danger ml-2 mr-5 mt-5">Exit</button></a>
	
		</div>
	<form action="ClassAttendServlet" method="get">
	<section>
		
		
		
		
		<div class="container">
				<div class="form-group mr-5">
			
				<table>
					<tr>
						<th><label for="subject">Subject:</label></th>
						<td><select id="subject" name="subject" required>
								<option value="#">Select</option>
								<option value="C">C</option>
								<option value="C++">C++</option>
								<option value="Java">Java</option>
								<option value="Python">Python</option>
								<!-- Add more options as needed -->
								
								
						</select></td>
					</tr>
				</table>



			</div>
			<div class="form-group ml-5 text-center">
				<table>
					<tr>
						<th><label for="teacher">Teacher Name:</label></th>
						<td><select id="teacher" name="teacher" required>
								<option value="#">Select</option>
								<option value="Mr.Nilesh Patil">Mr.Nilesh Patil</option>
								<option value="Mr.Prashant Deshmane">Mr.Prashant Deshmane</option>
								<option value="Mr. Pratham Dewade">Mr. Pratham Dewade</option>
								<option value="Dr.Ritesh Vishwakarma">Dr.Ritesh Vishwakarma</option>
								<!-- Add more options as needed -->
						</select></td>
					</tr>
				</table>

			</div>
		</div>
		<%
			//StudentRegister sr=new StudentRegister();
			StudentDAO dao=new StudentDAO(DBConnect.getConn());
			List<StudentRegister> list=dao.DatabasePrint();
		%>
		
		<div class="container">
			<table>
				<thead>
					<tr>
						
						<th>Roll No</th>
						<th>Student Name</th>
						<th>Father's Name</th>
						<th>Attendance Status</th>
						<th>Date</th>
					</tr>
				</thead>
				<tbody>
					<!-- Existing or dynamically added student rows will be appended here -->
					<% for(StudentRegister sr: list){ %>
					<tr>
						
						<td><input type="text" id="rollNo" value="<%=sr.getRollNo() %>"  name="rollNo"
							placeholder="Enter Roll No" required></td>
						<td><input type="text" id="studentName" value="<%=sr.getName()%>" name="studentName"
							placeholder="Enter Student Name" required></td>
						<td><input type="text" id="fatherName" value="<%=sr.getFatherName() %>" name="fatherName"
							placeholder="Enter Father's Name"></td>
						<td><select id="attendanceStatus" name="attendanceStatus" required>
								<option value="#">Select</option>
								<option value="Present" class="green">Present</option>
								<option value="Absent" class="red">Absent</option>
								<option value="Defaulter" class="yellow">Defaulter</option>
						</select></td>
						<td><input type="date" id="date" name="date" required></td>
					</tr>
					<%} %>
				</tbody>
			</table>
			
			</div>
			
	</section>
			<div class="text-center mt-5">
					<button type="submit" class="btn btn-success ml-2">Save</button>
					
			</div>
		</form>
		

</body>
</html>