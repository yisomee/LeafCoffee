package com.leaf.myapp.dao;

import java.util.List;

import org.springframework.web.servlet.ModelAndView;

import com.leaf.myapp.vo.EmployeeVO;
import com.leaf.myapp.vo.PageVO;


public interface EmployeeDAO {
	public List<EmployeeVO> allEmployeeList(PageVO pVo);
//	public List<EmployeeVO> searchEmployeeList(PageVO pVo);
	public List<EmployeeVO>searchEmployeeList(PageVO pVo);
	public EmployeeVO checkJoinId(String userid);
	public int employeeRegiInsert(EmployeeVO empVo);
	
	public PageVO page(String searchKey, String searchWord);
}
