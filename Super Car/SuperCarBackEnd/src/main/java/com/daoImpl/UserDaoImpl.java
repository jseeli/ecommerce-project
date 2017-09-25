package com.daoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.dao.UserDao;
import com.model.User;

@Repository("userDao")
public class UserDaoImpl implements UserDao
{
	@Autowired
	SessionFactory sessionFactory;
	
	public UserDaoImpl (SessionFactory sessionFactory) 
	{
		this.sessionFactory = sessionFactory;
	}
	
	public boolean insertUser(User user) 
	{
		try
		{
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.saveOrUpdate(user);
			session.getTransaction().commit();
			//session.close();
			return true;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return false;
		}
	}
	
	public List<User> retrieve()
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		List<User> list = session.createQuery("from User").list();
		session.getTransaction().commit();
		return list;
	}
	
	public User findByEmail(String Email)
	{
		Session session = sessionFactory.openSession();
		User u = null;
		
		try
		{
			session.beginTransaction();
			u=session.get(User.class, Email);
			session.getTransaction().commit();
		}
		
		catch (HibernateException ex)
		{
			ex.printStackTrace();
			session.getTransaction().rollback();
		}
		
		return u;
	}
}
