package com.leaf.myapp.service;

import java.util.List;

import com.leaf.myapp.vo.MenuVO;
import com.leaf.myapp.vo.ProductVO;
import com.leaf.myapp.vo.RegisterVO;

public interface ProductService {
	public List<ProductVO> ProductList();
	public List<ProductVO> ProductPartner(int hq_num);
	public int Purchase_RegisterOk(ProductVO vo);//�����ϱ�
	public List<ProductVO> purchaseList();//�����Ѱ� ���� ����Ʈ
	public List<ProductVO> purchaseListAll();// ���簡 ���� ��ü������ ���ָ���Ʈ(����������) 
	public int purchaseDel(List<Integer> purchaseDel);//�������� �����Ѱ� �����ϱ� 
	public List<ProductVO> WarehousingList();//���翡�� ���� �԰���Ʈ
	public int Warehousing_RegisterOk(ProductVO vo);//�԰���
	public int purchaseConfirm(ProductVO vo);//���翡�� Ȯ�ι�ư 0->1
	public int purchaseConfirmCnt(ProductVO vo);//���翡�� Ȯ�ι�ư-> �԰���� �پ��°�
	public List<ProductVO> inventory();//�����Ʈ
	public List<ProductVO> selectItems();//  �԰��ǰ��� �Ҷ� ��ǰ ����Ʈ �����ִ°� 
	public int items_RegisterOk(ProductVO vo);//��ǰ���
	public List<ProductVO> selectPartner();//  ��Ʈ�ʰ�������
	public ProductVO ware_cntAll(int hq_num);
	public ProductVO pc_cntAll(int hq_num);

}
