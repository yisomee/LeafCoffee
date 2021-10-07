package com.leaf.myapp.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.leaf.myapp.service.NoticeService;

@Controller
public class NoticeController {
	@Inject
	NoticeService noticeService;
	
	//글 목록
	@RequestMapping("/noticeList")
	public ModelAndView noticeList() {
		ModelAndView mav = new ModelAndView();
		mav.addObject("list",noticeService.noticeAllSelect());
		mav.setViewName("notice/noticeList");
		return mav;
	}
	
	//게시글보기
	@RequestMapping("/noticeDetail")
	public String noticeDetail() {
		return "/notice/noticeDetail";
	}
	//글 삭제
	@RequestMapping("/noticeDelete")
	public String NoticeDelete() {
		return "/notice/noticeList";
	}
	//글 수정
	@RequestMapping("/noticeEdit")
	public String noticeEdit() {
		return "/notice/noticeEdit";
	}
	//글쓰기
	@RequestMapping("/noticeWrite")
	public String noticeWrite(){
		return "/notice/noticeForm";
	}
	
	//사회공헌 페이지
	@RequestMapping("/social")
	public String social() {
		return "/notice/social";
	}
}
