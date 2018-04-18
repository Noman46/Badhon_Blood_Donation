<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Profile || Donar</title>
<link rel="stylesheet" type="text/css" href="profile.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script>
	$(function() {
		$("#datepicker").datepicker();
	});
</script>
</head>


<body background="images/login.jpg">


	<div class="title">
		<h1>Your Profile</h1>
	</div>

	<div class="container">
		<div class="left">
			<table>
				<tr>
					<img src="#" height="200" width="200" />
				</tr>
			</table>
		</div>
		<div>
			<div>
				<table cellpadding="5" border="1">
					<td>Noman Ibrahim</td>
					<td>O positive</
					<td>
				</table>
			</div>
			<%@page import="java.sql.DriverManager"%>
			<%@page import="java.sql.ResultSet"%>
			<%@page import="java.sql.PreparedStatement"%>
			<%@page import="java.sql.Connection"%>

			<%
				String username = request.getParameter("username");
				String password = request.getParameter("password");
				String sql = "select * from donar where USERNAME=? and PASSWORD=?";

				try {
					Class.forName("org.h2.Driver");
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				}

				/*Connection connection = null;
				PreparedStatement ps  = null;
				ResultSet rs = null;*/
			%>
			<h2 align="center">
				<font><strong>Retrieve data from database in jsp</strong></font>
			</h2>
			<table align="center" cellpadding="5" cellspacing="5" border="1">
				<tr>

				</tr>
				<tr bgcolor="#A52A2A">
					<td><b>NAME</b></td>
					<td><b>USERNAME</b></td>
					<td><b>BLOODGROOP</b></td>
					<td><b>AGE</b></td>
					<td><b>MobileNumber</b></td>
				</tr>
				<%
					try {
						Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/webfirst", "sa", "");
						System.out.println("connection established....");
						PreparedStatement ps = conn.prepareStatement(sql);
						ps.setString(1, username);
						ps.setString(2, password);
						ResultSet rs = ps.executeQuery();
						while (rs.next()) {
				%>
				<tr bgcolor="#DEB887">

					<td><%=rs.getString(1)%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(4)%></td>
					<td><%=rs.getString(5)%></td>
					<td><%=rs.getString(6)%></td>

				</tr>

				<%
					}

					} catch (Exception e) {
						e.printStackTrace();
					}
				%>
			</table>



			<div>

				<h3>Last Date of Your Donation</h3>
				<form action="date" method="post">
					<label for="datepicker">Enter Your Date of Birth:</label> <input
						type="text" name="dob"> 
						<input type="Password" name="password" placeholder="......">
						
						<input
						type="submit" value="Submit">
				</form>








				
			</div>

		</div>
</body>




</html>