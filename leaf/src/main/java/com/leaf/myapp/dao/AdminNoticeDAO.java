package com.leaf.myapp.dao;

import java.util.List;

import com.leaf.myapp.vo.AdminNoticeVO;
import com.leaf.myapp.vo.MenuVO;
import com.leaf.myapp.vo.NoticeVO;

public interface AdminNoticeDAO {
	public List<AdminNoticeVO> noticeAll();// ��ü����Ʈ����
	public AdminNoticeVO noticeView(int no);//�۳��뺸��
	public int adminnoticeWriteOk(AdminNoticeVO vo);//�۾���
}
