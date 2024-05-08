package com.session.spring.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.session.spring.model.Employee;


@Repository
public class EmployeeDAOImpl implements EmployeeDAO{
	
private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf){
		this.sessionFactory = sf;
	}

	@Override
	public void addEmployee(Employee e) {
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(e);
		System.out.println("Employee saved successfully, Employee Details="+e);
	}

	@Override
	public void updateEmployee(Employee e) {
		Session session = this.sessionFactory.getCurrentSession();
		session.update(e);
		System.out.println("Employee updated successfully, Employee Details="+e);
	}

	@SuppressWarnings("unchecked")
	@Override
	public List<Employee> listEmployees() {
		Session session = this.sessionFactory.getCurrentSession();
		List<Employee> EmployeesList = session.createQuery("from Employee").list();
		for(Employee e : EmployeesList){
			System.out.println("Employee List::"+e);
		}
		return EmployeesList;
	}

	@Override
	public Employee getEmployeeById(int id) {
		Session session = this.sessionFactory.getCurrentSession();		
		Employee e = (Employee) session.load(Employee.class, new Integer(id));
		System.out.println("Employee loaded successfully, Employee details="+e);
		return e;
	}

	@Override
	public void removeEmployee(int id) {
		Session session = this.sessionFactory.getCurrentSession();
		Employee e = (Employee) session.load(Employee.class, new Integer(id));
		if(null != e){
			session.delete(e);
		}
		System.out.println("Employee deleted successfully, Employee details="+e);
	}


}
