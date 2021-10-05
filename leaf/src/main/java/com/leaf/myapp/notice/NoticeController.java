package com.leaf.myapp.notice;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class NoticeController {
	//�Խñۺ���
	@RequestMapping("/noticeDetail")
	public String noticeDetail() {
		return "/notice/noticeDetail";
	}
	//�� ����
	@RequestMapping("/noticeDelete")
	public String NoticeDelete() {
		return "/notice/noticeList";
	}
	//�� ����
	@RequestMapping("/noticeEdit")
	public String noticeEdit() {
		return "/notice/noticeEdit";
	}
	//�۾���
	@RequestMapping("/noticeWrite")
	public String noticeWrite(){
		return "/notice/noticeForm";
	}
	//�� ���
	@RequestMapping("/noticeList")
	public String noticeList() {
		return "/notice/noticeList";
	}
	
	//��ȸ���� ������
	@RequestMapping("/social")
	public String social() {
		return "/notice/social";
	}
}
