package com.leaf.myapp.dao;

import com.leaf.myapp.vo.RegisterVO;

public interface RegisterDAO {
	
	public int idCheck(String userid);
	public int registerOk(RegisterVO vo);

}
