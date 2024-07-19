package com.DB;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {

	public static Connection conn;
	
	public static Connection getConn() {
		
		
			try {
				Class.forName("com.mysql.cj.jdbc.Driver");
				try {
					conn=DriverManager.getConnection("jdbc:mysql://localhost:3307/Attendance_Management_System","root","root");
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
		
		return conn;
	}
}

