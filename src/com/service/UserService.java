package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Dao.UserDao;
import com.model.User;

@Service
public class UserService {

	@Autowired
	private UserDao userDao;
	
	public User selectUser(String id){
		return userDao.selectUser(id);
	}
	public boolean insertUser(String id,String password,String address,String name,String phone){
		return userDao.insertUser(id,password,address,name,phone);
	}
	public boolean deleteUser(String id){
		return userDao.deleteUser(id);
	}
	public boolean updateUser(String id,String password,String address,String name,String phone){
		return userDao.updateUser(id,password,address,name,phone);
	}
	public int login(String id,String password){
		return userDao.login(id, password);
	}
}
