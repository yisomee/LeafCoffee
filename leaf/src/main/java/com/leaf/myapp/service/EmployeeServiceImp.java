package com.leaf.myapp.service;

import javax.inject.Inject;
import org.springframework.stereotype.Service;
import com.leaf.myapp.vo.EmployeeVO;
import com.leaf.myapp.dao.EmployeeDAO;

@Service
public class EmployeeServiceImp implements EmployeeService{
	@Inject
	EmployeeDAO employeeDAO;

	@Override
	public EmployeeVO checkJoinId(String userid) {
		return employeeDAO.checkJoinId(userid);
	}
}
