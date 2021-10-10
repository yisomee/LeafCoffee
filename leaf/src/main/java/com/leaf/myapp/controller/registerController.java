package com.leaf.myapp.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.leaf.myapp.service.RegisterService;
import com.leaf.myapp.vo.RegisterVO;

@Controller
public class registerController {
   
@Inject
 RegisterService registerService;

//회원가입 페이지로 보내기   
@RequestMapping("/register")
public String register() {
   return "register/register";
}

//회원가입 폼등록
@RequestMapping(value="/registerOk" ,method=RequestMethod.POST)
public ModelAndView registerOk(RegisterVO vo) {
   
   ModelAndView mv = new ModelAndView();
   int cnt= registerService.registerOk(vo);
   
   if(cnt>0) {
      mv.setViewName("register/login");
   }else {
      mv.setViewName("redirect:/register");
   }
   
      return mv;
}

//id중복체크
@RequestMapping("/idCheck")
@ResponseBody
public int idCheck(String userid) {

   int cnt= registerService.idCheck(userid);
   return cnt;
      
   }
   


@RequestMapping("/loginOk")
public String login() {
   return "register/login";
}

@RequestMapping("/idOk")
public String idSearch() {
   return "register/id";
}
@RequestMapping("/pwdOk")
public String pwSearch() {
   return "register/pwd";
}


}
