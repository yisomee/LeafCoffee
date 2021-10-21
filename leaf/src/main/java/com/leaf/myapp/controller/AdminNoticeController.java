package com.leaf.myapp.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.leaf.myapp.service.AdminNoticeService;
import com.leaf.myapp.vo.AdminNoticeVO;
import com.leaf.myapp.vo.NoticeVO;

@Controller
public class AdminNoticeController {
	@Inject
	AdminNoticeService adminnoticeService;

	//�Խñ� ����Ʈ
    @RequestMapping("/adminnoticeMain")
    public ModelAndView adminnoticeList() {
    	ModelAndView mav = new ModelAndView();
    	mav.addObject("list", adminnoticeService.noticeAll());
    	mav.setViewName("adminNotice/noticeMain");
		return mav;      
   }
	//�Խñۺ���
	@RequestMapping("/adminnoticeDetail")
	public ModelAndView noticeDetail(int no, AdminNoticeVO vo) {
		ModelAndView mav = new ModelAndView();	
		mav.addObject("adminnoticeVo", adminnoticeService.noticeView(no));		
		mav.setViewName("adminNotice/adminnoticeDetail");
		return mav;	
	}
	//�۾�����
		@RequestMapping("/adminnoticeWrite")
		public String noticeWrite(){
			return "/adminNotice/noticeForm";
		}
	//�۾���
	@RequestMapping(value="/adminnoticeWriteOk", method=RequestMethod.POST)
	public ModelAndView noticeWriteOk(AdminNoticeVO vo, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		//vo.setUserid((String)session.getAttribute("userid"));		
		adminnoticeService.adminnoticeWriteOk(vo);
		mav.addObject(vo);
		mav.setViewName("adminNotice/noticeMain");
		     return mav;
		}
}
