package com.leaf.myapp.dao;

import java.util.List;

import com.leaf.myapp.vo.NoticeVO;

public interface NoticeDAO {
	public List<NoticeVO> noticeAllSelect();
	public NoticeVO noticeView(int no);
}
