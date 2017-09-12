package com.daoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.dao.CategoryDao;
import com.model.Category;
import com.model.Product;

@Repository("categoryDaoImpl")
public class CategoryDaoImpl implements CategoryDao
{
	@Autowired
	SessionFactory sessionFactory;
	
	public CategoryDaoImpl (SessionFactory sessionFactory) 
	{
		super();
		this.sessionFactory = sessionFactory;
	}
	
	public void insertCategory(Category category) 
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(category);
		session.getTransaction().commit();
		//session.close();
	}
	
	public List<Category> retrieve()
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		List<Category> list = session.createQuery("from Category").list();
		session.getTransaction().commit();
		return list;
	}
	
	public Category findById(int CategoryID)
	{
		Session session = sessionFactory.openSession();
		Category c = null;
		
		try
		{
			session.beginTransaction();
			c=session.get(Category.class, CategoryID);
			session.getTransaction().commit();
		}
		
		catch (HibernateException ex)
		{
			ex.printStackTrace();
			session.getTransaction().rollback();
		}
		
		return c;
	}
	
	public void updateCategory(Category category)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.update(category);
		session.getTransaction().commit();
	}
	
	public void updateProduct(Product prod)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.update(prod);
		session.getTransaction().commit();
	}
	
	public void deleteCategory(int CategoryID)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Category category = (Category)session.get(Category.class, CategoryID);
		session.delete(category);
		session.getTransaction().commit();
	}
	
	/*public Category getCategory(int categoryID)
	{
		Session session = sessionFactory.openSession();
		Category cate = (Category)session.get(Category.class, categoryID);
		return cate;
	}*/
}
