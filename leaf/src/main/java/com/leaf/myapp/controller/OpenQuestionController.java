package com.leaf.myapp.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.leaf.myapp.service.OpenService;
import com.leaf.myapp.vo.OpenRequestVO;

@Controller
public class OpenQuestionController {
	
	@Inject
	OpenService openService;
	
	// 창업문의  10-15 16:32 추가
	@RequestMapping("/openRequest")
	public ModelAndView franchiseRequest(HttpSession ses, OpenRequestVO orqVo) {
		ModelAndView mav = new ModelAndView();
		
		String userid = (String)ses.getAttribute("logid");
		String username = (String)ses.getAttribute("logname");
		
		if(userid==null) {
			mav.setViewName("register/login");
			return mav;
		}else {
			orqVo = openService.openUserPageGoInfo(userid);		
			
			orqVo.setUserid(userid);
			orqVo.setUsername(username);
			mav.addObject("orqVo",orqVo);
			mav.setViewName("open/openRequest");			
			return mav;
		}		
	}
	
	// 창업문의자 정보저장
	@RequestMapping(value="/registerOpenRequest", method=RequestMethod.POST)
	public ModelAndView registerOpenRequest(OpenRequestVO oprVo, HttpSession ses) {
		ModelAndView mav = new ModelAndView();
		
		String userid = (String)ses.getAttribute("logid");		
		oprVo.setUserid(userid);
		int result = openService.openRequestInfo(oprVo);
		
		if(result>0) {
			mav.addObject("oprVo", oprVo);		
			mav.addObject("result",1);
		}else {
			mav.addObject("result",2);
		}
		mav.setViewName("franchise/franchiseRequestResult");
		return mav;
	}
	

	@RequestMapping("/openQuestionPage")
	public String openquestionPage() {
		return "open/openMain";
	}	
	
	@RequestMapping(value="/openReplyView",method=RequestMethod.POST)
	public ModelAndView openReplyGo() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("open/openReply");
		return mav;
	}
	
	
}
