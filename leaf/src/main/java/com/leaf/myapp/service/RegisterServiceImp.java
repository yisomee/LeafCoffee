package com.leaf.myapp.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.leaf.myapp.dao.RegisterDAO;
import com.leaf.myapp.vo.RegisterVO;

@Service
public class RegisterServiceImp implements RegisterService {
   @Inject
   RegisterDAO registerdao;

   @Override
   public int registerOk(RegisterVO vo) {
      
      return registerdao.registerOk(vo);
   }

   @Override
   public int idCheck(String userid) {
      
      return registerdao.idCheck(userid);
   }


}