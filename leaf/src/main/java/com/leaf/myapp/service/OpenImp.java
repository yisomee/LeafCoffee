package com.leaf.myapp.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.leaf.myapp.dao.OpenDAO;
import com.leaf.myapp.vo.OpenRequestVO;

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


}
