package com.main.controller;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.main.service.EmpService;

@Controller
public class EmpController {

	@Autowired
	EmpService empService; // autowire interface

	@GetMapping("register")
	String empRegister() {
		return "EmployeeRegistration";
	}

	@PostMapping("register")
	String registerEmp(@ModelAttribute EmpDto empDto) {

		empService.saveEmp(empDto); // sends empDto data to empserviceImpl class
		return "EmployeeRegistration";

	}

	@GetMapping("showEmployees")
	String showAll(Model model, HttpSession session) {
		EmpDto empDto1 = (EmpDto)session.getAttribute("empDto");
		if(empDto1 != null) {
			List<EmpDto> empDtolist = empService.fecthAllEmp();
			List<EmpDto> empDtoList1 = new ArrayList<>();
			for (EmpDto empDto : empDtolist) {
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

		model.addAttribute("empDtolist", empDtoList1);
		return "showEmp";
		} else {
			model.addAttribute("showAllMsg", "Please login first!");
			return "loginPage";
		}
	}

	@GetMapping("deleteEmployee")
	String deleteEmp(@RequestParam int employeeId, Model model) {
		empService.deleteEmployee(employeeId);
		return "redirect:showEmployees";
	}


	@GetMapping("showEditEmployee")
	String showEditPage(@RequestParam int employeeId, Model model) {
		EmpDto empDto = empService.fetchEmp(employeeId);
		byte[] b = empDto.getTphoto();
		byte[] encodeBase64 = Base64.getEncoder().encode(b);
		try {
			String base64DataString = new String(encodeBase64, "UTF-8");
			empDto.setPhoto(base64DataString);
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		model.addAttribute("empDto", empDto);
		return "editEmp";
	}

	@PostMapping("editEmp")
	String updateEmp(@ModelAttribute EmpDto empDto) {
		empService.saveEmp(empDto); // sends empDto data to empserviceImpl class
		return "redirect:showEmployees";
	}


	@GetMapping("login")
	String showLoginPage() {
		return "loginPage";
	}

	@PostMapping("login")
	String authenticateEmp(@RequestParam String emailId, String password, HttpSession session, Model model) {

		EmpDto empDto = empService.validateEmp(emailId, password);

		if (empDto != null) {
			session.setAttribute("empDto", empDto);
			return "redirect:showEmployees";
		}
		model.addAttribute("InvalidMsg", "Invalid username or password!");
		return "loginPage";

	}

	@GetMapping("logout")
	String logout(HttpSession session, Model model) {
		if (session != null) {
			session.invalidate();
		}
		model.addAttribute("logoutMsg", "Thank you! You are sucessfully logged out!");
		return "loginPage";
	}
	
	@GetMapping("asc")
	String orderByAsc(Model model) {
		List<EmpDto> empDtoList = empService.findAllOrderByEmailIdAsc();
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

		model.addAttribute("empDtolist", empDtoList1);
		return "showEmp";
		
	}
	
	@GetMapping("dsc")
	String orderByDsc(Model model) {
		List<EmpDto> empDtoList = empService.findAllOrderByEmailIdDsc();
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

		model.addAttribute("empDtolist", empDtoList1);
		return "showEmp";
		
	}
	
	@GetMapping("search")
	String search(Model model,String name) {
		if(name !=null) {
			List<EmpDto> empDtoList =  empService.findByEmployeeName(name);
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
			model.addAttribute("empDtolist",empDtoList1);
			return "showEmp";
		}
		else {
			return "redirect:showEmployees";
		}
	}
}
