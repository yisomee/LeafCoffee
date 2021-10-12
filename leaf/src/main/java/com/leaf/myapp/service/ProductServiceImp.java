package com.leaf.myapp.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.leaf.myapp.dao.ProductDAO;
import com.leaf.myapp.vo.MenuVO;
import com.leaf.myapp.vo.ProductVO;



@Service
public class ProductServiceImp implements ProductService{
	@Inject
	ProductDAO productDAO;

	@Override
	public List<ProductVO> ProductList() {
		// TODO Auto-generated method stub
		return productDAO.ProductList();
	}


	@Override
	public List<ProductVO> WarehousingList() {
		// TODO Auto-generated method stub
		return productDAO.WarehousingList();
	}

	@Override
	public int Warehousing_RegisterOk(ProductVO vo) {
		// TODO Auto-generated method stub
		return productDAO.Warehousing_RegisterOk(vo);
	}


	@Override
	public List<ProductVO> ProductPartner(int hq_num) {
		// TODO Auto-generated method stub
		return productDAO.ProductPartner(hq_num);
	}




}
