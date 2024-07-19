<%@page import="com.Model.TeacherRegister"%>
<%@page import="com.Model.StudentRegister"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.Dao.TeacherDAO"%>
<%@page import="com.Model.AdminRegister"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
		
</style>
</head>
<body>
	<button type="button" class="btn btn-info b1 ex button m"
		data-toggle="modal" data-target="#exampleModalCenter">
		Profile</button>




	<!-- Modal -->
	<div class="modal fade " id="exampleModalCenter" tabindex="-1"
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
				<div class="modal-body" >
					
						

						<table >

							<tbody >
								<%
								//try{
								//TeacherDAO dao = new TeacherDAO(DBConnect.getConn());
								//List<TeacherRegister> list = dao.TeacherProfile();
								//for (TeacherRegister t : list) {
									TeacherRegister t=(TeacherRegister)session.getAttribute("teacher");
								%>
								<tr>
									<th>Teacher ID</th>
									<td><%=t.getTeacherID()%></td>
								</tr>

								<tr>
									<th>Teacher Name</th>
									<td><%=t.getTeacherName()%></td>
								</tr>
								<tr>
									<th>Mobile No</th>
									<td><%=t.getMobileNo()%></td>
								</tr>
								<tr>
									<th>Email</th>
									<td><%=t.getEmailID()%></td>
								</tr>
								<tr>
									<th>Password</th>
									<td><%=t.getPassword()%></td>
								</tr>
								<%
								//}
								//}catch(Exception e){
									
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