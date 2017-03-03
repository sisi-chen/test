
package com.Dao;

import com.model.User;

public interface UserDao {
	public int login(String id,String password);
	public User selectUser(String id);
	public boolean insertUser(String id,String password,String address,String name,String phone);
	public boolean deleteUser(String id);
	public boolean updateUser(String id,String password,String address,String name,String phone);
}
