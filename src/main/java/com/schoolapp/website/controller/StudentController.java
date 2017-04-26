package com.schoolapp.website.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.schoolapp.website.model.Student;
import com.schoolapp.website.service.StudentService;


@Controller
public class StudentController {

	@Autowired
	private StudentService studentService;
	
	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String regetAddNewStudentForm(Model model) {
		Student newStudent = new Student();
		model.addAttribute("newStudent", newStudent);
		return "addStudent";
	}

	@RequestMapping(value= "/add", method = RequestMethod.POST)
	public String proccessAddNewStudentForm(@ModelAttribute("newStudent") @Valid Student newStudent, BindingResult result) {
		if(result.hasErrors()) {
			return "addStudent";
		}
		studentService.insert(newStudent);
		return "success";
	}
	
	@RequestMapping("/all")
	public String allStudents(Model model) {
		model.addAttribute("students", studentService.select());
		return "allStudents";
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public String updateStudentForm(Model model) {
		Student newStudent = new Student();
		model.addAttribute("newStudent", newStudent);
		return "updateStudent";
	}

	@RequestMapping(value= "/update", method = RequestMethod.POST)
	public String proccessUpdateStudentForm(@ModelAttribute("newStudent") @Valid Student newStudent, BindingResult result) {
		if(result.hasErrors()) {
			return "updateStudent";
		}
		studentService.update(newStudent);
		return "success";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String deleteStudentByPesel(Model model) {
		Student newStudent = new Student();
		model.addAttribute("newStudent", newStudent);
		return "deleteStudent";
	}

	@RequestMapping(value= "/delete", method = RequestMethod.POST)
	public String proccessDeleteStudentForm(@ModelAttribute("newStudent") Student newStudent) {	
		studentService.delete(newStudent.getPesel());
		return "success";
	}

	@RequestMapping("/success")
	public String success(Model model) {
		return "success";
	}
}

