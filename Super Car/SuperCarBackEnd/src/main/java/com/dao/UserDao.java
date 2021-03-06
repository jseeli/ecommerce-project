package com.dao;

import java.util.List;

import com.model.*;

public interface UserDao 
{
	public boolean insertUser(User user);
	
	public List<User> retrieve();
	
	public User findByEmail(String Email);
	
	public boolean updateUser(User user);
	
	public boolean deleteUser(User user);
}
