package com.daoImpl;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.dao.SupplierDao;
import com.model.Category;
import com.model.Product;
import com.model.Supplier;

@Repository("supplierDaoImpl")
public class SupplierDaoImpl implements SupplierDao
{
	@Autowired
	SessionFactory sessionFactory;
	
	public SupplierDaoImpl (SessionFactory sessionFactory) 
	{
		super();
		this.sessionFactory = sessionFactory;
	}
	
	public void insertSupplier(Supplier supplier) 
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.saveOrUpdate(supplier);
		session.getTransaction().commit();
		//session.close();
	}
	
	public List<Supplier> retrieve()
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		List<Supplier> list = session.createQuery("from Supplier").list();
		session.getTransaction().commit();
		return list;
	}
	
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
	
	public void updateSupplier(Supplier supplier)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.update(supplier);
		session.getTransaction().commit();
	}
	
	public void updateProduct(Product prod)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		session.update(prod);
		session.getTransaction().commit();
	}
	
	public void deleteSupplier(int SupplierID)
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		Supplier supplier = (Supplier)session.get(Supplier.class, SupplierID);
		session.delete(supplier);
		session.getTransaction().commit();
	}
}
