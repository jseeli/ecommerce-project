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
			System.out.println("Saving New User Data .............................");
			session.saveOrUpdate(user);
			session.getTransaction().commit();
			System.out.println("Saving Data successfully Completed ...........................");
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
		System.out.println("Retrieving User Data ........................................");
		List<User> list = session.createQuery("from User").list();
		session.getTransaction().commit();
		System.out.println("Displaying Entire User List ................................");
		return list;
	}
	
	public User findByEmail(String Email)
	{
		Session session = sessionFactory.openSession();
		User u = null;
		
		try
		{
			System.out.println("Finding ........................");
			session.beginTransaction();
			u=session.get(User.class, Email);
			session.getTransaction().commit();
			System.out.println("Finding Completed the User Email: "+ u.getEmail() + "........................................");
		}
		
		catch (HibernateException ex)
		{
			ex.printStackTrace();
			session.getTransaction().rollback();
		}
		
		return u;
	}
}
