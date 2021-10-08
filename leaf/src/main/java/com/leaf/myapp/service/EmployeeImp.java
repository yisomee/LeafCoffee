package com.leaf.myapp.service;

import javax.inject.Inject;
import org.springframework.stereotype.Service;
import com.leaf.myapp.dao.EmployeeDAO;

@Service
public class EmployeeImp implements EmployeeService{
	@Inject
	EmployeeDAO employeeDAO;
}
