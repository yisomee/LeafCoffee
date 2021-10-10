package com.leaf.myapp.service;

import com.leaf.myapp.vo.RegisterVO;

public interface RegisterService {
	public int registerOk(RegisterVO vo);
	public int idCheck(String userid);

}
