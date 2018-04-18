package com.nomu.web.controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/date")
public class date extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String passworduser = request.getParameter("password");
		String stringDate = request.getParameter("dateHtml");

		String sql = "UPDATE DONAR SET DATEOFDONATION = ? WHERE PASSWORD = ?";

		try {
			Date date = (Date) new SimpleDateFormat("mm/dd/yyyy").parse(stringDate);
			java.sql.Date sqldate = new java.sql.Date(date.getTime());
			Class.forName("org.h2.Driver");
			System.out.println("Driver is loaded....");
			Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/webfirst", "sa", "");
			System.out.println("connection established....");
			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setDate(1, sqldate);
			ps.setString(1, passworduser);

			ps.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
