package com.leaf.myapp.dao;

import java.util.List;

import com.leaf.myapp.vo.ProductVO;

public interface ProductDAO {
	public List<ProductVO> ProductList();//�����Ҷ� �԰�� ��� ���� ����Ʈ
	public List<ProductVO> ProductPartner(int hq_num);//���ָ���Ʈ�� �ִ� ��Ʈ�� ����
	public List<ProductVO> WarehousingList();//���翡�� ���� �԰���Ʈ
	public int Warehousing_RegisterOk(ProductVO vo);//�԰���
}
