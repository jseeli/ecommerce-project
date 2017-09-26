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
			System.out.println("Saving New Supplier Data .............................");
			session.saveOrUpdate(supplier);
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
	public List<Supplier> retrieve()
	{
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		System.out.println("Retrieving Supplier Data ........................................");
		List<Supplier> list = session.createQuery("from Supplier").list();
		session.getTransaction().commit();
		System.out.println("Displaying Entire Supplier List ................................");
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
			System.out.println("Finding ........................");
			session.beginTransaction();
			s=session.get(Supplier.class, SupplierID);
			session.getTransaction().commit();
			System.out.println("Finding Completed the SupplierID: "+ s.getSupplierID() + "........................................");
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
			System.out.println("Updating Supplier ..............................");
			session.update(supplier);
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
	public boolean deleteSupplier(int SupplierID)
	{
		try
		{
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			Supplier supplier = (Supplier)session.get(Supplier.class, SupplierID);
			System.out.println("Deleting Supplier Data .................................");
			session.delete(supplier);
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
