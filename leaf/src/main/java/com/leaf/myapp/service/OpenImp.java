package com.leaf.myapp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.leaf.myapp.dao.OpenDAO;
import com.leaf.myapp.vo.OpenRequestVO;
import com.leaf.myapp.vo.PageVO;

@Service
public class OpenImp implements OpenService{
	
	@Inject
	OpenDAO openDAO;

	@Override
	public OpenRequestVO openUserPageGoInfo(String userid) {
		return openDAO.openUserPageGoInfo(userid);
	}
	
	@Override
	public int openRequestInfo(OpenRequestVO oprVo) {
		return openDAO.openRequestInfo(oprVo);
	}

	@Override
	public int authOpenAccess(String authid) {
		return openDAO.authOpenAccess(authid);
	}

	@Override
	public List<OpenRequestVO> searchOpenQuestionList(PageVO pvo) {
		return openDAO.searchOpenQuestionList(pvo);
	}
	
	@Override
	public PageVO openListpage(String searchKey, String searchWord) {
		return openDAO.openListpage(searchKey, searchWord);
	}



}
