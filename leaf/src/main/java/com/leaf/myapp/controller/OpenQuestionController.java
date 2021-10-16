package com.leaf.myapp.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.leaf.myapp.service.OpenService;
import com.leaf.myapp.vo.OpenRequestVO;
import com.leaf.myapp.vo.PageVO;

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
	
	// 창업문의 페이지로 접속요청이 들어오면
	@RequestMapping("/openQuestionPage")
	public ModelAndView openquestionPage(HttpSession ses) {
		ModelAndView mav = new ModelAndView();		
		String authid = (String)ses.getAttribute("logid");
		
		if(authid==null || authid=="") {
			mav.setViewName("open/openAccessRefuse");
			return mav;
		}
		
		int authResult = openService.authOpenAccess(authid);// 7300번(가맹관리부)만 접근가능		
		if(authResult==7300) {
			mav.setViewName("open/openMain");
			return mav;
		}else {			
			mav.setViewName("open/openAccessRefuse");
			return mav;
		}		
	}	
	
	// 창업문의 검색(작성자,내용)
	@RequestMapping("/openQuestionSearch")
	@ResponseBody
	public Map<String,Object> searchOpenQuestionList(PageVO pVo){
		PageVO ppVo = openService.openListpage(pVo.getSearchKey(),pVo.getSearchWord());
		ppVo.setSearchKey(pVo.getSearchKey());
		ppVo.setSearchWord(pVo.getSearchWord());
		ppVo.setNowPage(pVo.getNowPage());
		
		int lastPageRecode = ppVo.getTotalRecord()%pVo.getOnePageRecord();
		
		if(ppVo.getTotalPage()==pVo.getNowPage() && lastPageRecode!=0) {
			  ppVo.setOnePageRecord(lastPageRecode);
		}else {			  
			  ppVo.setOnePageRecord(pVo.getOnePageRecord());
		}
		
		
		List<OpenRequestVO> openVo = openService.searchOpenQuestionList(ppVo);
		Map<String,Object> openMap = new HashMap<String,Object>();
		openMap.put("pvo", (PageVO)ppVo);
		openMap.put("openvo", (List<OpenRequestVO>)openVo);			
		
		System.out.println(ppVo.getNowPage());
		System.out.println("토탈페이지"+ppVo.getTotalPage());
		System.out.println("총 레코드"+ppVo.getTotalRecord());
		
		
		return openMap;
	}
		
	
	// 창업문의 답변
	@RequestMapping(value="/openReplyView",method=RequestMethod.POST)
	public ModelAndView openReplyGo() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("open/openReply");
		return mav;
	}
	
	
}
