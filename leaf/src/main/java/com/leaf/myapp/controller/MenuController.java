package com.leaf.myapp.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.leaf.myapp.service.MenuService;
import com.leaf.myapp.vo.MenuVO;


@Controller
public class MenuController {
	@Inject
	   MenuService menuService;
	@RequestMapping("/menu_Food")
	   public String MenuFood() {
		   return "Consumer/menu_food";
	   }
	@RequestMapping("/menu_Beverage")
	   public String MenuBeverage() {
		   return "Consumer/menu_beverage";
	   }

	@RequestMapping("/menu_Register")
		public String MenuRegister() {
			return "Head/menu_Register";
	}

	//���
	@RequestMapping("/menu_Coffee")
	   public ModelAndView menuList() {
	      ModelAndView mav = new ModelAndView();
	      mav.addObject("MenuList", menuService.MenuList());
	      mav.setViewName("Consumer/menu_coffee");
	      return mav;
	   }
	//�޴�����ϱ�
	@RequestMapping(value="/menu_RegisterOk", method=RequestMethod.POST)
	public ModelAndView Menu_RegisterOk(MenuVO vo, HttpSession ses) {

	   ModelAndView mav = new ModelAndView();
	  
	   int cnt =  menuService.Menu_RegisterOk(vo);
	   if(cnt>0) {//�۵��
		   mav.setViewName("redirect:menu_Coffee");
	   }else {
		   mav.setViewName("Consumer/menu_Register_Result");
	   }
	   return mav;
   }
   //�޴��󼼼���������
	@RequestMapping("/menu_detail")
		public ModelAndView MenuDetail(int p_num) {
		ModelAndView mav = new ModelAndView();
		System.out.println("����Ʈ!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
		System.out.println(p_num);
		mav.addObject("MenuVO",menuService.MenuDetail(p_num));
		mav.setViewName("Consumer/menu_detail");
	return mav;
	}
	
}
