package com.leaf.myapp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.leaf.myapp.dao.AdminNoticeDAO;
import com.leaf.myapp.vo.AdminNoticeVO;

@Service
public class AdminNoticeServiceImp implements AdminNoticeService {
@Inject
AdminNoticeDAO adminnoticedao;

@Override
public List<AdminNoticeVO> noticeAll() {
	// TODO Auto-generated method stub
	return adminnoticedao.noticeAll();
}

@Override
public AdminNoticeVO noticeView(int no) {
	// TODO Auto-generated method stub
	return adminnoticedao.noticeView(no);
}

@Override
public int adminnoticeWriteOk(AdminNoticeVO vo) {
	// TODO Auto-generated method stub
	return adminnoticedao.adminnoticeWriteOk(vo);
}


}
