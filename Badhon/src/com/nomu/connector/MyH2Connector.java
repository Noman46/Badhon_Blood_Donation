package com.nomu.connector;

import java.sql.Connection;
import java.sql.DriverManager;

public class MyH2Connector {

	public static Connection conn = null;

	public static Connection ConnectTo() {

		try {
			Class.forName("org.h2.Driver");
			System.out.println("Driver is loaded....");
			conn = DriverManager.getConnection("jdbc:h2:tcp://localhost/~/webfirst", "sa", "");
			System.out.println("connection established....");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;

	}

	public static void main(String a[]) {
		ConnectTo();}
	

}