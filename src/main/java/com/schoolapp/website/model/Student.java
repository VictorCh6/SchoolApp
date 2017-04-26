package com.schoolapp.website.model;

import javax.validation.constraints.Digits;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

public class Student {
	
	@Size(min=2, max=12, message="{Size.Studnet.firstName.validation}")
	@NotNull(message= "{NotNull.Student.firstName.validation}")
	private String firstName;
	
	@Size(min=2, max=15, message="{Size.Studnet.lastName.validation}")
	@NotNull(message= "{NotNull.Student.lastName.validation}")
	private String lastName;
	
	@NotNull(message= "{NotNull.Student.pesel.validation}")
	@Pattern(regexp="[0-9]{11}", message="{Pattern.Student.pesel.validation}")
	private String pesel;
	
	@NotNull(message= "{NotNull.Student.email.validation}")
	@Pattern(regexp="^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@+[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$", message="{Pattern.Student.email.validation}")
	private String email;
	
	@NotNull(message= "{NotNull.Student.faculty.validation}")
	private String faculty;
	
	@Digits(integer=1, fraction=0,  message="{Digits.Student.yearofstudy.validation}")
	private int yearOfStudy;
	

	public Student() {
		super();
	}
		
	public Student(String firstName,String lastName, String pesel, String email, String faculty, int yearOfStudy) {
		this.firstName = firstName;
		this.lastName = lastName;
		this.pesel = pesel;
		this.email = email;
		this.faculty = faculty;
		this.yearOfStudy = yearOfStudy;
		
	}
	
	/*
	 * Getters and Setters
	 */
	
	
		public String getFirstName() {
			return firstName;
		}
		public void setFirstName(String firstName) {
			this.firstName = firstName;
		}
		public String getLastName() {
			return lastName;
		}
		public void setLastName(String lastName) {
			this.lastName = lastName;
		}

		public String getPesel() {
			return pesel;
		}

		public void setPesel(String pesel) {
			this.pesel = pesel;
		}
		
		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getFaculty() {
			return faculty;
		}

		public void setFaculty(String faculty) {
			this.faculty = faculty;
		}

		public int getYearOfStudy() {
			return yearOfStudy;
		}

		public void setYearOfStudy(int yearOfStudy) {
			this.yearOfStudy = yearOfStudy;
		}
		
}