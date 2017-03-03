package com.entity;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.Dao.MenuDao;
import com.model.Menu;
import com.model.MenuDto;
import com.model.Order;

@Repository
@Transactional
public class MenuDaoImpl implements MenuDao {
		@Autowired
		private SessionFactory sessionFactory;
		
		@Override
		public MenuDto search(String menuid,String name,String price1,String price2 ){
			MenuDto list=new MenuDto();
			String sql = "";
			if(!menuid.equals(""))
				sql+="menuid like '%"+menuid+"%'";
			if(!name.equals("")){
				sql+=sql.equals("")?"":" and ";
				sql+="name = '"+name+"'";
			}
			if(!price1.equals("") && !price2.equals("")){
				sql+=sql.equals("")?"":" and ";
				sql+="price between '"+price1+"' and '"+price2+"' ";
			}
			if(!sql.equals(""))
				sql="where "+sql;
			
		//查询数据库并且将结果链表储存到DTO
			list.setList(sessionFactory.getCurrentSession().createSQLQuery("select * from menu "+sql).addEntity(Menu.class).list());
			return list;
	
		
	    
   }

		@Override
		public boolean insert(String menuid, String sellerid, String name, String price) {
			// TODO Auto-generated method stub
			
			
			return updateOrInsert(menuid, sellerid, name, price);
		}
 
public boolean updateOrInsert(String menuid, String sellerid, String name, String price) {
			
			Menu menu = new Menu();
			menu.setmenuid(menuid);
			menu.setsellerid(sellerid);
			menu.setname(name);
			menu.setprice(price);
			sessionFactory.getCurrentSession().saveOrUpdate(menu);
			return true;
		}
}

