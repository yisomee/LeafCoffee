package com.leaf.myapp.controller;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.leaf.myapp.service.NoticeService;
import com.leaf.myapp.vo.NoticeVO;


@Controller
public class NoticeController {
	@Inject
	NoticeService noticeService;
	
	//�� ���
	@RequestMapping("/noticeList")
	public ModelAndView noticeList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",noticeService.noticeAllSelect());
		mav.setViewName("notice/noticeList");
		return mav;
	}	
	//�Խñۺ���
	@RequestMapping("/noticeDetail")
	public ModelAndView noticeDetail(int no) {
		ModelAndView mav = new ModelAndView();
		mav.addObject("noticeVo", noticeService.noticeView(no));		
		mav.setViewName("notice/noticeDetail");
		return mav;	
	}
	//�� ����
	@RequestMapping("/noticeDelete")
	public String NoticeDelete() {
		return "/notice/noticeList";
	}
	//�� ����
	@RequestMapping("/noticeEdit")
	public String noticeEdit() {
		return "/notice/noticeEdit";
	}
	//�۾���
	@RequestMapping("/noticeWrite")
	public String noticeWrite(){
		return "/notice/noticeForm";
	}
	
	//��ȸ���� ������
	@RequestMapping("/social")
	public String social() {
		return "/notice/social";
	}
}
