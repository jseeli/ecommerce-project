package com.daoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.dao.SupplierDao;
import com.model.Category;
import com.model.Product;
import com.model.Supplier;

@Repository("supplierDao")
public class SupplierDaoImpl implements SupplierDao
{
	@Autowired
	SessionFactory sessionFactory;
	
	public SupplierDaoImpl (SessionFactory sessionFactory) 
	{
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	@Override
	public boolean insertSupplier(Supplier supplier) 
	{
		try
		{
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.saveOrUpdate(supplier);
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
	public List<Supplier> retrieve()
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		List<Supplier> list = session.createQuery("from Supplier").list();
		session.getTransaction().commit();
		return list;
	}
	
	@Transactional
	@Override
	public Supplier findById(int SupplierID)
	{
		Session session = sessionFactory.openSession();
		Supplier s = null;
		
		try
		{
			session.beginTransaction();
			s=session.get(Supplier.class, SupplierID);
			session.getTransaction().commit();
		}
		
		catch (HibernateException ex)
		{
			ex.printStackTrace();
			session.getTransaction().rollback();
		}
		
		return s;
	}
	
	@Transactional
	@Override
	public boolean updateSupplier(Supplier supplier)
	{
		try
		{
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			session.update(supplier);
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
	public boolean deleteSupplier(int SupplierID)
	{
		try
		{
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			Supplier supplier = (Supplier)session.get(Supplier.class, SupplierID);
			session.delete(supplier);
			session.getTransaction().commit();
			return true;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return false;
		}
	}
}
