package com.leaf.myapp.service;

import java.util.List;

import com.leaf.myapp.vo.MenuVO;
import com.leaf.myapp.vo.ProductVO;

public interface ProductService {
	public List<ProductVO> ProductList();
	public List<ProductVO> ProductPartner(int hq_num);
	public int Purchase_RegisterOk(ProductVO vo);//�����ϱ�
	public List<ProductVO> purchaseList();//�����Ѱ� ���� ����Ʈ
	
	public List<ProductVO> WarehousingList();//���翡�� ���� �԰���Ʈ
	public int Warehousing_RegisterOk(ProductVO vo);//�԰���
}
