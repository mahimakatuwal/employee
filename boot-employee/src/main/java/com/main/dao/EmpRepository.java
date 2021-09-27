package com.main.dao;



import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;


@Repository
public interface EmpRepository extends JpaRepository<EmpEntity,Integer> {

	EmpEntity findByEmailIdAndPassword(String emailId, String password);
	
	@Query(value = "SELECT * FROM Emp_Entity e WHERE e.employee_Name LIKE %:name%", nativeQuery=true)
	List<EmpEntity> findByEmployeeName(@Param("name") String name);
	

}
