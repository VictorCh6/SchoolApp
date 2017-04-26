package com.schoolapp.website.dao;

import java.util.List;

import com.schoolapp.website.model.Student;


public interface StudentDAO {

	public void insert(Student student);
	
	public void update(Student student);
	
	public List<Student> select();

	void delete(String pesel);
	
	public void closeConnection();
}
