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

import com.leaf.myapp.service.PartnerService;
import com.leaf.myapp.vo.EmployeeVO;
import com.leaf.myapp.vo.PageVO;
import com.leaf.myapp.vo.PartnerVO;

@Controller
public class PartnerController {
	
	@Inject
	PartnerService partnerService;
	
	@RequestMapping("/partnerManagePage")
	public String partnerMain() {
		return "partner/partnerMain";
	}
	@RequestMapping("/partnerManageRegi")
	public String partnerManageRegi() {
		return "partner/partnerRegi";
	}
	@RequestMapping("/partnerChange")
	public ModelAndView partnerChange(int part_num) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("partvo", partnerService.partnerChangeInfo(part_num));
		mav.setViewName("partner/partnerChange");
		return mav;
	}
	@RequestMapping(value="/partnerChangeResult", method=RequestMethod.POST)
	public ModelAndView partnerChangeResult(PartnerVO partvo) {
		ModelAndView mav = new ModelAndView();		
		
		int cnt = partnerService.partnerChangeResult(partvo);		
		if(cnt>0) {
			mav.addObject("result",1);
			mav.addObject("emp_num",partvo.getPart_num());						
		}else {
			mav.addObject("result",2);
		}
		mav.setViewName("partner/partnerChangeResult");
		
		return mav;
	}
	
	
	// �����˻�(�����ȣ,�����,�μ���)	
	  @RequestMapping("/partSearch")	  
	  @ResponseBody 
	  public Map<String,Object> searchpartnerList(PageVO pVo){
		  PageVO ppVo = partnerService.page(pVo.getSearchKey(),pVo.getSearchWord());
		  ppVo.setSearchKey(pVo.getSearchKey());
		  ppVo.setSearchWord(pVo.getSearchWord());
		  ppVo.setNowPage(pVo.getNowPage());
		  
		  
		  int lastPageRecode = ppVo.getTotalRecord()%pVo.getOnePageRecord(); // ������������ ���ڵ� ��
		  		  
		  if(ppVo.getTotalPage()==pVo.getNowPage() && lastPageRecode!=0) {
			  ppVo.setOnePageRecord(lastPageRecode);
		  }else {			  
			  ppVo.setOnePageRecord(pVo.getOnePageRecord());
		  }

		  List<PartnerVO> partvo = partnerService.searchPartnerList(ppVo);		  
		  Map<String,Object> empMap = new HashMap<String,Object>();
		  empMap.put("pvo", (PageVO)ppVo);
		  empMap.put("partvo", (List<PartnerVO>)partvo);		  
		  
		  return empMap; 
	  }
	  
	  // ����¡��
	  @RequestMapping("/partTotalPage")
	  @ResponseBody
	  public PageVO totalPage(PageVO pVo) {
		  return partnerService.page(pVo.getSearchKey(), pVo.getSearchWord());
	  }
	
	// ������ ������ ������ ���̵����� Ȯ��
	@RequestMapping("/partnerJoinChecking")
	@ResponseBody
	public PartnerVO partnerJoinCheck(String userid) {		
		return partnerService.checkJoinId(userid);
	}
		
	// ������
	@RequestMapping(value="/partnerRegister", method=RequestMethod.POST)
	public ModelAndView partnerRegister(PartnerVO partvo) { // httpSession
		ModelAndView mav = new ModelAndView();
		int result = partnerService.partnerRegiInsert(partvo);
		if(result>0) {
			mav.setViewName("redirect:partnerRegiPage");			
		}else {
			mav.setViewName("partner/partnerRegiFail");
		}
		return mav;
	}
}
