package com.leaf.myapp.controller;









import java.io.IOException;
import java.util.Random;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.mybatis.logging.Logger;
import org.mybatis.logging.LoggerFactory;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.leaf.myapp.service.RegisterService;
import com.leaf.myapp.vo.RegisterVO;

@Controller
public class RegisterController {
   
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
//email인증
@RequestMapping("/register/emailCheck")
public String emailCheck() {
	return "register/emailCheck";
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

@Inject    //서비스를 호출하기 위해서 의존성을 주입
JavaMailSender mailSender;     //메일 서비스를 사용하기 위해 의존성을 주입함.
RegisterService registerservice; //서비스를 호출하기 위해 의존성을 주입




//로깅을 위한 변수
private static final Logger logger= LoggerFactory.getLogger(RegisterController.class);
private static final String String = null;


// mailSending 코드
    @RequestMapping( value = "/emailSending" )
    @ResponseBody
    public int mailSending(String email) throws IOException {
    		
        Random r = new Random();
        int dice = r.nextInt(4589362) + 49311; //이메일로 받는 인증코드 부분 (난수)
        	System.out.println(email);
        String setfrom = "needagirl88@gmail.com";
        String tomail = email; // 받는 사람 이메일
        String title = "회원가입 인증 이메일 입니다."; // 제목
        String content =
        
        System.getProperty("line.separator")+ //한줄씩 줄간격을 두기위해 작성
        
        System.getProperty("line.separator")+
                
        "안녕하세요 회원님 저희 홈페이지를 찾아주셔서 감사합니다"
        
        +System.getProperty("line.separator")+
        
        System.getProperty("line.separator")+

        " 인증번호는 " +dice+ " 입니다. "
        
        +System.getProperty("line.separator")+
        
        System.getProperty("line.separator")+
        
        "받으신 인증번호를 홈페이지에 입력해 주시면 다음으로 넘어갑니다."; // 내용
        
        
        try {
            MimeMessage message = mailSender.createMimeMessage();
            MimeMessageHelper messageHelper = new MimeMessageHelper(message,
                    true, "UTF-8");

            messageHelper.setFrom(setfrom); // 보내는사람 생략하면 정상작동을 안함
            messageHelper.setTo(tomail); // 받는사람 이메일
            messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
            messageHelper.setText(content); // 메일 내용
            
            mailSender.send(message);
        } catch (Exception e) {
            e.printStackTrace();
        }
   
        
          System.out.println("ddd");   
        
        return dice;
        
    }




}
