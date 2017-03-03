package com.Dao;

import com.model.MenuDto;

public interface MenuDao {
       public MenuDto search(String menuid,String sellerid,String name,String price );
       public boolean insert(String menuid,String sellerid,String name,String price );
}

