package com.leaf.myapp.service;

import java.util.List;

import com.leaf.myapp.vo.OpenRequestVO;
import com.leaf.myapp.vo.PageVO;

public interface OpenService {
	public OpenRequestVO openUserPageGoInfo(String userid); // �� â������ �������� �̵��� �α����� ������ ������ ���
	public int openRequestInfo(OpenRequestVO oprVo); // �� â������ ���������� �Է��� ������ ����	
	public int authOpenAccess(String authid);//â�����Ǹ�� ���Ͱ����θ� ���ٰ����ϵ���(7200��)
	//
	public List<OpenRequestVO> searchOpenQuestionList(PageVO pvo); // â������ ����Ʈ ���
	public PageVO openListpage(String searchKey, String searchWord);//����¡
}
