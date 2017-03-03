package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Dao.lyDao;
import com.model.lyDto;

@Service
public class lyService {
	
	@Autowired
	lyDao lyDao;
	public void insertly(String id,String time,String content){
		lyDao.insertly(id, time, content);
	}
	public lyDto selectly(String id,String time){
		return lyDao.selectly(id, time);
		
	}
}
