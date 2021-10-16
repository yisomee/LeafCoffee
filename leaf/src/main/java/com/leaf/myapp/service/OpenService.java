package com.leaf.myapp.service;

import java.util.List;

import com.leaf.myapp.vo.OpenRequestVO;
import com.leaf.myapp.vo.PageVO;

public interface OpenService {
	public OpenRequestVO openUserPageGoInfo(String userid); // 고객 창업문의 페이지로 이동시 로그인한 유저의 정보를 출력
	public int openRequestInfo(OpenRequestVO oprVo); // 고객 창업문의 페이지에서 입력한 정보를 저장	
	public int authOpenAccess(String authid);//창업문의목록 가맹관리부만 접근가능하도록(7200번)
	//
	public List<OpenRequestVO> searchOpenQuestionList(PageVO pvo); // 창업문의 리스트 출력
	public PageVO openListpage(String searchKey, String searchWord);//페이징
}
