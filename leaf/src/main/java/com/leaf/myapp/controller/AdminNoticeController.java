package com.leaf.myapp.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.leaf.myapp.service.AdminNoticeService;
import com.leaf.myapp.vo.AdminNoticeVO;
import com.leaf.myapp.vo.AdminPageVO;
import com.leaf.myapp.vo.NoticePagingVO;
import com.leaf.myapp.vo.NoticeVO;

@Controller

  public class AdminNoticeController {
	@Inject
	AdminNoticeService adminnoticeService;
/*
	//게시글 리스트
    @RequestMapping("/adminnoticeMain")
    public ModelAndView adminnoticeList() {
    	ModelAndView mav = new ModelAndView();
    	mav.addObject("list", adminnoticeService.noticeAll());
    	mav.setViewName("adminNotice/noticeMain");
		return mav;      
   }
    
 * */
	//게시글 리스트
    @RequestMapping("/adminnoticeMain")
    public ModelAndView noticePageSelect(AdminPageVO pVo) {
    	ModelAndView mav = new ModelAndView();
       //총레코드수
    	pVo.setTotalRecord(adminnoticeService.totalRecordCount(pVo));
    	mav.addObject("pVo",pVo);   
		System.out.println("total record: " + pVo.getTotalRecord());
		
		mav.addObject("list", adminnoticeService.noticePageSelect(pVo));		
		System.out.println("list" + adminnoticeService.noticePageSelect(pVo).get(0).getAdmin_no());
		mav.setViewName("adminNotice/noticeMain");
		return mav;      
   }
    
	//게시글보기
	@RequestMapping("/adminnoticeDetail")
	public ModelAndView noticeDetail(int no, AdminNoticeVO vo) {
		vo = adminnoticeService.noticeView(no);
		ModelAndView mav = new ModelAndView();
		vo.setAdmin_hit(adminnoticeService.hitCount(vo));
		mav.addObject("adminnoticeVo", vo);		
		mav.setViewName("adminNotice/adminnoticeDetail");
		return mav;	
	}
	//글쓰기폼
		@RequestMapping("/adminnoticeWrite")
		public String noticeWrite(){
			return "/adminNotice/noticeForm";
		}
	//글쓰기
	@RequestMapping(value="/adminnoticeWriteOk", method=RequestMethod.POST)
	public ModelAndView noticeWriteOk(AdminNoticeVO vo, HttpSession session) {
		ModelAndView mav = new ModelAndView();
		//vo.setUserid((String)session.getAttribute("userid"));		
		adminnoticeService.adminnoticeWriteOk(vo);
		mav.setViewName("redirect:adminnoticeMain");
		     return mav;
		}
	
	//글수정폼
	@RequestMapping("/adminnoticeEdit")
	public ModelAndView noticeEdit(int no){
		ModelAndView mav = new ModelAndView();
		mav.addObject("vo", adminnoticeService.noticeView(no));
		mav.setViewName("adminNotice/noticeEdit");
		return mav;
	}
	
	//글수정
	@RequestMapping(value="/adminnoticeEditOk", method=RequestMethod.POST)
	public ModelAndView noticeEditOk(AdminNoticeVO vo, HttpSession ses) {
		//vo.setUserid((String)ses.getAttribute("userid"));
		ModelAndView mav = new ModelAndView();
		adminnoticeService.adminnoticeEditOk(vo);
			mav.addObject("no", vo.getAdmin_no());
			mav.setViewName("redirect:adminnoticeDetail");

		return mav;
	}
	//글 삭제
	@RequestMapping("/adminnoticeDel")
	public ModelAndView adminnoticeDel(int admin_no, HttpSession session) {
		String userid = "apple";
		int result = adminnoticeService.adminnoticeDel(admin_no, userid);
		ModelAndView mav = new ModelAndView();
		if(result>0) {
		mav.setViewName("redirect:adminnoticeMain");
		}else {
			mav.addObject("admin_no",admin_no);
			mav.setViewName("redirect:adminnoticeDetail");
			
		}
		return mav;
	}
	
}
