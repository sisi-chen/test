package com.entity;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.Dao.lyDao;
import com.model.Menu;
import com.model.MenuDto;
import com.model.ly;
import com.model.lyDto;

@Repository
@Transactional
public class lyDaoImpl implements lyDao{

	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public void insertly(String id, String time, String content) {
		// TODO Auto-generated method stub
		ly temp=new ly();
		temp.setId(id);
		temp.setTime(time);
		temp.setContent(content);
		sessionFactory.getCurrentSession().saveOrUpdate(temp);
	}

	@Override
	public lyDto selectly(String id, String time) {
		// TODO Auto-generated method 
		lyDto list=new lyDto();
		String sql = "";
		if(!id.equals(""))
			sql+="id like '%"+id+"%' ";
		if(!time.equals("")){
			sql+=sql.equals("")?"":" and ";
			sql+="time like '%"+time+"%'";
		}
		
		if(!sql.equals(""))
			sql="where "+sql;
		
	//查询数据库并且将结果链表储存到DTO
		list.setList(sessionFactory.getCurrentSession().createSQLQuery("select * from ly "+sql).addEntity(ly.class).list());
		return list;
		
	}

}
