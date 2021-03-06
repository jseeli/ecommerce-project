package com.daoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.dao.CategoryDao;
import com.model.Category;
import com.model.Product;

@Repository("categoryDao")
public class CategoryDaoImpl implements CategoryDao
{
	@Autowired
	SessionFactory sessionFactory;
	
	public CategoryDaoImpl (SessionFactory sessionFactory) 
	{
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	@Override
	public boolean insertCategory(Category category) 
	{
		try
		{
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			System.out.println("Saving New Category Data .............................");
			session.saveOrUpdate(category);
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
	
	@Transactional
	@Override
	public List<Category> retrieve()
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		System.out.println("Retrieving Category Data ........................................");
		List<Category> list = session.createQuery("from Category").list();
		session.getTransaction().commit();
		System.out.println("Displaying Entire Category List ................................");
		return list;
	}
	
	@Transactional
	@Override
	public Category findById(int CategoryID)
	{
		Session session = sessionFactory.openSession();
		Category c = null;
		
		try
		{
			System.out.println("Finding ........................");
			session.beginTransaction();
			c=session.get(Category.class, CategoryID);
			session.getTransaction().commit();
			System.out.println("Finding Completed the CategoryID: "+ c.getCategoryID() + "........................................");
		}
		
		catch (HibernateException ex)
		{
			ex.printStackTrace();
			session.getTransaction().rollback();
		}
		
		return c;
	}
	
	@Transactional
	@Override
	public boolean updateCategory(Category category)
	{
		try
		{
			//sessionFactory.getCurrentSession().update(category);
			
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			System.out.println("Updating Category ..............................");
			session.update(category);
			session.getTransaction().commit();
			System.out.println("Updating Successfully complete ..............................");
			return true;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return false;
		}
	}
	
	@Transactional
	@Override
	public boolean updateProduct(Product prod)
	{
		try
		{
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			System.out.println("Updating Product ..............................");
			session.update(prod);
			session.getTransaction().commit();
			System.out.println("Updating Successfully complete ..............................");
			return true;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return false;
		}
	}
	
	@Transactional
	@Override
	public boolean deleteCategory(int CategoryID)
	{
		try
		{
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			Category category = (Category)session.get(Category.class, CategoryID);
			System.out.println("Deleting Category Data .................................");
			session.delete(category);
			session.getTransaction().commit();
			System.out.println("Erasing Data Successfully complete ..............................");
			return true;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return false;
		}
	}
}
