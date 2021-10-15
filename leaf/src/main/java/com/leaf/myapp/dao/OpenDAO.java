package com.leaf.myapp.dao;

import com.leaf.myapp.vo.OpenRequestVO;

public interface OpenDAO {
	public OpenRequestVO openUserPageGoInfo(String userid);
	public int openRequestInfo(OpenRequestVO oprVo);
}
