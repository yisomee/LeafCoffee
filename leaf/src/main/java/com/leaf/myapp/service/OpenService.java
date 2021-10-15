package com.leaf.myapp.service;

import com.leaf.myapp.vo.OpenRequestVO;

public interface OpenService {
	public OpenRequestVO openUserPageGoInfo(String userid);
	public int openRequestInfo(OpenRequestVO oprVo);
}
