package com.daoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.dao.UserDao;
import com.model.Product;
import com.model.User;

@Repository("userDaoImpl")
public class UserDaoImpl implements UserDao
{
	@Autowired
	SessionFactory sessionFactory;
	
	public UserDaoImpl (SessionFactory sessionFactory) 
	{
		super();
		this.sessionFactory = sessionFactory;
	}
	
	public void insertUser(User user) 
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(user);
		session.getTransaction().commit();
		//session.close();
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
