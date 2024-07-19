<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Change Password Page</title>
<%@include file="All_Contents/allLinks.jsp"%>
<style>
body {
	background-color: #cb9dcf;
}

.b1 {
	margin-right: 20px;
	padding: 5px 10px;
}

.b2 {
	margin-left: 20px;
	padding: 5px 15px;
}

td {
	text-align: center;
	padding: 5px
}

.center {
	margin: auto;
	width: 50%;
	border: 3px solid black;
	padding: 10px;
}

section {
	margin-top: 10%;
}
</style>
</head>
<body>
	<section class="text-center">
		<div class="center">
			<h2>Change Password</h2>
			<form action="ResetPasswordServlet" id="myForm1">
				<table>
					<tr>
						<td><label for="phone">Email ID</label></td>
						<td><input type="email" name="email" required></td>
					</tr>
					<tr>
						<td><label for="pwd1">New Password</label></td>
						<td><input type="password" id="pwd1" name="pass" required></td>
						<td><input type="checkbox" onclick="myFunction1()"></td>
					</tr>
					<tr>

					</tr>
					<tr>
						<td><label for="pwd2">Confirm New Password</label></td>
						<td><input type="password" id="pwd2" name="rPass" required></td>
						<br>
						<td><input type="checkbox" onclick="myFunction2()"></td>
					</tr>
					<tr>
						<td></td>
						<td>

							<button type="submit" class="btn btn-light ">Reset
								Password</button>
						</td>

					</tr>
					<tr>
						<td></td>
						<td>
							<button type="button" class="btn btn-light b1"
								onClick="clearForm1()">Clear</button> <a href="Login.jsp"><button
									type="button" class="btn btn-light b2">Exit</button></a>
						</td>

					</tr>

				</table>
			</form>
		</div>
	</section>


	<script>
	<!--Function First-->
		function myFunction1() {
			var x = document.getElementById("pwd1");
			if (x.type === "password") {
				x.type = "text";
			} else {
				x.type = "password";
			}
		}

		function myFunction2() {
			var x = document.getElementById("pwd2");
			if (x.type === "password") {
				x.type = "text";
			} else {
				x.type = "password";
			}
		}
		
		<!--Function for Clear Form Data-->
		
		function clearForm1() {
	        document.getElementById("myForm1").reset();
	    }
		
	</script>
</body>
</html>