package com.leaf.myapp.service;

import java.util.List;

import com.leaf.myapp.vo.NoticePagingVO;
import com.leaf.myapp.vo.NoticeVO;

public interface NoticeService {
//	public List<NoticeVO> noticeAllSelect();
	public String checkAuto(String userid);
	public int hitCount(int no);
	public NoticeVO noticeView(int no);
	public int noticeWrite(NoticeVO vo);
	public int noticeEdit(NoticeVO vo);
	public int noticeDel(int no);
	public int delChk(int[] delCheck);
	public int totalRecordCount(NoticePagingVO pVo);//�ѷ��ڵ��
	public List<NoticeVO> noticePageSelect(NoticePagingVO pVo); //������ ����
}
