package com.leaf.myapp.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.leaf.myapp.service.ProductService;
import com.leaf.myapp.vo.MenuVO;
import com.leaf.myapp.vo.ProductVO;

@Controller
public class ProductController {
	@Inject
	ProductService productService;
	
//////////////////////////////////////////////������ //////////////////////////////////////////////////////		
	
	
	//������������ ���Ŭ���� ��Ʈ��, ����â ���� ajax
	@RequestMapping(value="/purchasePartner")
	@ResponseBody
	public List<ProductVO>ajaxPartner(int hq_num){
		ModelAndView mav = new ModelAndView();
		List<ProductVO> list = productService.ProductPartner(hq_num);			
		return list;
	}
	
	//�����ϱ�
	@RequestMapping(value="/Purchase_RegisterOk", method = RequestMethod.POST)
	public ModelAndView Purchase_RegisterOk(ProductVO vo) {
		ModelAndView mav = new ModelAndView();  
		productService.Purchase_RegisterOk(vo);
		mav.addObject(vo);
		mav.setViewName("redirect:purchase");
		return mav;
	}
		 
	// ������������ ���� Ŭ���� ���� â �����ֱ�,������������ ��Ϻ����ֱ�
	@RequestMapping("/purchase")
	 public ModelAndView purchaseList() {
	      ModelAndView mav = new ModelAndView();
	      mav.addObject("ProductList", productService.ProductList());
	      mav.addObject("purchaseList", productService.purchaseList());
	      mav.setViewName("Store/purchase");
	      return mav;
	}
	 //�������ڵ� �迭�� �����ϱ� (���ֻ���)
	@RequestMapping(value="/purchaseDel",method=RequestMethod.POST)
	   public ModelAndView purchaseDel(ProductVO vo) {
		ModelAndView mav = new ModelAndView();
	      
	      productService.purchaseDel(vo.getPurchaseDel());
	      mav.setViewName("redirect:purchase");   
	      return mav;
	   }
	
	@RequestMapping("/purchase_Modify")
		public String PurchaseModify() {
			return "Store/purchase_Modify";
	}
	
//////////////////////////////////////////////���� //////////////////////////////////////////////////////	
	
	
	
	//�԰���Ʈ
	@RequestMapping("/Warehousing_Management")
	 public ModelAndView WarehousingList() {
	      ModelAndView mav = new ModelAndView();
	      List<ProductVO> vo = productService.WarehousingList();
	    
	      mav.addObject("WarehousingList", productService.WarehousingList());
	      mav.setViewName("Head/Warehousing_Management");
	      return mav;
	}
	// ���簡 ���� ��ü������ ���ָ���Ʈ(����������) 
	@RequestMapping("/purchase_Confirm")
	 public ModelAndView purchaseListAll() {
	      ModelAndView mav = new ModelAndView();
	      mav.addObject("purchaseListAll", productService.purchaseListAll());
	      mav.setViewName("Head/purchase_Confirm");
	      return mav;
	}
		 
	@RequestMapping("/Warehousing_Register")
	public String Warehousing_Register() {
		return "Head/Warehousing_Register";
	}
	
	//�԰����ϱ�
	@RequestMapping(value="/warehousing_RegisterOk", method=RequestMethod.POST)
	public ModelAndView Warehousing_RegisterOk(ProductVO vo, HttpSession ses) {
		ModelAndView mav = new ModelAndView();  
		productService.Warehousing_RegisterOk(vo);
		mav.addObject(vo);
		mav.setViewName("redirect:Warehousing_Management");
		return mav;
	}
	//����Ȯ�� ���������� Ȯ�ι�ư ������ ���-> �Ϸ�� ����
	@RequestMapping(value="/purchaseConfirm", method=RequestMethod.POST)
	public ModelAndView purchaseConfirm(ProductVO vo, HttpSession ses) {
	
		productService.purchaseConfirm(vo);
		ModelAndView mav = new ModelAndView();
		
		mav.setViewName("redirect:purchase_Confirm");
		mav.addObject("no", vo.getPc_num());
		
		return mav;
	}

}
