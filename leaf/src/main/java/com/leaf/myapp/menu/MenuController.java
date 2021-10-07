package com.leaf.myapp.menu;


import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MenuController {
	SqlSession sqlSession;
	
	public SqlSession getSqlSession() {
		return sqlSession;
	}
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}

	@RequestMapping("/menu_Coffee")
	   public String MenuCoffee() {
		   return "Consumer/menu_coffee";
	   }
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

	
}
