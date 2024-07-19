<%@page import="java.util.List"%>
<%@page import="com.Model.StudentRegister"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.Dao.StudentDAO"%>
<%@page import="com.Model.AdminRegister"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<button type="button" class="btn btn-info b1 ex button m"
		data-toggle="modal" data-target="#exampleModalCenter">
		Profile</button>




	<!-- Modal -->
	<div class="modal fade" id="exampleModalCenter" tabindex="-1"
		role="dialog" aria-labelledby="exampleModalCenterTitle"
		aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="modal-header text-center">
					<h5 class="modal-title text-center" id="exampleModalCenterTitle">Profile</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>

				<div class="modal-body">

					<%StudentRegister sr=(StudentRegister)session.getAttribute("student"); %>
					<table>
						<tbody class="text-center">
							<%
							//StudentDAO dao = new StudentDAO(DBConnect.getConn());
							//StudentRegister sr=dao.getProfile("Email");//
							
							//for (StudentRegister s : list) {
							%>
							<tr>
								<th>Student ID</th>
								<td><%=sr.getStudentID()%></td>
							</tr>

							<tr>
								<th>Roll No</th>
								<td><%=sr.getRollNo()%></td>
							</tr>
							<tr>
								<th>Name</th>
								<td><%=sr.getName()%></td>
							</tr>
							<tr>
								<th>Father Name</th>
								<td><%=sr.getFatherName()%></td>
							</tr>

							<tr>
								<th>Date of Birth</th>
								<td><%=sr.getDOB()%></td>
							</tr>
							<tr>
								<th>Gender</th>
								<td><%=sr.getGender()%></td>
							</tr>
							<tr>
								<th>Course</th>
								<td><%=sr.getCourse()%></td>
							</tr>

							<tr>
								<th>Branch</th>
								<td><%=sr.getBranch()%></td>
							</tr>

							<tr>
								<th>Year</th>
								<td><%=sr.getYear()%></td>
							</tr>

							<tr>
								<th>Semester</th>
								<td><%=sr.getSemester()%></td>
							</tr>
							<tr>
								<th>Mobile No</th>
								<td><%=sr.getMobileNo()%></td>
							</tr>
							<tr>
								<th>Email ID</th>
								<td><%=sr.getEmailID()%></td>
							</tr>

							<tr>
								<th>Address</th>
								<td><%=sr.getAddress()%></td>
							</tr>
							<tr>
								<th>Password</th>
								<td><%=sr.getPassword()%></td>
							</tr>
							<%
							//}
							%>
						</tbody>
					</table>


				</div>

			</div>
		</div>
	</div>
</body>
</html>