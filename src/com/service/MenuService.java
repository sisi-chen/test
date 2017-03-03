package com.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Dao.MenuDao;
import com.model.MenuDto;

@Service
public class MenuService {
	@Autowired
	private MenuDao menuDao;
	 
	public MenuDto search(String menuid,String name,String price1,String price2){
		return menuDao.search(menuid,  name, price1 ,price2);
	}
	
	public boolean insert(String menuid,String sellerid,String name,String price){
		int rand=(int)(Math.random()*10000);
		
		return menuDao.insert(String.valueOf(rand), sellerid, name, price);
	}
}


