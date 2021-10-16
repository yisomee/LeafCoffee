package com.leaf.myapp.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.leaf.myapp.service.EmployeeService;
import com.leaf.myapp.vo.EmployeeVO;
import com.leaf.myapp.vo.PageVO;

@Controller
public class EmployeeController {
	@Inject
	EmployeeService employeeService;	
	
	//직원검색 메인페이지
	@RequestMapping("/employeeManagePage")
	public ModelAndView employeemain() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("employee/employeemain");
		return mav;
	}
	// 직원등록
	@RequestMapping("/employeeRegiPage")
	public String employeeRegiPage() {
		return "employee/employeeRegi";
	}
	// 부서목록
	@RequestMapping("/deptlist")
	public String deptlist() {
		return "employee/deptListPoP";
	}
	
	// 사원 정보수정
	@RequestMapping("/employeeChange")
	public ModelAndView employeeChange(int emp_num) {
		ModelAndView mav = new ModelAndView();		
		mav.addObject("empvo", employeeService.employeeChangeInfo(emp_num));		
		mav.setViewName("employee/employeeChange");			
		
		return mav;
	}
	
	// 사원수정에 대한 결과
	@RequestMapping(value="/employeeChangeResult", method=RequestMethod.POST)
	public ModelAndView employeeChangeResult(EmployeeVO empvo) {
		ModelAndView mav = new ModelAndView();		
		
		int cnt = employeeService.employeeChangeResult(empvo);		
		if(cnt>0) {
			mav.addObject("result",1);
			mav.addObject("emp_num",empvo.getEmp_num());						
		}else {
			mav.addObject("result",2);
		}
		mav.setViewName("employee/employeeChangeResult");
		
		return mav;
	}
	
	
	// 직원검색(사원번호,사원명,부서명)	
	  @RequestMapping("/empSearch")	  
	  @ResponseBody 
	  public Map<String,Object> searchEmployeeList(PageVO pVo){
		  PageVO ppVo = employeeService.page(pVo.getSearchKey(),pVo.getSearchWord());
		  ppVo.setSearchKey(pVo.getSearchKey());
		  ppVo.setSearchWord(pVo.getSearchWord());
		  ppVo.setNowPage(pVo.getNowPage());			
		  
		  int lastPageRecode = ppVo.getTotalRecord()%pVo.getOnePageRecord(); // 마지막페이지 레코드 수
		  		  
		  if(ppVo.getTotalPage()==pVo.getNowPage() && lastPageRecode!=0) {
			  ppVo.setOnePageRecord(lastPageRecode);
		  }else {			  
			  ppVo.setOnePageRecord(pVo.getOnePageRecord());
		  }

		  List<EmployeeVO> empvo = employeeService.searchEmployeeList(ppVo);		  
		  Map<String,Object> empMap = new HashMap<String,Object>();
		  empMap.put("pvo", (PageVO)ppVo);
		  empMap.put("empvo", (List<EmployeeVO>)empvo);		  
		  
		  return empMap; 
	  }
	  
	  // 페이징용
	  @RequestMapping("/totalPage")
	  @ResponseBody
	  public PageVO totalPage(PageVO pVo) {
		  return employeeService.page(pVo.getSearchKey(), pVo.getSearchWord());
	  }
	
	// 사원등록 폼에서 가입한 아이디인지 확인
	@RequestMapping("/employeeJoinChecking")
	@ResponseBody
	public EmployeeVO employeeJoinCheck(String userid) {		
		return employeeService.checkJoinId(userid);
	}
		
	// 사원등록
	@RequestMapping(value="/employeeRegister", method=RequestMethod.POST)
	public ModelAndView employeeRegister(EmployeeVO empVo) { // httpSession
		ModelAndView mav = new ModelAndView();
		int result = employeeService.employeeRegiInsert(empVo);
		if(result>0) {
			mav.setViewName("redirect:employeeRegiPage");			
		}else {
			mav.setViewName("employee/employeeRegiFail");
		}
		return mav;
	}
	
	
}
