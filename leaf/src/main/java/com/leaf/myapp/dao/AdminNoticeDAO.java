package com.leaf.myapp.dao;

import java.util.List;

import com.leaf.myapp.vo.AdminNoticeVO;
import com.leaf.myapp.vo.MenuVO;
import com.leaf.myapp.vo.NoticeVO;

public interface AdminNoticeDAO {
	public List<AdminNoticeVO> noticeAll();// 전체리스트보기
	public AdminNoticeVO noticeView(int no);//글내용보기
	public int adminnoticeWriteOk(AdminNoticeVO vo);//글쓰기
}
