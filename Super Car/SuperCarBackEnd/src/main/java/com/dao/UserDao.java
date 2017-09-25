package com.dao;

import java.util.List;

import com.model.*;

public interface UserDao 
{
	public boolean insertUser(User user);
	
	public List<User> retrieve();
	
	public User findByEmail(String Email);
}
