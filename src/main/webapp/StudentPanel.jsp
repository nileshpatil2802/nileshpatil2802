
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%
	
      StudentRegister srr=(StudentRegister)session.getAttribute("student");
	//System.out.print("proccisd"+srr);
	if(srr!=null){
	  
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Panel Page</title>
<%@ include file="All_Contents/allLinks.jsp"%>
<style>
section {
	text-align: center;
}

body {
	background-color: #cb9dcf;
}

.container {
	margin-left: 10%;
	margin-top: 5%;
	width: 20%;
}

h2 {
	margin-top: 7%;
	margin-bottom: 3%;
}

.button {
	padding: 5px 50px;
	margin-left: 0%;
}

.button:hover {
	background-color: #3e8e41;
}

.button:active {
	background-color: #3e8e41;
	box-shadow: 0 5px #666;
	transform: translateY(4px);
}

.b1 {
	margin-left: 30px;
	margin-top: 3%;
	margin-bottom: 20px;
}

.d2 {
	border: 1px solid black;
	margin-top: 1%;
	padding: 20px;
}

.b1 {
	padding: 6px 70px;
	margin-left: 0px;
}
</style>
</head>

<body>
	
	<%@ include file="All_Contents/alertt.jsp"%>
	<section>

		<form action="Logout" method="get">
			<div class="text-right mr-5 mt-5" style="padding: 2px 2px;">
				<%@ include file="All_Contents/StudentProfile.jsp"%>
			</div>
			<div class="row m-0">
				<div class="col-md-4"></div>
				<div class="col-md-4 d2">
					<h2>Student Panel</h2>
					<table class="container">


						<tr>
							<td rowspan="2"><img src="All_Contents/IMG/Student1.png"
								width="160"></td>
							<td><a href="StudentViewDetail.jsp 	"><button
										type="button" class="btn btn-primary button b2">View
										Information</button></a></td>

						</tr>
					</table>
					<button type="submit" class="btn btn-danger button b1">Logout</button>


				</div>

			</div>
		</form>
	</section>
</body>
<% } else{
  response.sendRedirect("Login.jsp");
  
	    session.setAttribute("msg", null);
		
}%>
</html>
