package com.leaf.myapp.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.leaf.myapp.dao.MenuDAO;


@Service
public class MenuServiceImp implements MenuService{
	@Inject
	MenuDAO menuDAO;
	
}
