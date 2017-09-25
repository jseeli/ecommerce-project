package com.daoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.dao.ProductDao;
import com.model.Cart;
import com.model.Category;
import com.model.Product;

@Repository("productDao")
public class ProductDaoImpl implements ProductDao
{
	@Autowired
	SessionFactory sessionFactory;
	
	public ProductDaoImpl (SessionFactory sessionFactory) 
	{
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	@Override
	public boolean insertProduct(Product product) 
	{
		try
		{
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.saveOrUpdate(product);
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
	
	@Transactional
	@Override
	public List<Product> retrieve()
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		List<Product> list = session.createQuery("from Product").list();
		session.getTransaction().commit();
		return list;
	}
	
	@Transactional
	@Override
	public Product findById(int ProductID)
	{
		Session session = sessionFactory.openSession();
		Product p = null;
		
		try
		{
			session.beginTransaction();
			p=session.get(Product.class, ProductID);
			session.getTransaction().commit();
		}
		
		catch (HibernateException ex)
		{
			ex.printStackTrace();
			session.getTransaction().rollback();
		}
		
		return p;
	}
	
	@Transactional
	@Override
	public boolean updateProduct(Product prod)
	{
		try
		{
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.update(prod);
			session.getTransaction().commit();
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
	public boolean deleteProduct(int ProductID)
	{
		try
		{
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			Product product = (Product)session.get(Product.class, ProductID);
			session.delete(product);
			session.getTransaction().commit();
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
	public Product getProduct(int ProductID)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Product prod = (Product)session.get(Product.class, ProductID);
		return prod;
	}
}
