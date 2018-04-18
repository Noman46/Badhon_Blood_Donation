<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Log In</title>
<link rel="stylesheet" type="text/css" href="login.css">
</head>


<body background="images/login.jpg">
  
   
   <div class="title"><h1>Sign In</h1></div>

   <div class="container">
       <div class="left"></div>
	     <div class="right">
	       <div class="formbox">
		     <form action = "DonarLogin" method="post">
			  
			  <p>Username</p>
			  <input type="text" name="username" placeholder="name">
              
              <p>Password</p>
			  <input type="Password" name="password" placeholder="......">

			  <input type="submit" name="" value="Log In">
			  <p><h4>Have not registered yet? Click to <a href="register.jsp">Register</a></h4></p>
			 </form>
		   </div>
	     </div>
   </div>

</body>




</html>