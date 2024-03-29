package com.klef.demo;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.demo.Employee;

@Service
public class EmployeeService {
	@Autowired
	EmployeeRepository emprepository;
	public void addemployeerecord(Employee emp) {
		emprepository.save(emp);
	}
	public List<Employee> getallemployeerecords() {
		return (List<Employee>)emprepository.findAll();
	}
	public void deleteemployee(int id) {
		emprepository.deleteById(id);
	}
	public void updateemprecord(Employee emp)
	{
		emprepository.save(emp);
	}
	
}
