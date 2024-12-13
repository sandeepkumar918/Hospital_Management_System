package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	private static Connection conn;
	public static Connection getConn() {
		try {
			String dbDriver = "com.mysql.jdbc.Driver"; 
	        String dbURL = "jdbc:mysql://localhost:3306/"; 
			String dbName = "hospital"; 
	        String dbUsername = "root"; 
	        String dbPassword = ""; 
	  
	        Class.forName(dbDriver); 
	        conn = DriverManager.getConnection(dbURL+dbName,dbUsername,dbPassword); 
		}catch(Exception e) {
			e.printStackTrace();		}
		return conn;
	}
}
