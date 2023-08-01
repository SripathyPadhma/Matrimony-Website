package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnect {
	private static Connection con;
	public static Connection getcon() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/martimony","root","root");
			
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		
		return con;
	}

	
}
