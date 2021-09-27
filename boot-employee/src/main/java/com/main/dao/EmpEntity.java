package com.main.dao;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Transient;

import org.springframework.web.multipart.MultipartFile;

@Entity
public class EmpEntity {
	private int employeeId;
	private String employeeName;	
	private String emailId;
	private String password;	
	private int salary;
	private String gender;
	private MultipartFile file;
	private byte[] tphoto;

	public EmpEntity() {
		super();
		// TODO Auto-generated constructor stub
	}


	public EmpEntity(String employeeName, String emailId, String password, int salary, String gender,
			MultipartFile file, byte[] tphoto) {
		super();
		this.employeeName = employeeName;
		this.emailId = emailId;
		this.password = password;
		this.salary = salary;
		this.gender = gender;
		this.file = file;
		this.tphoto = tphoto;
	}


	@Id
	@GeneratedValue
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

	@Transient
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
		return "EmpEntity [employeeId=" + employeeId + ", employeeName=" + employeeName + ", emailId=" + emailId
				+ ", password=" + password + ", salary=" + salary + ", gender=" + gender + "]";
	}
}
