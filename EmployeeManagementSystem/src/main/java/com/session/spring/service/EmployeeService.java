package com.session.spring.service;

import java.util.List;

import com.session.spring.model.Employee;

public interface EmployeeService {

	public void addEmployee(Employee e);
	public void updateEmployee(Employee e);
	public List<Employee> listEmployees();
	public Employee getEmployeeById(int id);
	public void removeEmployee(int id);
}
