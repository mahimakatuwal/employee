package com.main.service;

import java.util.List;

import com.main.controller.EmpDto;


public interface EmpService {

	void saveEmp(EmpDto empDto);
	List<EmpDto> fecthAllEmp();
	
	void deleteEmployee(int employeeId); 
	EmpDto fetchEmp(int employeeId); 
	EmpDto validateEmp(String emailId, String password);
	List<EmpDto> findAllOrderByEmailIdAsc();
	List<EmpDto> findAllOrderByEmailIdDsc();
	List<EmpDto> findByEmployeeName(String name);
	void saveEmployee(EmpDto empDto);
	byte[] findPhotoByid(int id);
	
	 
	

}
