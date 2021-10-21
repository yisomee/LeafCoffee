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
//		System.out.println(logname);
		mav.addObject("menuVo", sirenService.setSirenList());
		mav.addObject("regVo", sirenService.sirenRegData(logname));
	//	RegisterVO vo = sirenService.sirenRegData(logname);
	//	System.out.println(vo.getUserid());
	//	System.out.println(vo.getUsername());
		mav.setViewName("siren_Order/siren");
		return mav;}
	}
	@RequestMapping("/order")
	@ResponseBody
	public void order(SirenCartVO cVo) {
		System.out.println(cVo.getUserid());
		System.out.println(cVo.getFc_num());
		System.out.println(cVo.getOd_cnt());
		System.out.println(cVo.getOd_price());
		System.out.println(cVo.getP_num());
		int result = sirenService.addOrderTbl(cVo);
		if(result>0) {
			System.out.println("정보전달 성공");
		}
	}
	
}
