package com.leaf.myapp.service;

import java.util.List;

import com.leaf.myapp.vo.AdminNoticeVO;

public interface AdminNoticeService {
	public List<AdminNoticeVO> noticeAll();
	public AdminNoticeVO noticeView(int no);
	public int adminnoticeWriteOk(AdminNoticeVO vo);//±Û¾²±â
}
