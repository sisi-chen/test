package com.entity;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.Dao.OrderDao;
import com.model.Order; 
import com.model.OrderDto;


@Repository
@Transactional
public class OrderDaoImpl implements OrderDao {
		@Autowired
		private SessionFactory sessionFactory;

		@Override
		public OrderDto selectOrder(String orderid) {
			// TODO Auto-generated method stub
			OrderDto list=new OrderDto();
			String sql = "";
			if(!orderid.equals(""))
				sql+="orderid = '"+orderid+"'";
			
			if(!sql.equals(""))
				sql="where "+sql;
			
		//查询数据库并且将结果链表储存到DTO
			list.setList(sessionFactory.getCurrentSession().createSQLQuery("select * from orders "+sql).addEntity(Order.class).list());
			return list;

		}

		@Override
		public boolean insertOrder(String orderid, String userid, String menuid, String time, String num) {
			// TODO Auto-generated method stub
			int rand = (int)(Math.random()*100000);
			while(selectOrder(String.valueOf(rand)).size()!=0){
				rand = (int)(Math.random()*100000);
			}
			updateOrInsertOrder(String.valueOf(rand),userid,menuid,time,num);
			return true;
		}

		@Override
		public boolean deleteOrder(String orderid) {
			// TODO Auto-generated method stub
			sessionFactory.getCurrentSession().createSQLQuery("delete from order as s where s.orderid=:id").setParameter("id", orderid).executeUpdate();
			return false;
		}
		
		public boolean updateOrInsertOrder(String orderid, String userid, String menuid, String time, String num) {
			Order order = new Order();
			order.setOrderid(orderid);
			order.setUserid(userid);
			order.setMenuid(menuid);
			order.setTime(time);
			order.setNum(num);
			sessionFactory.getCurrentSession().saveOrUpdate(order);
			return true;
		}
}


