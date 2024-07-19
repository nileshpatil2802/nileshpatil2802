<%@page import="com.Model.TeacherRegister"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.Dao.TeacherDAO"%>
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
	<h3 class="text-center mt-1">Add Teacher</h3>
	<section class="container mt-3">

		<div class="form-container ">
			<form action="AddTeacherServlet" method="get" id="myForm">
				<table>
					<tr>
						<td>Teacher ID:</td>
						<td><input type="text" name="teacher_id" required></td>
					</tr>

					<tr>
						<td>Teacher Name:</td>
						<td><input type="text" name="name" required></td>
					</tr>
					<tr>
						<td>Mobile No:</td>
						<td><input type="number" name="mobile_no" required></td>
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
							class="btn btn-dark mt-2" id="exitBtn">Exit</button></a>
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
		<%
		TeacherDAO dao = new TeacherDAO(DBConnect.getConn());
		List<TeacherRegister> list = dao.getTeacherDatabase();
		%>
		
		<div class="table-container">
		<form action="DeleteTeacherAccount" method="get">
			<input type="text" id="searchInput" onkeyup="searchTable()"
				placeholder="Search for student...">
			<button type="submit" class="btn btn-danger mr-2" id="deleteBtn">Delete</button>
			<table id="studentTable">
				<thead>

					<tr>
						<th>Teacher ID</th>
						<th>Teacher Name</th>
						<th>Mobile Number</th>
						<th>Email</th>

					</tr>
				</thead>
				<tbody>

					<%
					for (TeacherRegister tr : list) {
					%>
					<tr>
						<td> <input type="checkbox" id="checkbox" name="email" value="<%=tr.getEmailID()%>"> <%=tr.getTeacherID()%></td>
						<td><%=tr.getTeacherName()%></td>
						<td><%=tr.getMobileNo()%></td>
						<td><%=tr.getEmailID()%></td>

					</tr>

					<%
					}
					%>



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