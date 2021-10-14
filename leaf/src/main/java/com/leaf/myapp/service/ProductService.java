package com.leaf.myapp.service;

import java.util.List;

import com.leaf.myapp.vo.MenuVO;
import com.leaf.myapp.vo.ProductVO;

public interface ProductService {
	public List<ProductVO> ProductList();
	public List<ProductVO> ProductPartner(int hq_num);
	public int Purchase_RegisterOk(ProductVO vo);//발주하기
	public List<ProductVO> purchaseList();//발주한거 보는 리스트
	
	public List<ProductVO> WarehousingList();//본사에서 보는 입고리스트
	public int Warehousing_RegisterOk(ProductVO vo);//입고등록
}
