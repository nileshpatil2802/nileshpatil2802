<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Register Page</title>
<%@ include file="All_Contents/allLinks.jsp"%>
<style>
body {
	background-color: #cb9dcf;
}

{
/* fallback for old brow
.gradient-custom-3sers */
background



 



:



 



#84fab0






;

/* Chrome 10-25, Safari 5.1-6 */
background



 



:



 



-webkit-linear-gradient






(






to



 



right
,
rgba






(






132
,
250
,
176
,
0






.5






)
,
rgba






(






143
,
211
,
244
,
0






.5






)






)






;

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background






:linear-gradient






(






to



 



right
,
rgba



 



132
,
250
,
176
,
0






.5






)
,
rgba






(






143
,
211
,
244
,
0






.5






)






)








}
.gradient-custom-4 {
	/* fallback for old browsers */
	background: #84fab0;
	/* Chrome 10-25, Safari 5.1-6 */
	background: -webkit-linear-gradient(to right, rgba(132, 250, 176, 1),
		rgba(143, 211, 244, 1));
	/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
	background: linear-gradient(to right, rgba(132, 250, 176, 1),
		rgba(143, 211, 244, 1))
}

section {
	margin-bottom: 0px;
	
}
.card{
	border: 3px solid white;

}
.ahover{
	background-color: #cb9dcf;
}
.ahover:hover{
	background-color: #ff8080;
	border-radius:25px;
}
</style>
</head>
<body>
<%@ include file="All_Contents/alertt.jsp" %>
	<section class="vh-100 bg-image" >
		<div class="mask d-flex align-items-center h-100 gradient-custom-3 " >
			<div class="container h-100" >
				<div
					class="row d-flex justify-content-center align-items-center h-100" >
					<div class="col-12 col-md-9 col-lg-7 col-xl-6 ">
						<div class="card " style="border-radius: 15px;">
							<div class="card-body p-2 ahover" >
								<h2 class="text-uppercase text-center mb-5">Create an
									account</h2>

								<form action="AdmRegServlet" method="get">

									<div class="form-outline mb-4">
										<label class="form-label" for="form3Example1cg">
											Name</label> <input type="text" id="form3Example1cg"
											class="form-control form-control-lg" name="name" required />
									</div>

									<div class="form-outline mb-4">
										<label class="form-label" for="form3Example3cg">  
											Email</label> <input type="email" id="form3Example3cg"
											class="form-control form-control-lg" name="email" required />
									</div>

									<div class="form-outline mb-4">
										<label class="form-label" for="form3Example4cg">Password</label>
										<input type="password" id="myInput1"
											class="form-control form-control-lg" name="pass" required />

										<input type="checkbox" onclick="myFunction1()"> Show
										Password
									</div>

									<div class="form-outline mb-4">
										<label class="form-label" for="form3Example4cdg">Repeat
											your password</label> <input type="password" id="myInput2"
											class="form-control form-control-lg" name="rpass" required />

										<input type="checkbox" onclick="myFunction2()"> Show
										Password
									</div>



									<div class="d-flex justify-content-center">
										<button type="submit"
											class="btn btn-success btn-block btn-lg gradient-custom-4 text-body">Register</button>
									</div>

									<p class="text-center text-muted mt-5 mb-0">
										Have already an account? <a href="Login.jsp"
											class="fw-bold text-body">Login here</a>
									</p>

								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<script type="text/javascript">
		function myFunction1() {
			var x = document.getElementById("myInput1");
			if (x.type === "password") {
				x.type = "text";
			} else {
				x.type = "password";
			}
		}
		function myFunction2() {
			var x = document.getElementById("myInput2");
			if (x.type === "password") {
				x.type = "text";
			} else {
				x.type = "password";
			}
		}
	</script>
</body>
</html>