<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration | Badhon</title>
<link rel="stylesheet" type="text/css" href="registration.css">
</head>


<body background="images/registration.jpg">



	<div class="title">
		<h1>Registration</h1>
	</div>

	<div class="container">
		<div class="right">
			<div class="formbox">
				<form action="DonarRegister" method="post">
					<p>Name</p>
					<input type="text" name="name" placeholder="Name">

					<p>Username</p>
					<input type="text" name="username" placeholder="User_name">

					<p>Password</p>
					<input type="Password" name="password" placeholder="..........">

					<p>Blood Group</p>
					<input type="text" name="bloodgroup" placeholder="O positive">

					<p>Age</p>
					<input type="number" name="age">

					<p>Mobile Number</p>
					<input type="text" name="mobilenumber" placeholder="......">

					<p>email</p>
					<input type="text" name="email" placeholder="......">

					<p>Address</p>
					<input type="text" name="address"placeholder="Village/Thana/District">
					
					<input type="submit"name="" value="Register">
					
					<p><h5>Have already an account !! Then <a href="login.jsp">just login</a></h5></p>
					



				</form>
			</div>
		</div>
	</div>





</body>




</html>