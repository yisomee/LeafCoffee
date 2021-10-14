package com.leaf.myapp.dao;

import java.util.List;

import com.leaf.myapp.vo.ProductVO;

public interface ProductDAO {
	//발주페이지
	public List<ProductVO> ProductList();//발주할때 입고된 목록 보는 리스트
	public List<ProductVO> ProductPartner(int hq_num);//발주리스트에 있는 파트너 정보
	public int Purchase_RegisterOk(ProductVO vo);//발주하기
	public List<ProductVO> purchaseList();//발주한거 보는 리스트
	
	//입고페이지
	public List<ProductVO> WarehousingList();//본사에서 보는 입고리스트
	public int Warehousing_RegisterOk(ProductVO vo);//입고등록
}
