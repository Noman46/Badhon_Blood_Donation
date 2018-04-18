package com.nomu.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/DonarRegister")
public class DonarRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		// Holding the values, coming from Registration form
		String name = request.getParameter("name");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String bloodgroup = request.getParameter("bloodgroup");
		String age = request.getParameter("age");
		String mobilenumber = request.getParameter("mobilenumber");
		String email = request.getParameter("email");
		String address = request.getParameter("address");

		// SQL query string
		String sql = "insert into DONAR (name,username,password,bloodgroup,age,mobilenumber,email,address) values(?,?,?,?,?,?,?,?)";

		// Making Database connection and Insert the values inside the variables
		try {
			Class.forName("org.h2.Driver");
			System.out.println("Driver is loaded....");
			Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/webfirst", "sa", "");
			System.out.println("connection established....");
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, name);
			ps.setString(2, username);
			ps.setString(3, password);
			ps.setString(4, bloodgroup);
			ps.setString(5, age);
			ps.setString(6, mobilenumber);
			ps.setString(7, email);
			ps.setString(8, address);

			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		String message = "Thank You " +name+" "+"For Taking A Grat Decision";
		request.setAttribute("message", message);
		request.getRequestDispatcher("/success.jsp").forward(request, response);
		

	}

}
