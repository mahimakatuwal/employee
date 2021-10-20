package com.main.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.main.dao.EmpEntity;
import com.main.service.EmpService;


@RestController
@RequestMapping("/emp")
public class EmpAPIController {
	
	
	@Autowired
	private EmpService empService;
	
	@GetMapping("/employee")
	public List<EmpDto> showEmp(){
		List <EmpDto> empDtoList = empService.fecthAllEmp();
		List<EmpDto> empDtoList1 = new ArrayList<>();
		for (EmpDto empDto : empDtoList) {
			byte[] b = empDto.getTphoto();
			byte[] encodeBase64 = Base64.getEncoder().encode(b);

			try {
				String base64DataString = new String(encodeBase64, "UTF-8");
				empDto.setPhoto(base64DataString);
				empDtoList1.add(empDto);
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		
		return empDtoList1;
		
		
	}
	
	@DeleteMapping("/employee/{id}")
	public String deleteEmp(@PathVariable int id) {
		
		empService.deleteEmployee(id);
		String msg = "Deletion Successfull";
		return msg;
		
	}
	
	@GetMapping("/employee/{id}")
	public EmpDto showEmployee(@PathVariable int id) {
		
		return empService.fetchEmp(id);
		
	}

	@PostMapping("/updateEmployees") 
	public void createEmp(@ModelAttribute EmpDto empDto) { 
		 empService.saveEmployee(empDto); 
	}
	 
	
	
	
}
		
	
	
	


