package com.leaf.myapp.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.leaf.myapp.service.EmployeeService;

@Controller
public class EmployeeController {
	@Inject
	EmployeeService employeeService;
	
	
	@RequestMapping("/employeeManagePage")
	public String employeemain() {		
		return "employee/employeemain";
	}
	@RequestMapping("/employeeRegiPage")
	public String employeeRegiPage() {
		return "employee/employeeRegi";
	}
	@RequestMapping("/deptlist")
	public String deptlist() {
		return "employee/deptListPoP";
	}
	@RequestMapping("/employeeChange")
	public ModelAndView employeeChange() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("employee/employeeChange");
		return mav;
	}
	
	// 사원등록 폼에서 가입한 아이디인지 확인
	@RequestMapping(value="/employeeJoinChecking", produces="application/text;charset=UTF-8")
	@ResponseBody
	public String employeeJoinCheck(String userid) {
		
	}
	
	// 사원등록
	@RequestMapping(value="/employeeRegister", method=RequestMethod.POST)
	public ModelAndView employeeRegister() {
		ModelAndView mav = new ModelAndView();
		
		return mav;
	}
	
	
}
