package com.Dao;

import com.model.OrderDto;

public interface OrderDao {
	public OrderDto selectOrder(String orderid);
	public boolean insertOrder(String orderid,String userid,String menuid,String time,String num);
	public boolean deleteOrder(String id);
}
