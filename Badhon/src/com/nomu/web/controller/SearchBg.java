package com.nomu.web.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/SearchBg")
public class SearchBg extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html");
		String b_group = request.getParameter("search");
		PrintWriter out = response.getWriter();
		out.print(b_group);

		String sql = "select * from donar where bloodgroup='" + b_group + "' ";
		try {
			Class.forName("org.h2.Driver");
			System.out.println("Driver is loaded....");
			Connection conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/webfirst", "sa", "");
			System.out.println("connection established....");
			ArrayList al = null;
			ArrayList search_list = new ArrayList ();
			Statement st = conn.createStatement();
			ResultSet rs = st.executeQuery(sql);
			while (rs.next()) {
				al = new ArrayList();

				al.add(rs.getString(1));
				al.add(rs.getString(4));
				al.add(rs.getString(5));
				al.add(rs.getString(6));
				al.add(rs.getString(7));
				al.add(rs.getString(8));

				//System.out.println("al :: " + al);
				search_list.add(al);
			}
			request.setAttribute("searchlist", search_list);
			RequestDispatcher view = request.getRequestDispatcher("/searchview.jsp");
			view.forward(request, response);
			conn.close();
			System.out.println("Disconnected!");

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
