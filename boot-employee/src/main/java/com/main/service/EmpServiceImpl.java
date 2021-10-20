package com.main.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.main.controller.EmpDto;
import com.main.dao.EmpRepository;

import com.main.dao.EmpEntity;

@Service
@Transactional
public class EmpServiceImpl implements EmpService {

	@Autowired
	EmpRepository empRepository;

	@Override
	public void saveEmp(EmpDto empDto) {
		EmpEntity empEntity = new EmpEntity();
		BeanUtils.copyProperties(empDto, empEntity);
		try {
			empEntity.setTphoto(empEntity.getFile().getBytes());
		} catch (IOException e) {
			e.printStackTrace();
		}

		 empRepository.save(empEntity);
		

	}

	@Override
	public List<EmpDto> fecthAllEmp() {
		List<EmpEntity> entitylist = empRepository.findAll();

		List<EmpDto> dtolist = new ArrayList<>();

		for (EmpEntity empEntity : entitylist) {
			EmpDto empDto = new EmpDto();
			BeanUtils.copyProperties(empEntity, empDto);
			dtolist.add(empDto);
		}
		return dtolist;
	}

	@Override
	public void deleteEmployee(int employeeId) {
		empRepository.deleteById(employeeId);
	}

	
	
	@Override
	public EmpDto fetchEmp(int employeeId) {
		Optional<EmpEntity> empEntity = empRepository.findById(employeeId);
		EmpEntity getEmpEntity = empEntity.get();
		EmpDto empDto = new EmpDto();
		BeanUtils.copyProperties(getEmpEntity, empDto);
		return empDto;
	}

	@Override
	public EmpDto validateEmp(String emailId, String password) {
		EmpEntity empEntity = empRepository.findByEmailIdAndPassword(emailId, password);
		EmpDto empDto = null;
		if (empEntity != null) {
			empDto = new EmpDto();
			BeanUtils.copyProperties(empEntity, empDto);
		}
		return empDto;
	}

	@Override
	public List<EmpDto> findAllOrderByEmailIdAsc() {
		List<EmpEntity> entitylist = empRepository.findAll(Sort.by(Sort.Direction.ASC, "emailId"));
		List<EmpDto> dtolist = new ArrayList<>();
		
		for(EmpEntity empEntity: entitylist) {
			EmpDto empDto = new EmpDto();
			BeanUtils.copyProperties(empEntity, empDto);
			dtolist.add(empDto);
			
		}
		
		return dtolist;
	}

	@Override
	public List<EmpDto> findAllOrderByEmailIdDsc() {
		List<EmpEntity> entitylist = empRepository.findAll(Sort.by(Sort.Direction.DESC, "emailId"));
		List<EmpDto> dtolist = new ArrayList<>();
		
		for(EmpEntity empEntity: entitylist) {
			EmpDto empDto = new EmpDto();
			BeanUtils.copyProperties(empEntity, empDto);
			dtolist.add(empDto);
			
		}
		
		return dtolist;
	}

	@Override
	public List<EmpDto> findByEmployeeName(String name) {
		List<EmpEntity> entitylist = empRepository.findByEmployeeName(name);
		List<EmpDto> dtolist = new ArrayList<>();

		for (EmpEntity empEntity : entitylist) {
			EmpDto empDto = new EmpDto();
			BeanUtils.copyProperties(empEntity, empDto);
			dtolist.add(empDto);
		}
		return dtolist;
	}

	@Override
	public void saveEmployee(EmpDto empDto) {
		EmpEntity empEntity = new EmpEntity();
		BeanUtils.copyProperties(empDto, empEntity);
		
		  try { 
			  empEntity.setTphoto(empEntity.getFile().getBytes());
			  } 
		  catch(IOException e) { 
			  e.printStackTrace(); 
			  }
		 

		 EmpEntity saveEntity = empRepository.save(empEntity);
		 //empDto.setEmployeeId(saveEntity.getEmployeeId());
		 
		 //return empDto;
	}

	@Override
	public byte[] findPhotoByid(int id) {
		Optional<EmpEntity> optionalEmployee = empRepository.findById(id);
		if (optionalEmployee.isPresent()) {
			return optionalEmployee.get().getTphoto();
		} else {
			return null;
		}
		
		
	}

	

}
