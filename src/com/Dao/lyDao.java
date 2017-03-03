package com.Dao;

import com.model.lyDto;

public interface lyDao {
	public void insertly(String id,String time,String content);
	public lyDto selectly(String id,String time);
}
