package com.nomu.web.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DonarLogin")
public class DonarLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public DonarLogin() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		String sql = "select * from donar where USERNAME=? and PASSWORD=?";
		try {
			Class.forName("org.h2.Driver");
			System.out.println("Driver is loaded....");
			Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/webfirst", "sa", "");
			System.out.println("connection established....");
			PreparedStatement ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
					
				
						if(username == rs.getString(2) && password == rs.getString(3)) {
							System.out.println(rs.getString(2));
							System.out.println(rs.getString(6));
						RequestDispatcher rd=request.getRequestDispatcher("profile.jsp");
							rd.forward(request, response);
							
							
							}
						
						
				
						}
			

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
