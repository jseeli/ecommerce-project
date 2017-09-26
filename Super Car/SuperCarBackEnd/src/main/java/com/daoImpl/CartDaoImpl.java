package com.daoImpl;

import java.util.List;

import javax.transaction.Transactional;
import javax.persistence.TransactionRequiredException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dao.CartDao;
import com.model.Cart;

@Repository("cartDao")
public class CartDaoImpl implements CartDao
{
	@Autowired
	SessionFactory sessionFactory;
	
	public CartDaoImpl (SessionFactory sessionFactory) 
	{
		this.sessionFactory = sessionFactory;
	}
	
	@Transactional
	@Override
	public boolean AddCartItem(Cart cartitem)
	{
		try
		{
			System.out.println("Saving New Cart Item ............................");
			sessionFactory.getCurrentSession().saveOrUpdate(cartitem);
			System.out.println("Saving Data successfully Completed ............................");
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
	public List<Cart> getCartItems(String username)
	{
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Cart where Username=:username and Status='N'");
		query.setParameter("username",username);
		System.out.println("Retrieving Cart Data ........................................");
		@SuppressWarnings("unchecked")
		List<Cart> list=query.list();
		System.out.println("Displaying Entire Cart List ................................");
		return list;
	}
	
	@Transactional
	@Override
	public Cart getCartItem(int cartitemid)
	{
		Session session = sessionFactory.openSession();
		System.out.println("Finding ...........................");
		Cart cart = (Cart)session.get(Cart.class,cartitemid);
		System.out.println("Finding Completed the Cart Item ID: "+ cart.getCartitemid() + "........................................");
		return cart;
	}
	
	@Transactional
	@Override
	public boolean UpdateCartItem(Cart cart)
	{
		try
		{
			System.out.println("Updating Cart Item .........................");
			sessionFactory.getCurrentSession().update(cart);
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
	public boolean DeleteCartItem(Cart cart)
	{
		try 
		{
			System.out.println("Deleting Cart Item ....................");
			sessionFactory.getCurrentSession().delete(cart);
			System.out.println("Erasing Data Successfully complete ..............................");
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
	public boolean UpdatePaymentStatus(String username)
	{
		try
		{
			Session session = sessionFactory.openSession();
			session.beginTransaction();
			Query query = session.createQuery("update Cart set Status='Y' where Username=:username");
			query.setParameter("username",username);
			System.out.println("Updating Status .............................");
			query.executeUpdate();
			session.getTransaction().commit();
			System.out.println("Updating Data Successfully Complete ...........................");
			session.close();
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
	public List<Cart> getPaidItems(String username)
	{
		Session session = sessionFactory.openSession();
		Query query = session.createQuery("from Cart where Username=:username and Status='Y'");
		query.setParameter("username",username);
		System.out.println("Retrieving Cart Data ........................................");
		@SuppressWarnings("unchecked")
		List<Cart> list=query.list();
		System.out.println("Displaying Entire Cart List ................................");
		return list;
	}
}
