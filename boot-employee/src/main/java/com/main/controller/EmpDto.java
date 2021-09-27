package com.main.controller;

import org.springframework.web.multipart.MultipartFile;

public class EmpDto {
	
	int employeeId;
	String employeeName;	
	String emailId;
	String password;	
	int salary;
	String gender;
	String photo;
	MultipartFile file;
	byte[] tphoto;
	
	public EmpDto() {
		super();
		// TODO Auto-generated constructor stub
	}

	public EmpDto(String employeeName, String emailId, String password, int salary, String gender, String photo,
			MultipartFile file, byte[] tphoto) {
		super();
		this.employeeName = employeeName;
		this.emailId = emailId;
		this.password = password;
		this.salary = salary;
		this.gender = gender;
		this.photo = photo;
		this.file = file;
		this.tphoto = tphoto;
	}

	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public byte[] getTphoto() {
		return tphoto;
	}

	public void setTphoto(byte[] tphoto) {
		this.tphoto = tphoto;
	}

	@Override
	public String toString() {
		return "EmpDto [employeeId=" + employeeId + ", employeeName=" + employeeName + ", emailId=" + emailId
				+ ", password=" + password + ", salary=" + salary + ", gender=" + gender + "]";
	}

}
