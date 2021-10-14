package com.leaf.myapp.service;

import java.util.List;

import javax.inject.Inject;


import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;

import com.leaf.myapp.dao.EmployeeDAO;
import com.leaf.myapp.vo.EmployeeVO;
import com.leaf.myapp.vo.PageVO;

@Service
public class EmployeeServiceImp implements EmployeeService{
	@Inject
	EmployeeDAO employeeDAO;	
	
	@Override
	public List<EmployeeVO> allEmployeeList(PageVO pVo) {
		
		return null;
	}
//		@Override
//	public List<EmployeeVO> searchEmployeeList(PageVO pVo) {
//		// TODO Auto-generated method stub
//		return employeeDAO.searchEmployeeList(pVo);
//	}
	
	@Override 
	public List<EmployeeVO> searchEmployeeList(PageVO pVo) {
		return employeeDAO.searchEmployeeList(pVo);		
	}
	 

	@Override
	public EmployeeVO checkJoinId(String userid) {
		return employeeDAO.checkJoinId(userid);
	}

	@Override
	public int employeeRegiInsert(EmployeeVO empVo) {		
		return employeeDAO.employeeRegiInsert(empVo);
	}

	@Override
	public PageVO page(String searchKey, String searchWord) {
		return employeeDAO.page(searchKey, searchWord);
	}

	


}
