<%@page import="java.util.List"%>
<%@page import="com.mysql.cj.jdbc.Driver"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.Model.StudentRegister"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.Dao.StudentDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="All_Contents/allLinks.jsp"%>
<style>
/* Style to make all input fields have the same width */
input[type="text"], select {
	width: 200px; /* Adjust the width as needed */
}

/* Correct the display for flexbox */
.container {
	display: flex;
	justify-content: center; /* Horizontally center the content */
}

/* Add some margin to the form */
.container form {
	margin-right: 20px;
}

/* Style for the table */
#studentTable {
	width: 100%;
	border-collapse: collapse;
}

#studentTable th, #studentTable td {
	border: 1px solid #ddd;
	padding: 8px;
	text-align: left;
}

/* Style for search input */
#searchInput {
	margin-bottom: 10px;
	width: 100%;
}
</style>
</head>
<body>
	<%@ include file="All_Contents/alertt.jsp" %>
	<h3 class="text-center mt-1">Add Student</h3>
	<section class="container mt-3">

		<div class="form-container ">
			<form action="AddStudentServlet" method="get" id="myForm">
				<table>
					<tr>
						<td>Student ID:</td>
						<td><input type="text" name="student_id" required></td>
					</tr>
					<tr>
						<td>Roll No:</td>
						<td><input type="text" name="roll_no" required></td>
					</tr>
					<tr>
						<td>Name:</td>
						<td><input type="text" name="name" required></td>
					</tr>
					<tr>
						<td>Father's Name:</td>
						<td><input type="text" name="father_name" required></td>
					</tr>
					<tr>
						<td>DOB:</td>
						<td><input type="date" name="dob" required></td>
					</tr>
					<tr>
						<td>Gender:</td>
						<td><select name="gender" required>
								<option value="Select">Select</option>
								<option value="Male">Male</option>
								<option value="Female">Female</option>
								<option value="Other">Other</option>
						</select></td>
					</tr>
					<tr>
						<td>Course:</td>
						<td><select name="course" required>
								<option value="
								select">Select</option>
								<option value="Bsc">Bsc</option>
								<option value="B Tech">B Tech</option>
								<option value="Msc">Msc</option>
								<option value="M Tech">M Tech</option>
								<option value="Diploma">Diploma</option>
								<option value="Pharmacy">Pharmacy</option>
								<option value="Engineering">Engineering</option>
								<option value="MCA">MCA</option>
								<option value="MBA">MBA</option>
						</select></td>
					</tr>
					<tr>
						<td>Branch:</td>
						<td><select name="branch" required>
								<option value="#">Select</option>
								<option value="Computer">Computer</option>
								<option value="Electrical">Electrical</option>
								<option value="Mechanical">Mechanical</option>
								<option value="Other">Other</option>
						</select></td>
					</tr>
					<tr>
						<td>Year:</td>
						<td><select name="year" required>
								<option value="#">Select</option>
								<option value="2021">2021</option>
								<option value="2022">2022</option>
								<option value="2023">2023</option>
								<option value="2024">2024</option>
						</select></td>
					</tr>
					<tr>
						<td>Semester:</td>
						<td><select name="semester" required>
								<option value="#">Select</option>
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
								<option value="4">4</option>
								<option value="5">5</option>
								<option value="6">6</option>
								<option value="7">7</option>
								<option value="8">8</option>
						</select></td>
					</tr>
					<tr>
						<td>Mobile No:</td>
						<td><input type="number" name="mobile_no" required></td>
					</tr>
					<tr>
						<td>Address</td>
						<td><textarea rows="2" cols="22" name="address" required></textarea></td>
					</tr>
					<tr>
						<td>Email:</td>
						<td><input type="email" name="email" required></td>
					</tr>

					<tr>
						<td>Password:</td>
						<td><input type="password" name="password" id="myInput"
							required><br> <input type="checkbox"
							onclick="myFunction()"> Show Password</td>
					</tr>

				</table>
				<div class="mt-4 text-center">
					<button type="submit" class="btn btn-primary mr-2" id="addBtn">Add</button>
					<button type="button" class="btn btn-secondary mr-2" id="clearBtn"
						onclick="clearForm()">Clear</button>
					
					<a href="AdminPanel.jsp"><button type="button"
							class="btn btn-dark" id="exitBtn">Exit</button></a>
				</div>
			</form>



			<script>
				function myFunction() {
					var x = document.getElementById("myInput");
					if (x.type === "password") {
						x.type = "text";
					} else {
						x.type = "password";
					}
				}
				function clearForm() {
					// Get the form element
					var form = document.getElementById('myForm');

					// Reset the form
					form.reset();
				}
			</script>
			<script>
				function clearForm1() {
					document.getElementById("myForm1").reset();
				}
			</script>
		</div>
		<% StudentDAO dao = new StudentDAO(DBConnect.getConn());
		    List<StudentRegister> list=dao.DatabasePrint();
		    
		%>

		<div class="table-container">
			<input type="text" id="searchInput" onkeyup="searchTable()"
				placeholder="Search for student...">
			<form action="DeleteDataByCheckBox" method="get"  id="myForm">
			<button type="submit" class="btn btn-danger mr-2" id="deleteBtn">Delete</button>
			<table id="studentTable">
				<thead>
					<tr>
						<th>Student ID</th>
						<th>Roll No</th>
						<th>Name</th>
						<th>Father's Name</th>
						<th>DOB</th>
						<th>Gender</th>
						<th>Course</th>
						<th>Branch</th>
						<th>Year</th>
						<th>Semester</th>
						<th>Mobile No</th>
						<th>Address</th>
						<th>Email</th>
						
					</tr>
				</thead>
				
				<tbody>
					<% for(StudentRegister s1 : list){ %>
					<tr>
						<td><input type="checkbox" id="emailCheckbox" name="email"  value="<%= s1.getEmailID() %>">    <%= s1.getStudentID() %> </td>
						<td><%= s1.getRollNo()%></td>
						<td><%=s1.getName() %></td>
						<td><%= s1.getFatherName()%></td>
						<td><%= s1.getDOB() %></td>
						<td><%=s1.getGender() %></td>
						<td><%= s1.getCourse() %></td>
						<td><%= s1.getBranch() %></td>
						<td><%= s1.getYear() %></td>
						<td><%= s1.getSemester()%></td>
						<td><%= s1.getMobileNo()%></td>
						<td><%= s1.getAddress()%></td>
						<td><%= s1.getEmailID()%></td>
						
					</tr>
					<%} %>
					
					
				
				

				</tbody>



			</table>
			</form>
		</div>

	</section>

	<script>
		document.addEventListener('DOMContentLoaded', function() {
			fetchData();
		});

		function fetchData() {
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function() {
				if (this.readyState == 4 && this.status == 200) {
					var data = JSON.parse(this.responseText);
					var table = document.getElementById("studentTable");
					for (var i = 0; i < data.length; i++) {
						var row = table.insertRow(-1); // -1 to insert at the end
						var cell1 = row.insertCell(0);
						var cell2 = row.insertCell(1);
						var cell3 = row.insertCell(2);
						var cell4 = row.insertCell(3);
						var cell5 = row.insertCell(4);
						var cell6 = row.insertCell(5);
						var cell7 = row.insertCell(6);
						var cell8 = row.insertCell(7);
						var cell9 = row.insertCell(8);
						var cell10 = row.insertCell(9);
						var cell11 = row.insertCell(10);
						var cell12 = row.insertCell(11);
						var cell13 = row.insertCell(12);
						var cell14 = row.insertCell(13);
						// Add more cells as needed
						cell1.innerHTML = data[i].student_id;
						cell2.innerHTML = data[i].roll_no;
						cell3.innerHTML = data[i].name;
						cell4.innerHTML = data[i].father_name;
						cell5.innerHTML = data[i].dob;
						cell6.innerHTML = data[i].gender;
						cell7.innerHTML = data[i].course;
						cell8.innerHTML = data[i].branch;
						cell9.innerHTML = data[i].year;
						cell10.innerHTML = data[i].semester;
						cell11.innerHTML = data[i].mobile_no;
						cell12.innerHTML = data[i].address;
						cell13.innerHTML = data[i].email;
						cell14.innerHTML = data[i].password;
						// Add more innerHTML as needed
					}
				}
			};
			xhttp.open("GET", "fetch_data.php", true); // Adjust URL accordingly
			xhttp.send();
		}

		function searchTable() {
			var input, filter, table, tr, td, i, txtValue;
			input = document.getElementById("searchInput");
			filter = input.value.toUpperCase();
			table = document.getElementById("studentTable");
			tr = table.getElementsByTagName("tr");
			for (i = 0; i < tr.length; i++) {
				td = tr[i].getElementsByTagName("td");
				for (var j = 0; j < td.length; j++) {
					if (td[j]) {
						txtValue = td[j].textContent || td[j].innerText;
						if (txtValue.toUpperCase().indexOf(filter) > -1) {
							tr[i].style.display = "";
							break;
						} else {
							tr[i].style.display = "none";
						}
					}
				}
			}
		}
	</script>
</body>
</html>
