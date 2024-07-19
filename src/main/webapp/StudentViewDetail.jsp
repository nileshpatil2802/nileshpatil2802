
<%@page import="com.Model.AttendanceModel"%>
<%@page import="com.Dao.AttendanceDAO"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@ include file="All_Contents/allLinks.jsp"%>
<style>
/* Style to make all input fields have the same width */
body {
	background-color: #cb9dcf;
}

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

section {
	margin: 2%;
}

.search-container {
	position: relative;
}

#search-input {
	padding-right: 30px;
	/* Adjust this value based on the width of the exit button */
}

#search-exit-btn {
	position: absolute;
	right: 5px; /* Adjust the position as needed */
	top: 37%;
	transform: translateY(-50%);
	border: none;
	background: transparent;
	font-size: 16px;
	cursor: pointer;
}

#search-exit-btn:hover {
	background-color: red; /* Change color on hover */
	color: white;
	border-radius: 5px;
	padding: 2px 10px;
}

.th {
	text-align: center;
}
</style>
</head>
<body>
	<script>
		document.getElementById('search-exit-btn').addEventListener('click',
				function() {
					document.getElementById('search-input').value = '';
				});
	</script>
	<h2 class="text-center mt-4">Student View Detail</h2>
	<section>
		<div class="table-container">
			<div class="search-container">
				<input type="text" id="searchInput" onkeyup="searchTable()"
					placeholder="Search for student..."> <a
					href="StudentPanel.jsp"><button id="search-exit-btn">Exit</button></a>
			</div>
			<%
			AttendanceDAO dao = new AttendanceDAO(DBConnect.getConn());
			List<AttendanceModel> list = dao.GetAttendanceData();
			%>
			<table id="studentTable">
				<thead>
					<tr class="th">
						<th>Student ID</th>
						<th>Roll No</th>
						<th>Student Name</th>
						<th>Father Name</th>
						<th>Date</th>
						<th>Subject Name</th>
						<th>Teacher Name</th>
						<th>Attendance Status</th>
					</tr>
				</thead>
				<tbody>
					<%
						for (AttendanceModel am : list) {
					%>
					<tr>

						<td><%=am.getId()%></td>
						<td><%=am.getRollNo()%></td>
						<td><%=am.getsName()%></td>
						<td><%=am.getfName()%></td>
						<td><%=am.getDate()%></td>
						<td><%=am.getSubject()%></td>
						<td><%=am.getTeacher()%></td>
						<td><%=am.getsStatus()%></td>
					</tr>
					<%
					}
					%>




				</tbody>



			</table>
		</div>

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

	</section>
</body>
</html>