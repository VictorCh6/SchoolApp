package com.schoolapp.website.dao.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.schoolapp.website.dao.StudentDAO;
import com.schoolapp.website.model.Student;
import com.schoolapp.website.util.Database;

@Repository
public class JdbcStudentDAO implements StudentDAO {

@Autowired
private	Database database;
	
	public void insert(Student student) {
		
		try {
			PreparedStatement preparedStatement = database.getConnection().prepareStatement("INSERT INTO school.students (firstname, lastname, pesel, email, faculty, yearofstudy) VALUES (?, ?, ?, ?, ?, ? )");
			preparedStatement.setString(1, student.getFirstName());
            preparedStatement.setString(2, student.getLastName());
            preparedStatement.setString(3, student.getPesel());
            preparedStatement.setString(4, student.getEmail());
            preparedStatement.setString(5, student.getFaculty());
            preparedStatement.setInt(6, student.getYearOfStudy());
			preparedStatement.executeUpdate();
		    preparedStatement.close();
		    
		} catch (SQLException e) {
			e.printStackTrace();	
		}
	}

	public void update(Student student) {

		try {
			 PreparedStatement preparedStatement = database.getConnection().prepareStatement("UPDATE school.students SET firstname=?, lastname=?, email=?, faculty=?, yearofstudy=? WHERE pesel=?"); 
			 preparedStatement.setString(1, student.getFirstName());
	         preparedStatement.setString(2, student.getLastName());
	         preparedStatement.setString(3, student.getEmail());
	         preparedStatement.setString(4, student.getFaculty());
	         preparedStatement.setInt(5, student.getYearOfStudy());
	         preparedStatement.setString(6, student.getPesel());
	         preparedStatement.executeUpdate();
		 
	     } catch (SQLException e) {
	         e.printStackTrace();
	     }	
	}

	public List<Student> select() {
	
		List<Student> students = new LinkedList<Student>();
		
		 try {
			 	Statement statement = database.getConnection().createStatement();
			 	ResultSet resultSet = statement.executeQuery("SELECT * FROM school.students");
			 	
			 	Student student = null;
			 	while(resultSet.next()){
			 		student = new Student();
				    student.setFirstName(resultSet.getString("firstname"));
				    student.setLastName(resultSet.getString("lastname"));
				    student.setPesel(resultSet.getString("pesel"));
				    student.setEmail(resultSet.getString("email"));
				    student.setFaculty(resultSet.getString("faculty"));
				    student.setYearOfStudy(resultSet.getInt("yearofstudy"));
				    students.add(student);
				}
			 	resultSet.close();
			 	statement.close();
			 	
			} catch (SQLException e) {
				e.printStackTrace();
			}
		 	return students;    	
		}

	public void delete(String pesel) {

		try {
			PreparedStatement preparedStatement = database.getConnection().prepareStatement("DELETE FROM school.students WHERE pesel=?");
			preparedStatement.setString(1, pesel);
			preparedStatement.executeUpdate();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public void closeConnection(){
		database.closeConnection();
	}
}
	
