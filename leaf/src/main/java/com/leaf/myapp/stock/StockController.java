package com.leaf.myapp.stock;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class StockController {
	
@RequestMapping("/purchase")
	public String Purchase() {
		return "Store/purchase";
}
@RequestMapping("/purchase_Modify")
	public String PurchaseModify() {
		return "Store/purchase_Modify";
}

@RequestMapping("/purchase_Confirm")
public String PurchaseConfirm() {
	return "Head/purchase_Confirm";
}

@RequestMapping("/Warehousing_Management")
public String Warehousing_Management() {
	return "Head/Warehousing_Management";
}

@RequestMapping("/Warehousing_Register")
public String Warehousing_Register() {
	return "Head/Warehousing_Register";
}


}
