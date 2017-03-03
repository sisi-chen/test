package com.entity;


import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.Dao.UserDao;
import com.model.User;

@Repository
@Transactional
public class UserDaoImpl implements UserDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public User selectUser(String id) {
		return (User)sessionFactory.getCurrentSession().createQuery("from User as s where s.userid = :id").setParameter("id", id).uniqueResult();
	}

	@Override
	public boolean insertUser(String userid, String password, String address, String name, String phone) {
		updateOrInsertUser(userid,password,address,name,phone);
		return true;
	}

	@Override
	public boolean deleteUser(String userid) {
		
		sessionFactory.getCurrentSession().createQuery("delete from User as s where s.userid = :id").setParameter("id", userid).executeUpdate();

        
		return true;
	}

	@Override
	public boolean updateUser(String userid, String password, String address, String name, String phone) {
		updateOrInsertUser(userid,password,address,name,phone);
		return true;
	}
	
	public boolean updateOrInsertUser(String userid, String password, String address, String name, String phone) {
		
		User user = new User();
		user.setUserid(userid);
		user.setPassword(password);
		user.setAddress(address);
		user.setName(name);
		user.setPhone(phone);
		sessionFactory.getCurrentSession().saveOrUpdate(user);
		return true;
	}
	
	public int login(String id,String password){
		return Integer.parseInt(sessionFactory.getCurrentSession().createQuery("select count(*) from User as s where s.userid = :id and s.password = :password").setParameter("id", id).setParameter("password", password).uniqueResult().toString());
	}

}

