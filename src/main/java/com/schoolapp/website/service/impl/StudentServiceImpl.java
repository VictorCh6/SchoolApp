package com.schoolapp.website.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.schoolapp.website.dao.StudentDAO;
import com.schoolapp.website.model.Student;
import com.schoolapp.website.service.StudentService;


@Service
public class StudentServiceImpl implements StudentService {

	@Autowired
	private StudentDAO studentDAO;
	
	@Override
	public void insert(Student student) {
		studentDAO.insert(student);	
	}

	@Override
	public void update(Student student) {
		studentDAO.update(student);	
	}

	@Override
	public List<Student> select() {
		return studentDAO.select();
	}

	@Override
	public void delete(String pesel) {
		studentDAO.delete(pesel);
	}
	
	@Override
	public void closeConnection(){
		studentDAO.closeConnection();
	}
}
