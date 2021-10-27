package com.leaf.myapp.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.reflection.SystemMetaObject;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.leaf.myapp.service.ProductService;
import com.leaf.myapp.vo.MenuVO;
import com.leaf.myapp.vo.ProductVO;
import com.leaf.myapp.vo.RegisterVO;

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
	      mav.addObject("NoProductList", productService.NoProductList());
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
		//�����Ʈ
			@RequestMapping("/inventory")
			 public ModelAndView inventoryList() {
			      ModelAndView mav = new ModelAndView();
			      List<ProductVO> vo = productService.inventory();
			      for (int i = 0; i<vo.size(); i++) {
			    	  ProductVO pVo = vo.get(i);
			    	  int hq_num = pVo.getHq_num();
			    	  int inventory = productService.ware_cntAll(hq_num).getWare_cntAll() - productService.pc_cntAll(hq_num).getPc_cntAll();
			    	vo.get(i).setInventory(inventory);
			      }
			      
			      mav.addObject("inventory", vo);
			      mav.setViewName("Head/inventory");
			      return mav;
			}
		@RequestMapping("/Warehousing_Register")
		public ModelAndView Warehousing_Register() {
			ModelAndView mav = new ModelAndView();
		      mav.addObject("items", productService.selectItems());
		      mav.setViewName("Head/Warehousing_Register");
		      return mav;
			
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
		//��ǰ����ϱ�
		@RequestMapping(value="/items_RegisterOk", method=RequestMethod.POST)
		public ModelAndView items_RegisterOk(ProductVO vo, HttpSession ses) {
			ModelAndView mav = new ModelAndView();
		      mav.addObject("selectPartner", productService.items_RegisterOk(vo));
		      mav.setViewName("redirect:inventory");
		      return mav;
		}
		/////////////////////////////////////////////////////////////////////////
		@RequestMapping(value="/items_Register")
		public ModelAndView items_Register() {
			ModelAndView mav = new ModelAndView();
			mav.addObject("selectPartner", productService.selectPartner());
		      mav.setViewName("Head/items_Register");
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
		@RequestMapping(value="/excelDown")
		@ResponseBody
		public void excelDown(@ModelAttribute ProductVO vo, HttpServletResponse response, HttpServletRequest request) throws Exception{
		   productService.excelDown(vo, response);
		
		}
			}
