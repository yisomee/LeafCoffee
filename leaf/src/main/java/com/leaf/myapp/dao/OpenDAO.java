package com.leaf.myapp.dao;

import java.util.List;

import com.leaf.myapp.vo.OpenRequestVO;
import com.leaf.myapp.vo.PageVO;

public interface OpenDAO {
	public OpenRequestVO openUserPageGoInfo(String userid);
	public int openRequestInfo(OpenRequestVO oprVo);
	public int authOpenAccess(String authid);
	//
	public List<OpenRequestVO> searchOpenQuestionList(PageVO pvo);
	public PageVO openListpage(String searchKey, String searchWord);
}
