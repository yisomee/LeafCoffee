package com.leaf.myapp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.leaf.myapp.dao.NoticeDAO;
import com.leaf.myapp.vo.NoticeVO;

@Service
public class NoticeServiceImp implements NoticeService{
	@Inject
	NoticeDAO noticeDAO;
	@Override
	public List<NoticeVO> noticeAllSelect() {		
		return noticeDAO.noticeAllSelect();
	}
	
}
