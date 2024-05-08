package com.session.spring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.session.spring.model.Employee;
import com.session.spring.service.EmployeeService;


@Controller
@RequestMapping("/employees")
public class EmployeeController {
	private EmployeeService employeeService;
	
	@Autowired(required=true)
	@Qualifier(value="employeeService")
	public void setEmployeeService(EmployeeService es){
		this.employeeService = es;
	}

	@RequestMapping("/list")
	public String listEmployees(Model model) {
		model.addAttribute("employee", new Employee());
		model.addAttribute("listEmployees", this.employeeService.listEmployees());
		return "users";
	}

	@RequestMapping("/add")
	public String add(@ModelAttribute("employee") Employee e) {
		
		return "register";
	}
	
	@RequestMapping("/processAdd")
	public String addEmployee(@ModelAttribute("employee") Employee e){
		
		
		System.out.println("employee id from update" + e.getEmployeeId());
		System.out.println("employee name from update" + e.getEmployeeName());
		System.out.println("employee phone from update" + e.getEmployeePhone());
		System.out.println("employee address from update" + e.getEmployeeAddress());
		System.out.println("employee salary from update" + e.getEmployeeSalary());
		
		if(e.getEmployeeId() == 0){
			this.employeeService.addEmployee(e);
		}else{
			this.employeeService.updateEmployee(e);
		}
		
		return "redirect:/employees/list";
		
	}
	
	@RequestMapping("/remove/{id}")
    public String removeEmployee(@PathVariable("id") int id){
        this.employeeService.removeEmployee(id);
        return "redirect:/employees/list";
    }
 
    @RequestMapping("/edit/{id}")
    public String editEmployee(@PathVariable("id") int id, Model model){
        model.addAttribute("employee", this.employeeService.getEmployeeById(id));
        model.addAttribute("listEmployees", this.employeeService.listEmployees());
        return "show";
    }
}
