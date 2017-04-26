package com.schoolapp.website.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;


@Repository
public class Database {
	
	private Connection connection = null;

	public Connection getConnection(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			if(connection == null)
				connection = DriverManager.getConnection("jdbc:mysql://localhost/school?user=root&password=");

		} catch (ClassNotFoundException e) {

			e.printStackTrace();
			
		} catch (SQLException e) {
			
			e.printStackTrace();	
		}
		return connection;
	}
	
	public void closeConnection(){
		try {
		      if (connection != null) {
		    	  connection.close();
		      }
		} catch (Exception e) { 
			//do nothing
		}
	}
}	
	

