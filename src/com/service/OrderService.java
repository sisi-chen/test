package com.service;

import org.springframework.beans.factory.annotation.Autowired;

import com.Dao.OrderDao;
import com.model.OrderDto;

public class OrderService {
	@Autowired
	private OrderDao orderDao;
	public OrderDto selectOrder(String orderid){
		return orderDao.selectOrder(orderid);
	}
	public boolean insertOrder(String orderid, String userid, String menuid, String time, String num){
		return orderDao.insertOrder(orderid,userid,menuid,time,num);
	}
	
	public boolean deleteOrder(String orderid){
		return orderDao.deleteOrder(orderid);
	}
}


