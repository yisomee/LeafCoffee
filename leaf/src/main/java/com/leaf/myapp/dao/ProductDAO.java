package com.leaf.myapp.dao;

import java.util.List;

import com.leaf.myapp.vo.ProductVO;

public interface ProductDAO {
	//����������
	public List<ProductVO> ProductList();//�����Ҷ� �԰�� ��� ���� ����Ʈ
	public List<ProductVO> ProductPartner(int hq_num);//���ָ���Ʈ�� �ִ� ��Ʈ�� ����
	public int Purchase_RegisterOk(ProductVO vo);//�����ϱ�
	public List<ProductVO> purchaseList();//�������� ���� ���ָ���Ʈ (������������)
	public List<ProductVO> purchaseListAll();// ���簡 ���� ��ü������ ���ָ���Ʈ(����������) 3������ 
	public int purchaseDel(List<Integer> purchaseDel);//�������� �����Ѱ� �����ϱ� 
	
	//�԰�������
	public List<ProductVO> WarehousingList();//���翡�� ���� �԰���Ʈ
	public int Warehousing_RegisterOk(ProductVO vo);//�԰���
	public int purchaseConfirm(ProductVO vo);//���翡�� Ȯ�ι�ư 0->1

}
