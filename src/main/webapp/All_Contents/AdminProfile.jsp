<%@page import="com.Dao.AdminDAO"%>
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

							<%  AdminRegister admin=(AdminRegister)session.getAttribute("admin"); %>
					<table>
						<tbody class="text-center">
							<%
							///* AdminDAO dao = new AdminDAO(DBConnect.getConn());
							//=dao.AdminProfile(admin.getName());
							//for(AdminRegister ar:list) { */
							%>
							
							<tr>
								<th>Name</th>
								<td><%=admin.getName() %></td>
							</tr>
							
							<tr>
								<th>Email ID</th>
								<td><%=admin.getEmail() %></td>
							</tr>

							
							<tr>
								<th>Password</th>
								<td><%= admin.getPass() %></td>
							</tr>
							<%//} %>
						</tbody>
					</table>


				</div>

			</div>
		</div>
	</div>
</body>
</html>