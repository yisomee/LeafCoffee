package com.leaf.myapp;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
@Controller
public class HomeController {
	
	@RequestMapping(value = "/")
	public String home() {
		return "home";
	}
	
	@RequestMapping("/home2")
	public String home2() {
		return "home2";
	}	

	@RequestMapping("/adminMainPage")
	public String adminmainpage() {
		return "adminmain";
	}
}
