package com.leaf.myapp.dao;

import java.util.List;

import com.leaf.myapp.vo.ProductVO;

public interface ProductDAO {
	//����������
	public List<ProductVO> ProductList();//�����Ҷ� �԰�� ��� ���� ����Ʈ
	public List<ProductVO> ProductPartner(int hq_num);//���ָ���Ʈ�� �ִ� ��Ʈ�� ����
	public int Purchase_RegisterOk(ProductVO vo);//�����ϱ�
	public List<ProductVO> purchaseList();//�������� ���� ���ָ���Ʈ (������������)
	public List<ProductVO> purchaseListAll();// ���簡 ���� ��ü������ ���ָ���Ʈ(����������)
	public int purchaseDel(List<Integer> purchaseDel);//�������� �����Ѱ� �����ϱ�
	
	
	//�԰�������
	public List<ProductVO> WarehousingList();//���翡�� ���� �԰���Ʈ
	public List<ProductVO> inventory();//�����Ʈ
	public int Warehousing_RegisterOk(ProductVO vo);//�԰���
	public int items_RegisterOk(ProductVO vo);//��ǰ���
	public int purchaseConfirm(ProductVO vo);//���翡�� Ȯ�ι�ư 0->1
	public int purchaseConfirmCnt(ProductVO vo);//���翡�� Ȯ�ι�ư-> �԰���� �پ��°�
	public List<ProductVO> selectItems();//  �����۰�������
	public List<ProductVO> selectPartner();//  ��Ʈ�ʰ�������
	public ProductVO ware_cntAll(int hq_num);
	public ProductVO pc_cntAll(int hq_num);
}
