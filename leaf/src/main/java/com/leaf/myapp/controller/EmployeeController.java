package com.leaf.myapp.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.logging.stdout.StdOutImpl;
import org.springframework.http.StreamingHttpOutputMessage;
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
	
	@RequestMapping("/employeeManagePage")
	public ModelAndView employeemain(PageVO pVo) {
//		PageVO vo = employeeService.page(pVo.getSearchKey(), pVo.getSearchWord());
//		List<EmployeeVO> empvo = employeeService.allEmployeeList(pVo);
		ModelAndView mav = new ModelAndView();
//		int a = vo.getTotalRecord(); // �� ���ڵ� �� �������� 
	//	int b = vo.getTotalPage();
	//	System.out.println(a);
	//	System.out.println(b);
	//	System.out.println("==========================");
	//	mav.addObject("empvo",employeeService.allEmployeeList(pVo));
	//	mav.addObject("pagevo",employeeService.page(pVo.getSearchKey(), pVo.getSearchWord()));
		mav.setViewName("employee/employeemain");
		return mav;
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
	
//	// �����˻�(�����ȣ,�����,�μ���)	
//	  @RequestMapping("/empSearch")	  
//	  @ResponseBody 
//	  public List<EmployeeVO> searchEmployeeList(PageVO pVo){
//		  
//		  return employeeService.searchEmployeeList(pVo); 
//	  }
	
	// �����˻�(�����ȣ,�����,�μ���)	
	  @RequestMapping("/empSearch")	  
	  @ResponseBody 
	  public Map<String,Object> searchEmployeeList(PageVO pVo){
		  PageVO ppVo = employeeService.page(pVo.getSearchKey(),pVo.getSearchWord());
		  ppVo.setSearchKey(pVo.getSearchKey());
		  ppVo.setSearchWord(pVo.getSearchWord());
		  ppVo.setNowPage(pVo.getNowPage());
		  
		  int lastPageRecode = pVo.getOnePageRecord() % pVo.getNowPage();
		  System.out.println("lastPageRecode=====");
		  System.out.println(lastPageRecode);
		  System.out.println("��Ż������=>"+pVo.getTotalPage()+"����������=>"+pVo.getNowPage());
		  if(pVo.getTotalPage()==pVo.getNowPage() && lastPageRecode!=0) {
			  System.out.println("������������");
			  ppVo.setOnePageRecord(lastPageRecode);
			  System.out.println(ppVo.getOnePageRecord());
		  }else {
			  System.out.println("���ڵ� 5��������");
			  ppVo.setOnePageRecord(pVo.getOnePageRecord());
			  System.out.println(ppVo.getOnePageRecord());
		  }
		  
		  List<EmployeeVO> empvo = employeeService.searchEmployeeList(ppVo);		  
		  Map<String,Object> empMap = new HashMap<String,Object>();
		  empMap.put("pvo", (PageVO)ppVo);
		  empMap.put("empvo", (List<EmployeeVO>)empvo);		  
		  
		  return empMap; 
	  }
	  
	  @RequestMapping("/totalPage")
	  @ResponseBody
	  public PageVO totalPage(PageVO pVo) {
		  return employeeService.page(pVo.getSearchKey(), pVo.getSearchWord());
	  }
	 
//	@RequestMapping("/empSearch")
//	@ResponseBody
//	  public Model searchEmployeeList(PageVO pVo,String searchKey, String searchWord, Model model){		
//		
//		PageVO vo = employeeService.page(pVo.getSearchKey(), pVo.getSearchWord());
//		String[] search = {searchKey,searchWord};		
//		model.addAttribute("search", search);
//		model.addAttribute("empvo",employeeService.searchEmployeeList(pVo));
//		model.addAttribute("pagevo",vo);
//		System.out.println("hi");
//		System.out.println(employeeService.searchEmployeeList(pVo).get(0).getEmp_num());
//		System.out.println(vo.getTotalPage());
//			
//		
//		return model;
//	}

	
	// ������ ������ ������ ���̵����� Ȯ��
	@RequestMapping("/employeeJoinChecking")
	@ResponseBody
	public EmployeeVO employeeJoinCheck(String userid) {		
		return employeeService.checkJoinId(userid);
	}
		
	// ������
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
