package com.leaf.myapp.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.leaf.myapp.service.SirenService;
import com.leaf.myapp.vo.RegisterVO;
import com.leaf.myapp.vo.SirenCartVO;

@Controller
public class SirenController {
	@Inject
	SirenService sirenService;
	
	@RequestMapping("/siren")
	public ModelAndView sirenList(HttpSession ses) {
		ModelAndView mav = new ModelAndView();
		String logname = (String)ses.getAttribute("logname");
		if(logname==null) {
			mav.setViewName("register/login");
			return mav;
		}else {
			mav.addObject("menuVo", sirenService.setSirenList());
			mav.addObject("regVo", sirenService.sirenRegData(logname));
			mav.addObject("franVo" , sirenService.fcList());
			mav.setViewName("siren_Order/siren");
			return mav;
		}
	}
	@RequestMapping("/order")
	@ResponseBody
	public void order(SirenCartVO cVo) {
		int result = sirenService.addOrderTbl(cVo);
		if(result>0) {
			System.out.println("정보전달 성공");
		}
	}	
}
