package com.leaf.myapp.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.leaf.myapp.service.MenuService;


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
	@RequestMapping("/menu_detail")
		public String MenuDetail() {
			return "Consumer/menu_detail";
	}

	@RequestMapping("/menu_Register")
		public String MenuRegister() {
			return "Head/menu_Register";
	}

	//���
/*	@RequestMapping("/menu_Coffee")
	   public ModelAndView menuList() {
	    //  MenuDAOImp dao = sqlSession.getMapper(MenuDAOImp.class);
	      ModelAndView mav = new ModelAndView();
	      mav.addObject("MenuList", dao.MenuList());
	      mav.setViewName("Consumer/menu_coffee");
	      return mav;
	   }
	//�޴�����ϱ�
	@RequestMapping(value="/menu_RegisterOk", method=RequestMethod.POST)
	public ModelAndView Menu_RegisterOk(MenuVO vo, HttpSession ses) {

	   ModelAndView mav = new ModelAndView();
	   MenuDAOImp dao = sqlSession.getMapper(MenuDAOImp.class);
	   int cnt = dao.Menu_RegisterOk(vo);
	   if(cnt>0) {//�۵��
		   mav.setViewName("redirect:menu_Coffee");
	   }else {
		   mav.setViewName("Consumer/menu_Register_Result");
	   }
	   return mav;
   }
   
	*/
}
